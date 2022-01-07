
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int VSC73XX_CMD_SPI_BLOCK_MASK ;
 int VSC73XX_CMD_SPI_BLOCK_SHIFT ;
 int VSC73XX_CMD_SPI_MODE_SHIFT ;
 int VSC73XX_CMD_SPI_SUBBLOCK_MASK ;

__attribute__((used)) static u8 vsc73xx_make_addr(u8 mode, u8 block, u8 subblock)
{
 u8 ret;

 ret =
     (block & VSC73XX_CMD_SPI_BLOCK_MASK) << VSC73XX_CMD_SPI_BLOCK_SHIFT;
 ret |= (mode & 1) << VSC73XX_CMD_SPI_MODE_SHIFT;
 ret |= subblock & VSC73XX_CMD_SPI_SUBBLOCK_MASK;

 return ret;
}
