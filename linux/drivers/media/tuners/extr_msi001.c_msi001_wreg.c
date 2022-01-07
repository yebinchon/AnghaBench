
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msi001_dev {int spi; } ;


 int spi_write (int ,int *,int) ;

__attribute__((used)) static int msi001_wreg(struct msi001_dev *dev, u32 data)
{

 return spi_write(dev->spi, &data, 3);
}
