
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; } ;
struct TYPE_4__ {int video_size; } ;
struct TYPE_6__ {TYPE_2__ roi; TYPE_1__ vp_params; } ;
struct camera_data {int width; int height; TYPE_3__ params; } ;


 int DBG (char*) ;
 int EINVAL ;
 void* STV_IMAGE_CIF_COLS ;
 void* STV_IMAGE_CIF_ROWS ;
 void* STV_IMAGE_QCIF_COLS ;
 void* STV_IMAGE_QCIF_ROWS ;
 void* STV_IMAGE_QVGA_COLS ;
 void* STV_IMAGE_QVGA_ROWS ;
 void* STV_IMAGE_VGA_COLS ;
 void* STV_IMAGE_VGA_ROWS ;
__attribute__((used)) static int set_vw_size(struct camera_data *cam, int size)
{
 int retval = 0;

 cam->params.vp_params.video_size = size;

 switch (size) {
 case 128:
  DBG("Setting size to VGA\n");
  cam->params.roi.width = STV_IMAGE_VGA_COLS;
  cam->params.roi.height = STV_IMAGE_VGA_ROWS;
  cam->width = STV_IMAGE_VGA_COLS;
  cam->height = STV_IMAGE_VGA_ROWS;
  break;
 case 131:
  DBG("Setting size to CIF\n");
  cam->params.roi.width = STV_IMAGE_CIF_COLS;
  cam->params.roi.height = STV_IMAGE_CIF_ROWS;
  cam->width = STV_IMAGE_CIF_COLS;
  cam->height = STV_IMAGE_CIF_ROWS;
  break;
 case 129:
  DBG("Setting size to QVGA\n");
  cam->params.roi.width = STV_IMAGE_QVGA_COLS;
  cam->params.roi.height = STV_IMAGE_QVGA_ROWS;
  cam->width = STV_IMAGE_QVGA_COLS;
  cam->height = STV_IMAGE_QVGA_ROWS;
  break;
 case 132:
  cam->params.roi.width = 288;
  cam->params.roi.height = 216;
  cam->width = 288;
  cam->height = 216;
  break;
 case 133:
  cam->width = 256;
  cam->height = 192;
  cam->params.roi.width = 256;
  cam->params.roi.height = 192;
  break;
 case 134:
  cam->width = 224;
  cam->height = 168;
  cam->params.roi.width = 224;
  cam->params.roi.height = 168;
  break;
 case 135:
  cam->width = 192;
  cam->height = 144;
  cam->params.roi.width = 192;
  cam->params.roi.height = 144;
  break;
 case 130:
  DBG("Setting size to QCIF\n");
  cam->params.roi.width = STV_IMAGE_QCIF_COLS;
  cam->params.roi.height = STV_IMAGE_QCIF_ROWS;
  cam->width = STV_IMAGE_QCIF_COLS;
  cam->height = STV_IMAGE_QCIF_ROWS;
  break;
 default:
  retval = -EINVAL;
 }
 return retval;
}
