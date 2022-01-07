
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; int height; int code; } ;
struct vimc_sen_device {TYPE_1__ mbus_format; int tpg; } ;
struct vimc_pix_map {int bpp; int pixelformat; } ;


 int tpg_reset_source (int *,int,int ,int ) ;
 int tpg_s_buf_height (int *,int ) ;
 int tpg_s_bytesperline (int *,int ,int) ;
 int tpg_s_colorspace (int *,int ) ;
 int tpg_s_field (int *,int ,int) ;
 int tpg_s_fourcc (int *,int ) ;
 int tpg_s_quantization (int *,int ) ;
 int tpg_s_xfer_func (int *,int ) ;
 int tpg_s_ycbcr_enc (int *,int ) ;
 struct vimc_pix_map* vimc_pix_map_by_code (int ) ;

__attribute__((used)) static void vimc_sen_tpg_s_format(struct vimc_sen_device *vsen)
{
 const struct vimc_pix_map *vpix =
    vimc_pix_map_by_code(vsen->mbus_format.code);

 tpg_reset_source(&vsen->tpg, vsen->mbus_format.width,
    vsen->mbus_format.height, vsen->mbus_format.field);
 tpg_s_bytesperline(&vsen->tpg, 0, vsen->mbus_format.width * vpix->bpp);
 tpg_s_buf_height(&vsen->tpg, vsen->mbus_format.height);
 tpg_s_fourcc(&vsen->tpg, vpix->pixelformat);

 tpg_s_field(&vsen->tpg, vsen->mbus_format.field, 0);
 tpg_s_colorspace(&vsen->tpg, vsen->mbus_format.colorspace);
 tpg_s_ycbcr_enc(&vsen->tpg, vsen->mbus_format.ycbcr_enc);
 tpg_s_quantization(&vsen->tpg, vsen->mbus_format.quantization);
 tpg_s_xfer_func(&vsen->tpg, vsen->mbus_format.xfer_func);
}
