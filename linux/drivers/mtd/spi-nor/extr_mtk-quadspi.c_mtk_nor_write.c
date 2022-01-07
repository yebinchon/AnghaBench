
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u8 ;
struct spi_nor {struct mtk_nor* priv; } ;
struct mtk_nor {int dev; } ;
typedef int ssize_t ;
typedef size_t loff_t ;


 size_t SFLASH_WRBUF_SIZE ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int mtk_nor_write_buffer (struct mtk_nor*,size_t,int const*) ;
 int mtk_nor_write_buffer_disable (struct mtk_nor*) ;
 int mtk_nor_write_buffer_enable (struct mtk_nor*) ;
 int mtk_nor_write_single_byte (struct mtk_nor*,size_t,int,int *) ;

__attribute__((used)) static ssize_t mtk_nor_write(struct spi_nor *nor, loff_t to, size_t len,
        const u_char *buf)
{
 int ret;
 struct mtk_nor *mtk_nor = nor->priv;
 size_t i;

 ret = mtk_nor_write_buffer_enable(mtk_nor);
 if (ret < 0) {
  dev_warn(mtk_nor->dev, "write buffer enable failed!\n");
  return ret;
 }

 for (i = 0; i + SFLASH_WRBUF_SIZE <= len; i += SFLASH_WRBUF_SIZE) {
  ret = mtk_nor_write_buffer(mtk_nor, to, buf);
  if (ret < 0) {
   dev_err(mtk_nor->dev, "write buffer failed!\n");
   return ret;
  }
  to += SFLASH_WRBUF_SIZE;
  buf += SFLASH_WRBUF_SIZE;
 }
 ret = mtk_nor_write_buffer_disable(mtk_nor);
 if (ret < 0) {
  dev_warn(mtk_nor->dev, "write buffer disable failed!\n");
  return ret;
 }

 if (i < len) {
  ret = mtk_nor_write_single_byte(mtk_nor, to,
      (int)(len - i), (u8 *)buf);
  if (ret < 0) {
   dev_err(mtk_nor->dev, "write single byte failed!\n");
   return ret;
  }
 }

 return len;
}
