
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcmm_dec {int count; void* state; int bits; } ;
struct rc_dev {int enabled_protocols; } ;


 int RC_PROTO_BIT_RCMM12 ;
 int RC_PROTO_BIT_RCMM24 ;
 int RC_PROTO_RCMM12 ;
 int RC_PROTO_RCMM24 ;
 void* STATE_INACTIVE ;
 int rc_keydown (struct rc_dev*,int ,int ,int ) ;

__attribute__((used)) static int rcmm_miscmode(struct rc_dev *dev, struct rcmm_dec *data)
{
 switch (data->count) {
 case 24:
  if (dev->enabled_protocols & RC_PROTO_BIT_RCMM24) {
   rc_keydown(dev, RC_PROTO_RCMM24, data->bits, 0);
   data->state = STATE_INACTIVE;
   return 0;
  }
  return -1;

 case 12:
  if (dev->enabled_protocols & RC_PROTO_BIT_RCMM12) {
   rc_keydown(dev, RC_PROTO_RCMM12, data->bits, 0);
   data->state = STATE_INACTIVE;
   return 0;
  }
  return -1;
 }

 return -1;
}
