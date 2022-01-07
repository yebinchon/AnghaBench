
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_slave {int dummy; } ;
struct cpsw_priv {int mac_addr; } ;


 int SA_HI ;
 int SA_LO ;
 int mac_hi (int ) ;
 int mac_lo (int ) ;
 int slave_write (struct cpsw_slave*,int ,int ) ;

__attribute__((used)) static void cpsw_set_slave_mac(struct cpsw_slave *slave,
          struct cpsw_priv *priv)
{
 slave_write(slave, mac_hi(priv->mac_addr), SA_HI);
 slave_write(slave, mac_lo(priv->mac_addr), SA_LO);
}
