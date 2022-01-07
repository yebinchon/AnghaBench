
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int dummy; } ;


 int DEFAULT_READY_WAIT_JIFFIES ;
 int spi_nor_wait_till_ready_with_timeout (struct spi_nor*,int ) ;

__attribute__((used)) static int spi_nor_wait_till_ready(struct spi_nor *nor)
{
 return spi_nor_wait_till_ready_with_timeout(nor,
          DEFAULT_READY_WAIT_JIFFIES);
}
