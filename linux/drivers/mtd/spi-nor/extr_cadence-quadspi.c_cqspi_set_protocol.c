
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int read_proto; struct cqspi_flash_pdata* priv; } ;
struct cqspi_flash_pdata {void* data_width; void* addr_width; void* inst_width; } ;


 void* CQSPI_INST_TYPE_DUAL ;
 void* CQSPI_INST_TYPE_OCTAL ;
 void* CQSPI_INST_TYPE_QUAD ;
 void* CQSPI_INST_TYPE_SINGLE ;
 int EINVAL ;




 int cqspi_configure (struct spi_nor*) ;

__attribute__((used)) static int cqspi_set_protocol(struct spi_nor *nor, const int read)
{
 struct cqspi_flash_pdata *f_pdata = nor->priv;

 f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
 f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
 f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;

 if (read) {
  switch (nor->read_proto) {
  case 131:
   f_pdata->data_width = CQSPI_INST_TYPE_SINGLE;
   break;
  case 130:
   f_pdata->data_width = CQSPI_INST_TYPE_DUAL;
   break;
  case 129:
   f_pdata->data_width = CQSPI_INST_TYPE_QUAD;
   break;
  case 128:
   f_pdata->data_width = CQSPI_INST_TYPE_OCTAL;
   break;
  default:
   return -EINVAL;
  }
 }

 cqspi_configure(nor);

 return 0;
}
