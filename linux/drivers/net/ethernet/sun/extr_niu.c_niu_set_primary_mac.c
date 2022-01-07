
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u16 ;
struct niu {int flags; } ;


 int BMAC_ADDR0 ;
 int BMAC_ADDR1 ;
 int BMAC_ADDR2 ;
 int NIU_FLAGS_XMAC ;
 int XMAC_ADDR0 ;
 int XMAC_ADDR1 ;
 int XMAC_ADDR2 ;
 int nw64_mac (int ,unsigned char) ;

__attribute__((used)) static void niu_set_primary_mac(struct niu *np, unsigned char *addr)
{
 u16 reg0 = addr[4] << 8 | addr[5];
 u16 reg1 = addr[2] << 8 | addr[3];
 u16 reg2 = addr[0] << 8 | addr[1];

 if (np->flags & NIU_FLAGS_XMAC) {
  nw64_mac(XMAC_ADDR0, reg0);
  nw64_mac(XMAC_ADDR1, reg1);
  nw64_mac(XMAC_ADDR2, reg2);
 } else {
  nw64_mac(BMAC_ADDR0, reg0);
  nw64_mac(BMAC_ADDR1, reg1);
  nw64_mac(BMAC_ADDR2, reg2);
 }
}
