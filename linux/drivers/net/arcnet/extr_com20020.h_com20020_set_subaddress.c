
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcnet_local {int config; } ;


 int COM20020_REG_W_CONFIG ;
 int COM20020_REG_W_SUBADR ;
 int arcnet_outb (int,int,int ) ;

__attribute__((used)) static inline void com20020_set_subaddress(struct arcnet_local *lp,
        int ioaddr, int val)
{
 if (val < 4) {
  lp->config = (lp->config & ~0x03) | val;
  arcnet_outb(lp->config, ioaddr, COM20020_REG_W_CONFIG);
 } else {
  arcnet_outb(val, ioaddr, COM20020_REG_W_SUBADR);
 }
}
