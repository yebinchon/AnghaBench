
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stimx274 {TYPE_1__* mode; } ;
struct TYPE_2__ {scalar_t__ min_frame_len; scalar_t__ min_SHR; } ;


 scalar_t__ IMX274_SHR_LIMIT_CONST ;
 int imx274_get_frame_length (struct stimx274*,scalar_t__*) ;

__attribute__((used)) static int imx274_clamp_coarse_time(struct stimx274 *priv, u32 *val,
        u32 *frame_length)
{
 int err;

 err = imx274_get_frame_length(priv, frame_length);
 if (err)
  return err;

 if (*frame_length < priv->mode->min_frame_len)
  *frame_length = priv->mode->min_frame_len;

 *val = *frame_length - *val;
 if (*val > *frame_length - IMX274_SHR_LIMIT_CONST)
  *val = *frame_length - IMX274_SHR_LIMIT_CONST;
 else if (*val < priv->mode->min_SHR)
  *val = priv->mode->min_SHR;

 return 0;
}
