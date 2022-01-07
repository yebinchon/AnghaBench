
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_ir_priv_raw {int timer; int rdev; } ;
struct img_ir_priv {struct img_ir_priv_raw raw; } ;


 int ECHO_TIMEOUT_MS ;
 int img_ir_refresh_raw (struct img_ir_priv*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

void img_ir_isr_raw(struct img_ir_priv *priv, u32 irq_status)
{
 struct img_ir_priv_raw *raw = &priv->raw;


 if (!raw->rdev)
  return;

 img_ir_refresh_raw(priv, irq_status);


 mod_timer(&raw->timer, jiffies + msecs_to_jiffies(ECHO_TIMEOUT_MS));
}
