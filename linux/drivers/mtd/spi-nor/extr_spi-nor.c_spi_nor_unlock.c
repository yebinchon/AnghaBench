
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_1__* locking_ops; } ;
struct spi_nor {TYPE_2__ params; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;
struct TYPE_3__ {int (* unlock ) (struct spi_nor*,int ,int ) ;} ;


 int SPI_NOR_OPS_LOCK ;
 int SPI_NOR_OPS_UNLOCK ;
 struct spi_nor* mtd_to_spi_nor (struct mtd_info*) ;
 int spi_nor_lock_and_prep (struct spi_nor*,int ) ;
 int spi_nor_unlock_and_unprep (struct spi_nor*,int ) ;
 int stub1 (struct spi_nor*,int ,int ) ;

__attribute__((used)) static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 struct spi_nor *nor = mtd_to_spi_nor(mtd);
 int ret;

 ret = spi_nor_lock_and_prep(nor, SPI_NOR_OPS_UNLOCK);
 if (ret)
  return ret;

 ret = nor->params.locking_ops->unlock(nor, ofs, len);

 spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_LOCK);
 return ret;
}
