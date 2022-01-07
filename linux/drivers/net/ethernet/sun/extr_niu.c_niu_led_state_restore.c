
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; } ;


 int BMAC_XIF_CONFIG ;
 int NIU_FLAGS_XMAC ;
 int XMAC_CONFIG ;
 int nw64_mac (int ,int ) ;

__attribute__((used)) static void niu_led_state_restore(struct niu *np, u64 val)
{
 if (np->flags & NIU_FLAGS_XMAC)
  nw64_mac(XMAC_CONFIG, val);
 else
  nw64_mac(BMAC_XIF_CONFIG, val);
}
