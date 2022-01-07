
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_nor {int bouncebuf_size; void* bouncebuf; int spimem; } ;
struct TYPE_3__ {void* in; void* out; } ;
struct TYPE_4__ {scalar_t__ dir; int nbytes; TYPE_1__ buf; } ;
struct spi_mem_op {TYPE_2__ data; } ;
typedef int ssize_t ;


 scalar_t__ SPI_MEM_DATA_IN ;
 int memcpy (void*,void const*,int) ;
 scalar_t__ object_is_on_stack (void const*) ;
 int spi_mem_adjust_op_size (int ,struct spi_mem_op*) ;
 int spi_mem_exec_op (int ,struct spi_mem_op*) ;
 int virt_addr_valid (void const*) ;

__attribute__((used)) static ssize_t spi_nor_spimem_xfer_data(struct spi_nor *nor,
     struct spi_mem_op *op)
{
 bool usebouncebuf = 0;
 void *rdbuf = ((void*)0);
 const void *buf;
 int ret;

 if (op->data.dir == SPI_MEM_DATA_IN)
  buf = op->data.buf.in;
 else
  buf = op->data.buf.out;

 if (object_is_on_stack(buf) || !virt_addr_valid(buf))
  usebouncebuf = 1;

 if (usebouncebuf) {
  if (op->data.nbytes > nor->bouncebuf_size)
   op->data.nbytes = nor->bouncebuf_size;

  if (op->data.dir == SPI_MEM_DATA_IN) {
   rdbuf = op->data.buf.in;
   op->data.buf.in = nor->bouncebuf;
  } else {
   op->data.buf.out = nor->bouncebuf;
   memcpy(nor->bouncebuf, buf,
          op->data.nbytes);
  }
 }

 ret = spi_mem_adjust_op_size(nor->spimem, op);
 if (ret)
  return ret;

 ret = spi_mem_exec_op(nor->spimem, op);
 if (ret)
  return ret;

 if (usebouncebuf && op->data.dir == SPI_MEM_DATA_IN)
  memcpy(rdbuf, nor->bouncebuf, op->data.nbytes);

 return op->data.nbytes;
}
