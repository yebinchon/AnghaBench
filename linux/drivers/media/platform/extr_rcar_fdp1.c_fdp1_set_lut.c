
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp1_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int FD1_LUT_BLD_GAIN ;
 int FD1_LUT_DIF_ADJ ;
 int FD1_LUT_DIF_GAIN ;
 int FD1_LUT_MDET ;
 int FD1_LUT_SAD_ADJ ;
 int fdp1_bld_gain ;
 int fdp1_dif_gain ;
 int fdp1_diff_adj ;
 int fdp1_mdet ;
 int fdp1_sad_adj ;
 int fdp1_write_lut (struct fdp1_dev*,int ,int ,int ) ;

__attribute__((used)) static void fdp1_set_lut(struct fdp1_dev *fdp1)
{
 fdp1_write_lut(fdp1, fdp1_diff_adj, ARRAY_SIZE(fdp1_diff_adj),
   FD1_LUT_DIF_ADJ);
 fdp1_write_lut(fdp1, fdp1_sad_adj, ARRAY_SIZE(fdp1_sad_adj),
   FD1_LUT_SAD_ADJ);
 fdp1_write_lut(fdp1, fdp1_bld_gain, ARRAY_SIZE(fdp1_bld_gain),
   FD1_LUT_BLD_GAIN);
 fdp1_write_lut(fdp1, fdp1_dif_gain, ARRAY_SIZE(fdp1_dif_gain),
   FD1_LUT_DIF_GAIN);
 fdp1_write_lut(fdp1, fdp1_mdet, ARRAY_SIZE(fdp1_mdet),
   FD1_LUT_MDET);
}
