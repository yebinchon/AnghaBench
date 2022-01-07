
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int dummy; } ;


 int CROP_INFO_V ;
 unsigned int s5p_mfc_read_info_v5 (struct s5p_mfc_ctx*,int ) ;

__attribute__((used)) static unsigned int s5p_mfc_get_crop_info_v_v5(struct s5p_mfc_ctx *ctx)
{
 return s5p_mfc_read_info_v5(ctx, CROP_INFO_V);
}
