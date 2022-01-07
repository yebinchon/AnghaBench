
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct em28xx_ir_poll_result {int toggle_bit; int read_count; int scancode; int protocol; } ;
struct em28xx_IR {int rc_proto; struct em28xx* dev; } ;
struct em28xx {int (* em28xx_read_reg_req_len ) (struct em28xx*,int ,int ,int*,int) ;} ;
typedef int msg ;


 int EM2874_R51_IR ;



 int RC_PROTO_RC5 ;
 int RC_PROTO_RC6_0 ;
 int RC_PROTO_UNKNOWN ;
 int RC_SCANCODE_RC5 (int,int) ;
 int RC_SCANCODE_RC6_0 (int,int) ;
 int ir_nec_bytes_to_scancode (int,int,int,int,int *) ;
 int stub1 (struct em28xx*,int ,int ,int*,int) ;

__attribute__((used)) static int em2874_polling_getkey(struct em28xx_IR *ir,
     struct em28xx_ir_poll_result *poll_result)
{
 struct em28xx *dev = ir->dev;
 int rc;
 u8 msg[5] = { 0, 0, 0, 0, 0 };





 rc = dev->em28xx_read_reg_req_len(dev, 0, EM2874_R51_IR,
       msg, sizeof(msg));
 if (rc < 0)
  return rc;


 poll_result->toggle_bit = (msg[0] >> 7);


 poll_result->read_count = (msg[0] & 0x7f);





 switch (ir->rc_proto) {
 case 129:
  poll_result->protocol = RC_PROTO_RC5;
  poll_result->scancode = RC_SCANCODE_RC5(msg[1], msg[2]);
  break;

 case 130:
  poll_result->scancode = ir_nec_bytes_to_scancode(msg[1], msg[2], msg[3], msg[4],
         &poll_result->protocol);
  break;

 case 128:
  poll_result->protocol = RC_PROTO_RC6_0;
  poll_result->scancode = RC_SCANCODE_RC6_0(msg[1], msg[2]);
  break;

 default:
  poll_result->protocol = RC_PROTO_UNKNOWN;
  poll_result->scancode = (msg[1] << 24) | (msg[2] << 16) |
     (msg[3] << 8) | msg[4];
  break;
 }

 return 0;
}
