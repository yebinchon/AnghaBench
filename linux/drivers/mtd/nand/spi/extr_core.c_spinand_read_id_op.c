
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int scratchbuf; int spimem; } ;
struct spi_mem_op {int dummy; } ;


 int SPINAND_MAX_ID_LEN ;
 struct spi_mem_op SPINAND_READID_OP (int ,int ,int ) ;
 int memcpy (int *,int ,int ) ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;

__attribute__((used)) static int spinand_read_id_op(struct spinand_device *spinand, u8 *buf)
{
 struct spi_mem_op op = SPINAND_READID_OP(0, spinand->scratchbuf,
       SPINAND_MAX_ID_LEN);
 int ret;

 ret = spi_mem_exec_op(spinand->spimem, &op);
 if (!ret)
  memcpy(buf, spinand->scratchbuf, SPINAND_MAX_ID_LEN);

 return ret;
}
