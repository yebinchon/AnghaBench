
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int tv_freq; int tpg; } ;
typedef unsigned int s32 ;
typedef enum tpg_quality { ____Placeholder_tpg_quality } tpg_quality ;


 scalar_t__ TPG_QUAL_COLOR ;
 int TPG_QUAL_GRAY ;
 scalar_t__ TPG_QUAL_NOISE ;
 int tpg_g_quality (int *) ;

__attribute__((used)) static enum tpg_quality vivid_get_quality(struct vivid_dev *dev, s32 *afc)
{
 unsigned freq_modulus;

 if (afc)
  *afc = 0;
 if (tpg_g_quality(&dev->tpg) == TPG_QUAL_COLOR ||
     tpg_g_quality(&dev->tpg) == TPG_QUAL_NOISE)
  return tpg_g_quality(&dev->tpg);







 freq_modulus = (dev->tv_freq - 676 ) % (6 * 16);
 if (afc)
  *afc = freq_modulus - 1 * 16;
 return TPG_QUAL_GRAY;
}
