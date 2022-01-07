
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {unsigned char bus_width; int flags; } ;
struct TYPE_6__ {TYPE_2__ parallel; } ;
struct v4l2_fwnode_endpoint {int bus_type; TYPE_3__ bus; } ;
struct TYPE_4__ {scalar_t__ field; } ;
struct sun6i_csi {TYPE_1__ config; struct v4l2_fwnode_endpoint v4l2_ep; } ;
struct sun6i_csi_dev {int regmap; int dev; struct sun6i_csi csi; } ;


 int CSI_IF_CFG_CLK_POL_FALLING_EDGE ;
 int CSI_IF_CFG_CLK_POL_MASK ;
 int CSI_IF_CFG_CSI_IF_BT1120 ;
 int CSI_IF_CFG_CSI_IF_BT656 ;
 int CSI_IF_CFG_CSI_IF_MASK ;
 int CSI_IF_CFG_CSI_IF_YUV422_16BIT ;
 int CSI_IF_CFG_CSI_IF_YUV422_INTLV ;
 int CSI_IF_CFG_FIELD_MASK ;
 int CSI_IF_CFG_FIELD_POSITIVE ;
 int CSI_IF_CFG_HREF_POL_MASK ;
 int CSI_IF_CFG_HREF_POL_POSITIVE ;
 int CSI_IF_CFG_IF_DATA_WIDTH_10BIT ;
 int CSI_IF_CFG_IF_DATA_WIDTH_12BIT ;
 int CSI_IF_CFG_IF_DATA_WIDTH_8BIT ;
 int CSI_IF_CFG_IF_DATA_WIDTH_MASK ;
 int CSI_IF_CFG_MIPI_IF_CSI ;
 int CSI_IF_CFG_MIPI_IF_MASK ;
 int CSI_IF_CFG_REG ;
 int CSI_IF_CFG_SRC_TYPE_INTERLACED ;
 int CSI_IF_CFG_SRC_TYPE_MASK ;
 int CSI_IF_CFG_SRC_TYPE_PROGRESSED ;
 int CSI_IF_CFG_VREF_POL_MASK ;
 int CSI_IF_CFG_VREF_POL_POSITIVE ;
 scalar_t__ V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_FIELD_INTERLACED_BT ;
 scalar_t__ V4L2_FIELD_INTERLACED_TB ;

 int V4L2_MBUS_FIELD_EVEN_LOW ;
 int V4L2_MBUS_HSYNC_ACTIVE_LOW ;

 int V4L2_MBUS_PCLK_SAMPLE_FALLING ;
 int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 int V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int dev_warn (int ,char*,unsigned char) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void sun6i_csi_setup_bus(struct sun6i_csi_dev *sdev)
{
 struct v4l2_fwnode_endpoint *endpoint = &sdev->csi.v4l2_ep;
 struct sun6i_csi *csi = &sdev->csi;
 unsigned char bus_width;
 u32 flags;
 u32 cfg;
 bool input_interlaced = 0;

 if (csi->config.field == V4L2_FIELD_INTERLACED
     || csi->config.field == V4L2_FIELD_INTERLACED_TB
     || csi->config.field == V4L2_FIELD_INTERLACED_BT)
  input_interlaced = 1;

 bus_width = endpoint->bus.parallel.bus_width;

 regmap_read(sdev->regmap, CSI_IF_CFG_REG, &cfg);

 cfg &= ~(CSI_IF_CFG_CSI_IF_MASK | CSI_IF_CFG_MIPI_IF_MASK |
   CSI_IF_CFG_IF_DATA_WIDTH_MASK |
   CSI_IF_CFG_CLK_POL_MASK | CSI_IF_CFG_VREF_POL_MASK |
   CSI_IF_CFG_HREF_POL_MASK | CSI_IF_CFG_FIELD_MASK |
   CSI_IF_CFG_SRC_TYPE_MASK);

 if (input_interlaced)
  cfg |= CSI_IF_CFG_SRC_TYPE_INTERLACED;
 else
  cfg |= CSI_IF_CFG_SRC_TYPE_PROGRESSED;

 switch (endpoint->bus_type) {
 case 128:
  cfg |= CSI_IF_CFG_MIPI_IF_CSI;

  flags = endpoint->bus.parallel.flags;

  cfg |= (bus_width == 16) ? CSI_IF_CFG_CSI_IF_YUV422_16BIT :
        CSI_IF_CFG_CSI_IF_YUV422_INTLV;

  if (flags & V4L2_MBUS_FIELD_EVEN_LOW)
   cfg |= CSI_IF_CFG_FIELD_POSITIVE;

  if (flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
   cfg |= CSI_IF_CFG_VREF_POL_POSITIVE;
  if (flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
   cfg |= CSI_IF_CFG_HREF_POL_POSITIVE;

  if (flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
   cfg |= CSI_IF_CFG_CLK_POL_FALLING_EDGE;
  break;
 case 129:
  cfg |= CSI_IF_CFG_MIPI_IF_CSI;

  flags = endpoint->bus.parallel.flags;

  cfg |= (bus_width == 16) ? CSI_IF_CFG_CSI_IF_BT1120 :
        CSI_IF_CFG_CSI_IF_BT656;

  if (flags & V4L2_MBUS_FIELD_EVEN_LOW)
   cfg |= CSI_IF_CFG_FIELD_POSITIVE;

  if (flags & V4L2_MBUS_PCLK_SAMPLE_FALLING)
   cfg |= CSI_IF_CFG_CLK_POL_FALLING_EDGE;
  break;
 default:
  dev_warn(sdev->dev, "Unsupported bus type: %d\n",
    endpoint->bus_type);
  break;
 }

 switch (bus_width) {
 case 8:
  cfg |= CSI_IF_CFG_IF_DATA_WIDTH_8BIT;
  break;
 case 10:
  cfg |= CSI_IF_CFG_IF_DATA_WIDTH_10BIT;
  break;
 case 12:
  cfg |= CSI_IF_CFG_IF_DATA_WIDTH_12BIT;
  break;
 case 16:
  break;
 default:
  dev_warn(sdev->dev, "Unsupported bus width: %u\n", bus_width);
  break;
 }

 regmap_write(sdev->regmap, CSI_IF_CFG_REG, cfg);
}
