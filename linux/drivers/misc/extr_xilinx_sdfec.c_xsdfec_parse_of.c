
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int code; scalar_t__ dout_width; scalar_t__ dout_word_include; scalar_t__ din_width; scalar_t__ din_word_include; } ;
struct xsdfec_dev {TYPE_1__ config; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;



 scalar_t__ XSDFEC_AXIS_WORDS_INCLUDE_MAX ;
 int XSDFEC_FEC_CODE_ADDR ;
 int XSDFEC_LDPC_CODE ;
 int XSDFEC_TURBO_CODE ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int strcasecmp (char const*,char*) ;
 int xsdfec_cfg_axi_streams (struct xsdfec_dev*) ;
 int xsdfec_regwrite (struct xsdfec_dev*,int ,int ) ;

__attribute__((used)) static int xsdfec_parse_of(struct xsdfec_dev *xsdfec)
{
 struct device *dev = xsdfec->dev;
 struct device_node *node = dev->of_node;
 int rval;
 const char *fec_code;
 u32 din_width;
 u32 din_word_include;
 u32 dout_width;
 u32 dout_word_include;

 rval = of_property_read_string(node, "xlnx,sdfec-code", &fec_code);
 if (rval < 0)
  return rval;

 if (!strcasecmp(fec_code, "ldpc"))
  xsdfec->config.code = XSDFEC_LDPC_CODE;
 else if (!strcasecmp(fec_code, "turbo"))
  xsdfec->config.code = XSDFEC_TURBO_CODE;
 else
  return -EINVAL;

 rval = of_property_read_u32(node, "xlnx,sdfec-din-words",
        &din_word_include);
 if (rval < 0)
  return rval;

 if (din_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX)
  xsdfec->config.din_word_include = din_word_include;
 else
  return -EINVAL;

 rval = of_property_read_u32(node, "xlnx,sdfec-din-width", &din_width);
 if (rval < 0)
  return rval;

 switch (din_width) {

 case 130:
 case 129:
 case 128:
  xsdfec->config.din_width = din_width;
  break;
 default:
  return -EINVAL;
 }

 rval = of_property_read_u32(node, "xlnx,sdfec-dout-words",
        &dout_word_include);
 if (rval < 0)
  return rval;

 if (dout_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX)
  xsdfec->config.dout_word_include = dout_word_include;
 else
  return -EINVAL;

 rval = of_property_read_u32(node, "xlnx,sdfec-dout-width", &dout_width);
 if (rval < 0)
  return rval;

 switch (dout_width) {

 case 130:
 case 129:
 case 128:
  xsdfec->config.dout_width = dout_width;
  break;
 default:
  return -EINVAL;
 }


 xsdfec_regwrite(xsdfec, XSDFEC_FEC_CODE_ADDR, xsdfec->config.code);

 xsdfec_cfg_axi_streams(xsdfec);

 return 0;
}
