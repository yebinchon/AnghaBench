
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ir_raw_event {int dummy; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int EINVAL ;



 int ir_rcmm_rawencoder (struct ir_raw_event**,unsigned int,int,int ) ;

__attribute__((used)) static int ir_rcmm_encode(enum rc_proto protocol, u32 scancode,
     struct ir_raw_event *events, unsigned int max)
{
 struct ir_raw_event *e = events;
 int ret;

 switch (protocol) {
 case 128:
  ret = ir_rcmm_rawencoder(&e, max, 32, scancode);
  break;
 case 129:
  ret = ir_rcmm_rawencoder(&e, max, 24, scancode);
  break;
 case 130:
  ret = ir_rcmm_rawencoder(&e, max, 12, scancode);
  break;
 default:
  ret = -EINVAL;
 }

 if (ret < 0)
  return ret;

 return e - events;
}
