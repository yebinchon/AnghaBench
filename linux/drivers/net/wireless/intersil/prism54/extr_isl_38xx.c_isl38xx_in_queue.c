
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ s32 ;
struct TYPE_3__ {int * device_curr_frag; int * driver_curr_frag; } ;
typedef TYPE_1__ isl38xx_control_block ;


 int BUG () ;
 int BUG_ON (int) ;
 scalar_t__ const ISL38XX_CB_MGMT_QSIZE ;



 scalar_t__ const ISL38XX_CB_RX_QSIZE ;



 scalar_t__ const ISL38XX_CB_TX_QSIZE ;
 scalar_t__ le32_to_cpu (int ) ;

int
isl38xx_in_queue(isl38xx_control_block *cb, int queue)
{
 const s32 delta = (le32_to_cpu(cb->driver_curr_frag[queue]) -
      le32_to_cpu(cb->device_curr_frag[queue]));




 BUG_ON(delta < 0);

 switch (queue) {

 case 128:
  BUG_ON(delta > ISL38XX_CB_MGMT_QSIZE);


 case 129:
 case 130:
  BUG_ON(delta > ISL38XX_CB_TX_QSIZE);
  return delta;


 case 131:
  BUG_ON(delta > ISL38XX_CB_MGMT_QSIZE);
  return ISL38XX_CB_MGMT_QSIZE - delta;

 case 132:
 case 133:
  BUG_ON(delta > ISL38XX_CB_RX_QSIZE);
  return ISL38XX_CB_RX_QSIZE - delta;
 }
 BUG();
 return 0;
}
