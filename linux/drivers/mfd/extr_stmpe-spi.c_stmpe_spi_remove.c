
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int dummy; } ;
struct spi_device {int dummy; } ;


 struct stmpe* spi_get_drvdata (struct spi_device*) ;
 int stmpe_remove (struct stmpe*) ;

__attribute__((used)) static int stmpe_spi_remove(struct spi_device *spi)
{
 struct stmpe *stmpe = spi_get_drvdata(spi);

 return stmpe_remove(stmpe);
}
