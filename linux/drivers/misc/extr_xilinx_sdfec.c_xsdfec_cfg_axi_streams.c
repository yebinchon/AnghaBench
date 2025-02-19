
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xsdfec_config {int din_width; int din_word_include; int dout_width; int dout_word_include; } ;
struct xsdfec_dev {struct xsdfec_config config; } ;


 int XSDFEC_AXIS_DIN_WIDTH_LSB ;
 int XSDFEC_AXIS_DIN_WORDS_LSB ;
 int XSDFEC_AXIS_DOUT_WIDTH_LSB ;
 int XSDFEC_AXIS_DOUT_WORDS_LSB ;
 int XSDFEC_AXIS_WIDTH_ADDR ;
 int xsdfec_regwrite (struct xsdfec_dev*,int ,int) ;
 int xsdfec_translate_axis_width_cfg_val (int ) ;
 int xsdfec_translate_axis_words_cfg_val (int ) ;

__attribute__((used)) static int xsdfec_cfg_axi_streams(struct xsdfec_dev *xsdfec)
{
 u32 reg_value;
 u32 dout_words_field;
 u32 dout_width_field;
 u32 din_words_field;
 u32 din_width_field;
 struct xsdfec_config *config = &xsdfec->config;


 dout_words_field =
  xsdfec_translate_axis_words_cfg_val(config->dout_word_include);
 dout_width_field =
  xsdfec_translate_axis_width_cfg_val(config->dout_width);
 din_words_field =
  xsdfec_translate_axis_words_cfg_val(config->din_word_include);
 din_width_field =
  xsdfec_translate_axis_width_cfg_val(config->din_width);

 reg_value = dout_words_field << XSDFEC_AXIS_DOUT_WORDS_LSB;
 reg_value |= dout_width_field << XSDFEC_AXIS_DOUT_WIDTH_LSB;
 reg_value |= din_words_field << XSDFEC_AXIS_DIN_WORDS_LSB;
 reg_value |= din_width_field << XSDFEC_AXIS_DIN_WIDTH_LSB;

 xsdfec_regwrite(xsdfec, XSDFEC_AXIS_WIDTH_ADDR, reg_value);

 return 0;
}
