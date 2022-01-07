
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nand_chip {int dummy; } ;


 int sunxi_nfc_randomizer_state (struct nand_chip*,int,int) ;
 int sunxi_nfc_randomizer_step (int ,int) ;

__attribute__((used)) static void sunxi_nfc_randomize_bbm(struct nand_chip *nand, int page, u8 *bbm)
{
 u16 state = sunxi_nfc_randomizer_state(nand, page, 1);

 bbm[0] ^= state;
 bbm[1] ^= sunxi_nfc_randomizer_step(state, 8);
}
