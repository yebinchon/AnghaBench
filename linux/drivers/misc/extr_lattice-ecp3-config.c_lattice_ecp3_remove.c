
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct fpga_data {int fw_loaded; } ;


 struct fpga_data* spi_get_drvdata (struct spi_device*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int lattice_ecp3_remove(struct spi_device *spi)
{
 struct fpga_data *data = spi_get_drvdata(spi);

 wait_for_completion(&data->fw_loaded);

 return 0;
}
