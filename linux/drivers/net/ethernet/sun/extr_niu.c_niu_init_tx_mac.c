
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct niu {int flags; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 int BUG_ON (int) ;
 scalar_t__ ETH_DATA_LEN ;
 int NIU_FLAGS_XMAC ;
 int niu_init_tx_bmac (struct niu*,int,int) ;
 int niu_init_tx_xmac (struct niu*,int,int) ;

__attribute__((used)) static void niu_init_tx_mac(struct niu *np)
{
 u64 min, max;

 min = 64;
 if (np->dev->mtu > ETH_DATA_LEN)
  max = 9216;
 else
  max = 1522;




 BUG_ON(min & 0x7);

 if (np->flags & NIU_FLAGS_XMAC)
  niu_init_tx_xmac(np, min, max);
 else
  niu_init_tx_bmac(np, min, max);
}
