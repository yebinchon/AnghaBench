
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_spi_device {scalar_t__ size; } ;



__attribute__((used)) static inline bool falcon_spi_present(const struct falcon_spi_device *spi)
{
 return spi->size != 0;
}
