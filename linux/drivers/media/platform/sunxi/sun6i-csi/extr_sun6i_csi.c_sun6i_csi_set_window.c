
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun6i_csi_config {int width; int height; int pixelformat; } ;
struct TYPE_2__ {struct sun6i_csi_config config; } ;
struct sun6i_csi_dev {int* planar_offset; int regmap; int dev; TYPE_1__ csi; } ;


 int CSI_CH_BUF_LEN_BUF_LEN_C (int) ;
 int CSI_CH_BUF_LEN_BUF_LEN_Y (int) ;
 int CSI_CH_BUF_LEN_REG ;
 int CSI_CH_HSIZE_HOR_LEN (int) ;
 int CSI_CH_HSIZE_HOR_START (int ) ;
 int CSI_CH_HSIZE_REG ;
 int CSI_CH_VSIZE_REG ;
 int CSI_CH_VSIZE_VER_LEN (int) ;
 int CSI_CH_VSIZE_VER_START (int ) ;
 int dev_dbg (int ,char*,...) ;
 int regmap_write (int ,int ,int) ;
 int sun6i_csi_get_bpp (int) ;

__attribute__((used)) static void sun6i_csi_set_window(struct sun6i_csi_dev *sdev)
{
 struct sun6i_csi_config *config = &sdev->csi.config;
 u32 bytesperline_y;
 u32 bytesperline_c;
 int *planar_offset = sdev->planar_offset;
 u32 width = config->width;
 u32 height = config->height;
 u32 hor_len = width;

 switch (config->pixelformat) {
 case 130:
 case 128:
 case 134:
 case 133:
  dev_dbg(sdev->dev,
   "Horizontal length should be 2 times of width for packed YUV formats!\n");
  hor_len = width * 2;
  break;
 default:
  break;
 }

 regmap_write(sdev->regmap, CSI_CH_HSIZE_REG,
       CSI_CH_HSIZE_HOR_LEN(hor_len) |
       CSI_CH_HSIZE_HOR_START(0));
 regmap_write(sdev->regmap, CSI_CH_VSIZE_REG,
       CSI_CH_VSIZE_VER_LEN(height) |
       CSI_CH_VSIZE_VER_START(0));

 planar_offset[0] = 0;
 switch (config->pixelformat) {
 case 139:
 case 138:
 case 136:
 case 137:
 case 135:
  bytesperline_y = width;
  bytesperline_c = width;
  planar_offset[1] = bytesperline_y * height;
  planar_offset[2] = -1;
  break;
 case 132:
 case 129:
  bytesperline_y = width;
  bytesperline_c = width / 2;
  planar_offset[1] = bytesperline_y * height;
  planar_offset[2] = planar_offset[1] +
    bytesperline_c * height / 2;
  break;
 case 131:
  bytesperline_y = width;
  bytesperline_c = width / 2;
  planar_offset[1] = bytesperline_y * height;
  planar_offset[2] = planar_offset[1] +
    bytesperline_c * height;
  break;
 default:
  dev_dbg(sdev->dev,
   "Calculating pixelformat(0x%x)'s bytesperline as a packed format\n",
   config->pixelformat);
  bytesperline_y = (sun6i_csi_get_bpp(config->pixelformat) *
      config->width) / 8;
  bytesperline_c = 0;
  planar_offset[1] = -1;
  planar_offset[2] = -1;
  break;
 }

 regmap_write(sdev->regmap, CSI_CH_BUF_LEN_REG,
       CSI_CH_BUF_LEN_BUF_LEN_C(bytesperline_c) |
       CSI_CH_BUF_LEN_BUF_LEN_Y(bytesperline_y));
}
