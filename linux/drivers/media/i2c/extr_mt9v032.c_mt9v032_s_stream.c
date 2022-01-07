
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; int top; int left; } ;
struct regmap {int dummy; } ;
struct mt9v032 {int vratio; int hratio; struct regmap* regmap; struct v4l2_rect crop; } ;


 int MT9V032_CHIP_CONTROL ;
 unsigned int MT9V032_CHIP_CONTROL_DOUT_ENABLE ;
 unsigned int MT9V032_CHIP_CONTROL_SEQUENTIAL ;
 int MT9V032_COLUMN_START ;
 int MT9V032_READ_MODE ;
 unsigned int MT9V032_READ_MODE_COLUMN_BIN_SHIFT ;
 unsigned int const MT9V032_READ_MODE_RESERVED ;
 unsigned int MT9V032_READ_MODE_ROW_BIN_SHIFT ;
 int MT9V032_ROW_START ;
 int MT9V032_WINDOW_HEIGHT ;
 int MT9V032_WINDOW_WIDTH ;
 int fls (int ) ;
 int mt9v032_update_hblank (struct mt9v032*) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int const,unsigned int const) ;
 int regmap_write (struct regmap*,int ,int ) ;
 struct mt9v032* to_mt9v032 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v032_s_stream(struct v4l2_subdev *subdev, int enable)
{
 const u16 mode = MT9V032_CHIP_CONTROL_DOUT_ENABLE
         | MT9V032_CHIP_CONTROL_SEQUENTIAL;
 struct mt9v032 *mt9v032 = to_mt9v032(subdev);
 struct v4l2_rect *crop = &mt9v032->crop;
 struct regmap *map = mt9v032->regmap;
 unsigned int hbin;
 unsigned int vbin;
 int ret;

 if (!enable)
  return regmap_update_bits(map, MT9V032_CHIP_CONTROL, mode, 0);


 hbin = fls(mt9v032->hratio) - 1;
 vbin = fls(mt9v032->vratio) - 1;
 ret = regmap_update_bits(map, MT9V032_READ_MODE,
     ~MT9V032_READ_MODE_RESERVED,
     hbin << MT9V032_READ_MODE_COLUMN_BIN_SHIFT |
     vbin << MT9V032_READ_MODE_ROW_BIN_SHIFT);
 if (ret < 0)
  return ret;

 ret = regmap_write(map, MT9V032_COLUMN_START, crop->left);
 if (ret < 0)
  return ret;

 ret = regmap_write(map, MT9V032_ROW_START, crop->top);
 if (ret < 0)
  return ret;

 ret = regmap_write(map, MT9V032_WINDOW_WIDTH, crop->width);
 if (ret < 0)
  return ret;

 ret = regmap_write(map, MT9V032_WINDOW_HEIGHT, crop->height);
 if (ret < 0)
  return ret;

 ret = mt9v032_update_hblank(mt9v032);
 if (ret < 0)
  return ret;


 return regmap_update_bits(map, MT9V032_CHIP_CONTROL, mode, mode);
}
