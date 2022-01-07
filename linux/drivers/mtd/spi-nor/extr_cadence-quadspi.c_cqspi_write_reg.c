
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {int dummy; } ;


 int cqspi_command_write (struct spi_nor*,int ,int *,int) ;
 int cqspi_set_protocol (struct spi_nor*,int ) ;

__attribute__((used)) static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
{
 int ret;

 ret = cqspi_set_protocol(nor, 0);
 if (!ret)
  ret = cqspi_command_write(nor, opcode, buf, len);

 return ret;
}
