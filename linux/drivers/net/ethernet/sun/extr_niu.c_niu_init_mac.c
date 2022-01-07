
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int niu_enable_rx_mac (struct niu*,int) ;
 int niu_enable_tx_mac (struct niu*,int) ;
 int niu_init_pcs (struct niu*) ;
 int niu_init_rx_mac (struct niu*) ;
 int niu_init_tx_mac (struct niu*) ;
 int niu_init_xif (struct niu*) ;
 int niu_reset_rx_mac (struct niu*) ;
 int niu_reset_tx_mac (struct niu*) ;

__attribute__((used)) static int niu_init_mac(struct niu *np)
{
 int err;

 niu_init_xif(np);
 err = niu_init_pcs(np);
 if (err)
  return err;

 err = niu_reset_tx_mac(np);
 if (err)
  return err;
 niu_init_tx_mac(np);
 err = niu_reset_rx_mac(np);
 if (err)
  return err;
 niu_init_rx_mac(np);






 niu_init_tx_mac(np);
 niu_enable_tx_mac(np, 1);

 niu_enable_rx_mac(np, 1);

 return 0;
}
