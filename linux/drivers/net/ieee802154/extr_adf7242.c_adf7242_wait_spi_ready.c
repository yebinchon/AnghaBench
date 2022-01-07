
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf7242_local {int dummy; } ;


 int STAT_SPI_READY ;
 int adf7242_wait_status (struct adf7242_local*,int ,int ,int) ;

__attribute__((used)) static int adf7242_wait_spi_ready(struct adf7242_local *lp, int line)
{
 return adf7242_wait_status(lp, STAT_SPI_READY,
       STAT_SPI_READY, line);
}
