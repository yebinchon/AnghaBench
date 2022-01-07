
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;


 int VPP_PORT ;
 int inl (int ) ;
 int l440gx_vpp_lock ;
 int l440gx_vpp_refcnt ;
 int outl (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void l440gx_set_vpp(struct map_info *map, int vpp)
{
 unsigned long flags;

 spin_lock_irqsave(&l440gx_vpp_lock, flags);
 if (vpp) {
  if (++l440gx_vpp_refcnt == 1)
   outl(inl(VPP_PORT) | 1, VPP_PORT);
 } else {
  if (--l440gx_vpp_refcnt == 0)
   outl(inl(VPP_PORT) & ~1, VPP_PORT);
 }
 spin_unlock_irqrestore(&l440gx_vpp_lock, flags);
}
