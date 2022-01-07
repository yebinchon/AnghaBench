
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct spi_device {int dummy; } ;
struct mux_control {TYPE_2__* chip; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ADGS1408_DISABLE ;
 int ADGS1408_MUX (int) ;
 int ADGS1408_SW_DATA ;
 int MUX_IDLE_DISCONNECT ;
 int adgs1408_spi_reg_write (struct spi_device*,int ,int ) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int adgs1408_set(struct mux_control *mux, int state)
{
 struct spi_device *spi = to_spi_device(mux->chip->dev.parent);
 u8 reg;

 if (state == MUX_IDLE_DISCONNECT)
  reg = ADGS1408_DISABLE;
 else
  reg = ADGS1408_MUX(state);

 return adgs1408_spi_reg_write(spi, ADGS1408_SW_DATA, reg);
}
