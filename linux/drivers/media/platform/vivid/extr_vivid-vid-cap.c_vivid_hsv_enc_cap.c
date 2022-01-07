
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {unsigned int hsv_enc_out; int tpg; int loop_video; } ;


 unsigned int tpg_g_hsv_enc (int *) ;
 scalar_t__ vivid_is_tv_cap (struct vivid_dev*) ;
 scalar_t__ vivid_is_webcam (struct vivid_dev*) ;

__attribute__((used)) static unsigned int vivid_hsv_enc_cap(struct vivid_dev *dev)
{
 if (!dev->loop_video || vivid_is_webcam(dev) || vivid_is_tv_cap(dev))
  return tpg_g_hsv_enc(&dev->tpg);
 return dev->hsv_enc_out;
}
