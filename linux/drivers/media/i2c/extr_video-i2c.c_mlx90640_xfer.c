
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_i2c_data {TYPE_1__* chip; int regmap; } ;
struct TYPE_2__ {int buffer_size; } ;


 int regmap_bulk_read (int ,int,char*,int ) ;

__attribute__((used)) static int mlx90640_xfer(struct video_i2c_data *data, char *buf)
{
 return regmap_bulk_read(data->regmap, 0x400, buf,
    data->chip->buffer_size);
}
