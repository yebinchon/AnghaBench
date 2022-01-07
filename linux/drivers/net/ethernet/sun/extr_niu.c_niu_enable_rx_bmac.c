
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; } ;


 int BRXMAC_CONFIG ;
 int BRXMAC_CONFIG_ENABLE ;
 int BRXMAC_CONFIG_HASH_FILT_EN ;
 int BRXMAC_CONFIG_PROMISC ;
 int NIU_FLAGS_MCAST ;
 int NIU_FLAGS_PROMISC ;
 int nr64_mac (int ) ;
 int nw64_mac (int ,int) ;

__attribute__((used)) static void niu_enable_rx_bmac(struct niu *np, int on)
{
 u64 val = nr64_mac(BRXMAC_CONFIG);

 val &= ~(BRXMAC_CONFIG_HASH_FILT_EN |
   BRXMAC_CONFIG_PROMISC);

 if (np->flags & NIU_FLAGS_MCAST)
  val |= BRXMAC_CONFIG_HASH_FILT_EN;
 if (np->flags & NIU_FLAGS_PROMISC)
  val |= BRXMAC_CONFIG_PROMISC;

 if (on)
  val |= BRXMAC_CONFIG_ENABLE;
 else
  val &= ~BRXMAC_CONFIG_ENABLE;
 nw64_mac(BRXMAC_CONFIG, val);
}
