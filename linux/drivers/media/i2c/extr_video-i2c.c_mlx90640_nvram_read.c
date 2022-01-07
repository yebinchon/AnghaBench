
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_i2c_data {int regmap; } ;


 int regmap_bulk_read (int ,int,void*,size_t) ;

__attribute__((used)) static int mlx90640_nvram_read(void *priv, unsigned int offset, void *val,
        size_t bytes)
{
 struct video_i2c_data *data = priv;

 return regmap_bulk_read(data->regmap, 0x2400 + offset, val, bytes);
}
