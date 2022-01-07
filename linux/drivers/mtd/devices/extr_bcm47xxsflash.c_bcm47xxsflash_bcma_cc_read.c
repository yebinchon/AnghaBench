
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bcm47xxsflash {int bcma_cc; } ;


 int bcma_cc_read32 (int ,int ) ;

__attribute__((used)) static int bcm47xxsflash_bcma_cc_read(struct bcm47xxsflash *b47s, u16 offset)
{
 return bcma_cc_read32(b47s->bcma_cc, offset);
}
