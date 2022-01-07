
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int dummy; } ;


 int DISP_PIC_FRAME_TYPE ;
 int S5P_FIMV_DECODE_FRAME_MASK ;
 int S5P_FIMV_SHARED_DISP_FRAME_TYPE_SHIFT ;
 int s5p_mfc_read_info_v5 (struct s5p_mfc_ctx*,int ) ;

__attribute__((used)) static int s5p_mfc_get_disp_frame_type_v5(struct s5p_mfc_ctx *ctx)
{
 return (s5p_mfc_read_info_v5(ctx, DISP_PIC_FRAME_TYPE) >>
   S5P_FIMV_SHARED_DISP_FRAME_TYPE_SHIFT) &
   S5P_FIMV_DECODE_FRAME_MASK;
}
