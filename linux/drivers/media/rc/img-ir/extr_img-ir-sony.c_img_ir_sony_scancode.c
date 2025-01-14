
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct img_ir_scancode_req {unsigned int scancode; int protocol; } ;


 int EINVAL ;
 int IMG_IR_SCANCODE ;
 int RC_PROTO_BIT_SONY12 ;
 int RC_PROTO_BIT_SONY15 ;
 int RC_PROTO_BIT_SONY20 ;
 int RC_PROTO_SONY12 ;
 int RC_PROTO_SONY15 ;
 int RC_PROTO_SONY20 ;

__attribute__((used)) static int img_ir_sony_scancode(int len, u64 raw, u64 enabled_protocols,
    struct img_ir_scancode_req *request)
{
 unsigned int dev, subdev, func;

 switch (len) {
 case 12:
  if (!(enabled_protocols & RC_PROTO_BIT_SONY12))
   return -EINVAL;
  func = raw & 0x7f;
  raw >>= 7;
  dev = raw & 0x1f;
  subdev = 0;
  request->protocol = RC_PROTO_SONY12;
  break;
 case 15:
  if (!(enabled_protocols & RC_PROTO_BIT_SONY15))
   return -EINVAL;
  func = raw & 0x7f;
  raw >>= 7;
  dev = raw & 0xff;
  subdev = 0;
  request->protocol = RC_PROTO_SONY15;
  break;
 case 20:
  if (!(enabled_protocols & RC_PROTO_BIT_SONY20))
   return -EINVAL;
  func = raw & 0x7f;
  raw >>= 7;
  dev = raw & 0x1f;
  raw >>= 5;
  subdev = raw & 0xff;
  request->protocol = RC_PROTO_SONY20;
  break;
 default:
  return -EINVAL;
 }
 request->scancode = dev << 16 | subdev << 8 | func;
 return IMG_IR_SCANCODE;
}
