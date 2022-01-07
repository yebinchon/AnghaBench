
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5c73m3 {int spidrv; } ;


 int spi_unregister_driver (int *) ;

void s5c73m3_unregister_spi_driver(struct s5c73m3 *state)
{
 spi_unregister_driver(&state->spidrv);
}
