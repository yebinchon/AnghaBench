
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_p2p_info {int* dev_addr; int* int_addr; } ;


 int ETH_ALEN ;
 int eth_random_addr (int*) ;
 scalar_t__ is_zero_ether_addr (int*) ;
 int memcpy (int*,int*,int ) ;

__attribute__((used)) static void brcmf_p2p_generate_bss_mac(struct brcmf_p2p_info *p2p, u8 *dev_addr)
{
 bool random_addr = 0;

 if (!dev_addr || is_zero_ether_addr(dev_addr))
  random_addr = 1;




 if (random_addr)
  eth_random_addr(p2p->dev_addr);
 else
  memcpy(p2p->dev_addr, dev_addr, ETH_ALEN);





 memcpy(p2p->int_addr, p2p->dev_addr, ETH_ALEN);
 p2p->int_addr[0] |= 0x02;
 p2p->int_addr[4] ^= 0x80;
}
