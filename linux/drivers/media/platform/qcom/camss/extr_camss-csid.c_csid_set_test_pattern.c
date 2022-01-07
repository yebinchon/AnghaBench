
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csid_testgen_config {int enabled; int payload_mode; } ;
struct csid_device {int * pads; struct csid_testgen_config testgen; } ;
typedef int s32 ;


 int CSID_PAYLOAD_MODE_ALL_ONES ;
 int CSID_PAYLOAD_MODE_ALL_ZEROES ;
 int CSID_PAYLOAD_MODE_ALTERNATING_55_AA ;
 int CSID_PAYLOAD_MODE_INCREMENTING ;
 int CSID_PAYLOAD_MODE_RANDOM ;
 int EBUSY ;
 size_t MSM_CSID_PAD_SINK ;
 scalar_t__ media_entity_remote_pad (int *) ;

__attribute__((used)) static int csid_set_test_pattern(struct csid_device *csid, s32 value)
{
 struct csid_testgen_config *tg = &csid->testgen;


 if (value && media_entity_remote_pad(&csid->pads[MSM_CSID_PAD_SINK]))
  return -EBUSY;

 tg->enabled = !!value;

 switch (value) {
 case 1:
  tg->payload_mode = CSID_PAYLOAD_MODE_INCREMENTING;
  break;
 case 2:
  tg->payload_mode = CSID_PAYLOAD_MODE_ALTERNATING_55_AA;
  break;
 case 3:
  tg->payload_mode = CSID_PAYLOAD_MODE_ALL_ZEROES;
  break;
 case 4:
  tg->payload_mode = CSID_PAYLOAD_MODE_ALL_ONES;
  break;
 case 5:
  tg->payload_mode = CSID_PAYLOAD_MODE_RANDOM;
  break;
 }

 return 0;
}
