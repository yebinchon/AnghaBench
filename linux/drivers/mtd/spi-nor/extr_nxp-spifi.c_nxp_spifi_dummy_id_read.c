
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int (* read_reg ) (struct spi_nor*,int ,int *,int) ;} ;


 int SPINOR_OP_RDID ;
 int SPI_NOR_MAX_ID_LEN ;
 int stub1 (struct spi_nor*,int ,int *,int) ;

__attribute__((used)) static void nxp_spifi_dummy_id_read(struct spi_nor *nor)
{
 u8 id[SPI_NOR_MAX_ID_LEN];
 nor->read_reg(nor, SPINOR_OP_RDID, id, SPI_NOR_MAX_ID_LEN);
}
