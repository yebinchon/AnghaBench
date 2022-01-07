
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int flags; } ;


 unsigned long BMAC_ADDR_CMPEN ;
 int EINVAL ;
 int NIU_FLAGS_XMAC ;
 unsigned long XMAC_ADDR_CMPEN ;
 int niu_num_alt_addr (struct niu*) ;
 int nr64_mac (unsigned long) ;
 int nw64_mac (unsigned long,int) ;

__attribute__((used)) static int niu_enable_alt_mac(struct niu *np, int index, int on)
{
 unsigned long reg;
 u64 val, mask;

 if (index >= niu_num_alt_addr(np))
  return -EINVAL;

 if (np->flags & NIU_FLAGS_XMAC) {
  reg = XMAC_ADDR_CMPEN;
  mask = 1 << index;
 } else {
  reg = BMAC_ADDR_CMPEN;
  mask = 1 << (index + 1);
 }

 val = nr64_mac(reg);
 if (on)
  val |= mask;
 else
  val &= ~mask;
 nw64_mac(reg, val);

 return 0;
}
