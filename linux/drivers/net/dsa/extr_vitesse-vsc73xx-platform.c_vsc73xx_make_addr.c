
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int VSC73XX_CMD_PLATFORM_BLOCK_MASK ;
 int VSC73XX_CMD_PLATFORM_BLOCK_SHIFT ;
 int VSC73XX_CMD_PLATFORM_REGISTER_SHIFT ;
 int VSC73XX_CMD_PLATFORM_SUBBLOCK_MASK ;
 int VSC73XX_CMD_PLATFORM_SUBBLOCK_SHIFT ;

__attribute__((used)) static u32 vsc73xx_make_addr(u8 block, u8 subblock, u8 reg)
{
 u32 ret;

 ret = (block & VSC73XX_CMD_PLATFORM_BLOCK_MASK)
     << VSC73XX_CMD_PLATFORM_BLOCK_SHIFT;
 ret |= (subblock & VSC73XX_CMD_PLATFORM_SUBBLOCK_MASK)
     << VSC73XX_CMD_PLATFORM_SUBBLOCK_SHIFT;
 ret |= reg << VSC73XX_CMD_PLATFORM_REGISTER_SHIFT;

 return ret;
}
