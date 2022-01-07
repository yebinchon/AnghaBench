
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tango_ir {scalar_t__ rc6_base; scalar_t__ rc5_base; } ;
struct rc_dev {struct tango_ir* priv; } ;


 int DISABLE_NEC ;
 int ENABLE_RC5 ;
 int ENABLE_RC6 ;
 scalar_t__ IR_CTRL ;
 int NEC_ANY ;
 scalar_t__ RC6_CTRL ;
 int RC_PROTO_BIT_RC5 ;
 int RC_PROTO_BIT_RC6_0 ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int tango_change_protocol(struct rc_dev *dev, u64 *rc_type)
{
 struct tango_ir *ir = dev->priv;
 u32 rc5_ctrl = DISABLE_NEC;
 u32 rc6_ctrl = 0;

 if (*rc_type & NEC_ANY)
  rc5_ctrl = 0;

 if (*rc_type & RC_PROTO_BIT_RC5)
  rc5_ctrl |= ENABLE_RC5;

 if (*rc_type & RC_PROTO_BIT_RC6_0)
  rc6_ctrl = ENABLE_RC6;

 writel_relaxed(rc5_ctrl, ir->rc5_base + IR_CTRL);
 writel_relaxed(rc6_ctrl, ir->rc6_base + RC6_CTRL);

 return 0;
}
