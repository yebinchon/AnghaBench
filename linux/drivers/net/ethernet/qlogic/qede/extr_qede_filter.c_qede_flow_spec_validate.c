
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {TYPE_1__* arfs; } ;
struct qede_arfs_tuple {scalar_t__ mode; } ;
struct flow_action {int dummy; } ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ filter_count; int arfs_fltr_bmap; } ;


 int DP_INFO (struct qede_dev*,char*,...) ;
 int EINVAL ;
 scalar_t__ QEDE_RFS_MAX_FLTR ;
 scalar_t__ qede_parse_actions (struct qede_dev*,struct flow_action*) ;
 scalar_t__ test_bit (scalar_t__,int ) ;

__attribute__((used)) static int qede_flow_spec_validate(struct qede_dev *edev,
       struct flow_action *flow_action,
       struct qede_arfs_tuple *t,
       __u32 location)
{
 if (location >= QEDE_RFS_MAX_FLTR) {
  DP_INFO(edev, "Location out-of-bounds\n");
  return -EINVAL;
 }


 if (test_bit(location, edev->arfs->arfs_fltr_bmap)) {
  DP_INFO(edev, "Location already in use\n");
  return -EINVAL;
 }


 if (edev->arfs->filter_count &&
     edev->arfs->mode != t->mode) {
  DP_INFO(edev,
   "flow_spec would require filtering mode %08x, but %08x is configured\n",
   t->mode, edev->arfs->filter_count);
  return -EINVAL;
 }

 if (qede_parse_actions(edev, flow_action))
  return -EINVAL;

 return 0;
}
