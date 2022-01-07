
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_pix_format {int bytesperline; int sizeimage; int height; int width; int pixelformat; } ;
struct mcam_camera {struct v4l2_pix_format pix_format; } ;


 int C0_DF_MASK ;
 int C0_DF_RGB ;
 int C0_DF_YUV ;
 int C0_RGB4_XBGR ;
 int C0_RGB5_BGGR ;
 int C0_RGB5_GRBG ;
 int C0_RGBF_444 ;
 int C0_RGBF_565 ;
 int C0_SIFM_MASK ;
 int C0_SIF_HVSYNC ;
 int C0_YUVE_NOSWAP ;
 int C0_YUVE_SWAP24 ;
 int C0_YUVE_VYUY ;
 int C0_YUV_420PL ;
 int C0_YUV_PACKED ;
 int IMGP_UVP_MASK ;
 int IMGP_YP_MASK ;
 int IMGSZ_H_MASK ;
 int IMGSZ_V_MASK ;
 int IMGSZ_V_SHIFT ;
 int REG_CTRL0 ;
 int REG_IMGOFFSET ;
 int REG_IMGPITCH ;
 int REG_IMGSIZE ;







 int cam_dbg (struct mcam_camera*,char*,int,int) ;
 int cam_err (struct mcam_camera*,char*,int) ;
 int mcam_reg_write (struct mcam_camera*,int ,int) ;
 int mcam_reg_write_mask (struct mcam_camera*,int ,int,int) ;

__attribute__((used)) static void mcam_ctlr_image(struct mcam_camera *cam)
{
 struct v4l2_pix_format *fmt = &cam->pix_format;
 u32 widthy = 0, widthuv = 0, imgsz_h, imgsz_w;

 cam_dbg(cam, "camera: bytesperline = %d; height = %d\n",
  fmt->bytesperline, fmt->sizeimage / fmt->bytesperline);
 imgsz_h = (fmt->height << IMGSZ_V_SHIFT) & IMGSZ_V_MASK;
 imgsz_w = (fmt->width * 2) & IMGSZ_H_MASK;

 switch (fmt->pixelformat) {
 case 130:
 case 128:
  widthy = fmt->width * 2;
  widthuv = 0;
  break;
 case 131:
 case 129:
  widthy = fmt->width;
  widthuv = fmt->width / 2;
  break;
 default:
  widthy = fmt->bytesperline;
  widthuv = 0;
  break;
 }

 mcam_reg_write_mask(cam, REG_IMGPITCH, widthuv << 16 | widthy,
   IMGP_YP_MASK | IMGP_UVP_MASK);
 mcam_reg_write(cam, REG_IMGSIZE, imgsz_h | imgsz_w);
 mcam_reg_write(cam, REG_IMGOFFSET, 0x0);




 switch (fmt->pixelformat) {
 case 131:
 case 129:
  mcam_reg_write_mask(cam, REG_CTRL0,
   C0_DF_YUV | C0_YUV_420PL | C0_YUVE_VYUY, C0_DF_MASK);
  break;
 case 130:
  mcam_reg_write_mask(cam, REG_CTRL0,
   C0_DF_YUV | C0_YUV_PACKED | C0_YUVE_NOSWAP, C0_DF_MASK);
  break;
 case 128:
  mcam_reg_write_mask(cam, REG_CTRL0,
   C0_DF_YUV | C0_YUV_PACKED | C0_YUVE_SWAP24, C0_DF_MASK);
  break;
 case 132:
  mcam_reg_write_mask(cam, REG_CTRL0,
   C0_DF_RGB | C0_RGBF_444 | C0_RGB4_XBGR, C0_DF_MASK);
  break;
 case 134:
  mcam_reg_write_mask(cam, REG_CTRL0,
   C0_DF_RGB | C0_RGBF_565 | C0_RGB5_BGGR, C0_DF_MASK);
  break;
 case 133:
  mcam_reg_write_mask(cam, REG_CTRL0,
   C0_DF_RGB | C0_RGB5_GRBG, C0_DF_MASK);
  break;
 default:
  cam_err(cam, "camera: unknown format: %#x\n", fmt->pixelformat);
  break;
 }




 mcam_reg_write_mask(cam, REG_CTRL0, C0_SIF_HVSYNC, C0_SIFM_MASK);
}
