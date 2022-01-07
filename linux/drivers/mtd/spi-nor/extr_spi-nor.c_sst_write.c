
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
struct spi_nor {int sst_write_second; void* program_opcode; int dev; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 void* SPINOR_OP_AAI_WP ;
 void* SPINOR_OP_BP ;
 int SPI_NOR_OPS_WRITE ;
 int WARN (int,char*,int) ;
 int dev_dbg (int ,char*,int ,size_t) ;
 struct spi_nor* mtd_to_spi_nor (struct mtd_info*) ;
 int spi_nor_lock_and_prep (struct spi_nor*,int ) ;
 int spi_nor_unlock_and_unprep (struct spi_nor*,int ) ;
 int spi_nor_wait_till_ready (struct spi_nor*) ;
 int spi_nor_write_data (struct spi_nor*,int,int,int const*) ;
 int write_disable (struct spi_nor*) ;
 int write_enable (struct spi_nor*) ;

__attribute__((used)) static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
  size_t *retlen, const u_char *buf)
{
 struct spi_nor *nor = mtd_to_spi_nor(mtd);
 size_t actual;
 int ret;

 dev_dbg(nor->dev, "to 0x%08x, len %zd\n", (u32)to, len);

 ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_WRITE);
 if (ret)
  return ret;

 write_enable(nor);

 nor->sst_write_second = 0;

 actual = to % 2;

 if (actual) {
  nor->program_opcode = SPINOR_OP_BP;


  ret = spi_nor_write_data(nor, to, 1, buf);
  if (ret < 0)
   goto sst_write_err;
  WARN(ret != 1, "While writing 1 byte written %i bytes\n",
       (int)ret);
  ret = spi_nor_wait_till_ready(nor);
  if (ret)
   goto sst_write_err;
 }
 to += actual;


 for (; actual < len - 1; actual += 2) {
  nor->program_opcode = SPINOR_OP_AAI_WP;


  ret = spi_nor_write_data(nor, to, 2, buf + actual);
  if (ret < 0)
   goto sst_write_err;
  WARN(ret != 2, "While writing 2 bytes written %i bytes\n",
       (int)ret);
  ret = spi_nor_wait_till_ready(nor);
  if (ret)
   goto sst_write_err;
  to += 2;
  nor->sst_write_second = 1;
 }
 nor->sst_write_second = 0;

 write_disable(nor);
 ret = spi_nor_wait_till_ready(nor);
 if (ret)
  goto sst_write_err;


 if (actual != len) {
  write_enable(nor);

  nor->program_opcode = SPINOR_OP_BP;
  ret = spi_nor_write_data(nor, to, 1, buf + actual);
  if (ret < 0)
   goto sst_write_err;
  WARN(ret != 1, "While writing 1 byte written %i bytes\n",
       (int)ret);
  ret = spi_nor_wait_till_ready(nor);
  if (ret)
   goto sst_write_err;
  write_disable(nor);
  actual += 1;
 }
sst_write_err:
 *retlen += actual;
 spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_WRITE);
 return ret;
}
