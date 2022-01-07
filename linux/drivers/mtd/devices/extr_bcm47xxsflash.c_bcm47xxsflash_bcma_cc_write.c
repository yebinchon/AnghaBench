
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcm47xxsflash {int bcma_cc; } ;


 int bcma_cc_write32 (int ,int ,int ) ;

__attribute__((used)) static void bcm47xxsflash_bcma_cc_write(struct bcm47xxsflash *b47s, u16 offset,
     u32 value)
{
 bcma_cc_write32(b47s->bcma_cc, offset, value);
}
