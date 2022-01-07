
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct stmpe {struct spi_device* client; } ;
struct spi_device {int dummy; } ;


 int spi_write (struct spi_device*,int const*,int) ;

__attribute__((used)) static int spi_reg_write(struct stmpe *stmpe, u8 reg, u8 val)
{
 struct spi_device *spi = stmpe->client;
 u16 cmd = (val << 8) | reg;

 return spi_write(spi, (const u8 *)&cmd, 2);
}
