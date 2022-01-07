
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int accept_flags; int mcast; int ucast; } ;
struct qed_filter_params {int type; TYPE_1__ filter; } ;
struct qed_dev {int dummy; } ;
typedef enum qed_filter_rx_mode_type { ____Placeholder_qed_filter_rx_mode_type } qed_filter_rx_mode_type ;


 int DP_NOTICE (struct qed_dev*,char*,int) ;
 int EINVAL ;



 int qed_configure_filter_mcast (struct qed_dev*,int *) ;
 int qed_configure_filter_rx_mode (struct qed_dev*,int) ;
 int qed_configure_filter_ucast (struct qed_dev*,int *) ;

__attribute__((used)) static int qed_configure_filter(struct qed_dev *cdev,
    struct qed_filter_params *params)
{
 enum qed_filter_rx_mode_type accept_flags;

 switch (params->type) {
 case 128:
  return qed_configure_filter_ucast(cdev, &params->filter.ucast);
 case 130:
  return qed_configure_filter_mcast(cdev, &params->filter.mcast);
 case 129:
  accept_flags = params->filter.accept_flags;
  return qed_configure_filter_rx_mode(cdev, accept_flags);
 default:
  DP_NOTICE(cdev, "Unknown filter type %d\n", (int)params->type);
  return -EINVAL;
 }
}
