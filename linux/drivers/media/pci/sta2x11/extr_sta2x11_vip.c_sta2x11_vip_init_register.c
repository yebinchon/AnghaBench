
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_vip {int slock; } ;


 int DVP_CTL ;
 int DVP_CTL_RST ;
 int DVP_HLFLN ;
 int DVP_HLFLN_SD ;
 int DVP_ITS ;
 int reg_read (struct sta2x11_vip*,int ) ;
 int reg_write (struct sta2x11_vip*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void sta2x11_vip_init_register(struct sta2x11_vip *vip)
{

 spin_lock_irq(&vip->slock);

 reg_read(vip, DVP_ITS);

 reg_write(vip, DVP_HLFLN, DVP_HLFLN_SD);

 reg_write(vip, DVP_CTL, DVP_CTL_RST);

 reg_write(vip, DVP_CTL, 0);
 spin_unlock_irq(&vip->slock);
}
