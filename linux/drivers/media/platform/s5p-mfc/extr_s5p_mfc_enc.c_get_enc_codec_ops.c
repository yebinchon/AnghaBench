
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_codec_ops {int dummy; } ;


 struct s5p_mfc_codec_ops const encoder_codec_ops ;

const struct s5p_mfc_codec_ops *get_enc_codec_ops(void)
{
 return &encoder_codec_ops;
}
