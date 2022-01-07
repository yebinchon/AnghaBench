
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct if_spi_card {int resume_work; } ;
struct device {int dummy; } ;


 int schedule_work (int *) ;
 struct if_spi_card* spi_get_drvdata (struct spi_device*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int if_spi_resume(struct device *dev)
{
 struct spi_device *spi = to_spi_device(dev);
 struct if_spi_card *card = spi_get_drvdata(spi);


 schedule_work(&card->resume_work);

 return 0;
}
