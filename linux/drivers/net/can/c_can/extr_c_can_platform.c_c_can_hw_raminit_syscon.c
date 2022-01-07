
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int start; int done; } ;
struct c_can_raminit {TYPE_1__ bits; int reg; int syscon; scalar_t__ needs_pulse; } ;
struct c_can_priv {struct c_can_raminit raminit_sys; } ;


 int c_can_hw_raminit_wait_syscon (struct c_can_priv const*,int,int) ;
 int raminit_lock ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void c_can_hw_raminit_syscon(const struct c_can_priv *priv, bool enable)
{
 const struct c_can_raminit *raminit = &priv->raminit_sys;
 u32 ctrl = 0;
 u32 mask;

 spin_lock(&raminit_lock);

 mask = 1 << raminit->bits.start | 1 << raminit->bits.done;
 regmap_read(raminit->syscon, raminit->reg, &ctrl);
 ctrl &= ~mask;
 regmap_update_bits(raminit->syscon, raminit->reg, mask, ctrl);




 c_can_hw_raminit_wait_syscon(priv, 1 << raminit->bits.start, ctrl);

 if (enable) {

  ctrl |= 1 << raminit->bits.start;

  ctrl |= 1 << raminit->bits.done;
  regmap_update_bits(raminit->syscon, raminit->reg, mask, ctrl);

  ctrl &= ~(1 << raminit->bits.done);

  if (raminit->needs_pulse) {
   ctrl &= ~(1 << raminit->bits.start);
   regmap_update_bits(raminit->syscon, raminit->reg,
        mask, ctrl);
  }

  ctrl |= 1 << raminit->bits.done;
  c_can_hw_raminit_wait_syscon(priv, mask, ctrl);
 }
 spin_unlock(&raminit_lock);
}
