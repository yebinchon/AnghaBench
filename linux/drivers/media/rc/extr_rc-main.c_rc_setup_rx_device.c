
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {scalar_t__ allowed_protocols; TYPE_1__* input_dev; } ;
struct TYPE_2__ {int* rep; } ;


 scalar_t__ RC_PROTO_BIT_CEC ;
 size_t REP_DELAY ;
 size_t REP_PERIOD ;
 int input_register_device (TYPE_1__*) ;

__attribute__((used)) static int rc_setup_rx_device(struct rc_dev *dev)
{
 int rc;


 rc = input_register_device(dev->input_dev);
 if (rc)
  return rc;







 if (dev->allowed_protocols == RC_PROTO_BIT_CEC)
  dev->input_dev->rep[REP_DELAY] = 0;
 else
  dev->input_dev->rep[REP_DELAY] = 500;






 dev->input_dev->rep[REP_PERIOD] = 125;

 return 0;
}
