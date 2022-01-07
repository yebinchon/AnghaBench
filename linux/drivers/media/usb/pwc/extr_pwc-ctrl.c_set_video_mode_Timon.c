
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int pixfmt; int vframes; scalar_t__ valternate; int width; int height; int vbandlength; int frame_size; int vendpoint; } ;
struct Timon_table_entry {scalar_t__ alternate; int bandlength; int mode; } ;


 int EINVAL ;
 int ENOENT ;
 int PSZ_MAX ;
 int PSZ_VGA ;
 struct Timon_table_entry*** Timon_table ;
 int V4L2_PIX_FMT_YUV420 ;
 int pwc_dec23_init (struct pwc_device*,int ) ;
 void*** pwc_image_sizes ;
 int send_video_command (struct pwc_device*,int ,int ,int) ;

__attribute__((used)) static int set_video_mode_Timon(struct pwc_device *pdev, int size, int pixfmt,
    int frames, int *compression, int send_to_cam)
{
 const struct Timon_table_entry *pChoose;
 int fps, ret = 0;

 if (size >= PSZ_MAX || *compression < 0 || *compression > 3)
  return -EINVAL;
 if (frames < 5)
  frames = 5;
 else if (size == PSZ_VGA && frames > 15)
  frames = 15;
 else if (frames > 30)
  frames = 30;
 fps = (frames / 5) - 1;


 do {
  pChoose = &Timon_table[size][fps][*compression];
  if (pChoose->alternate != 0)
   break;
  (*compression)++;
 } while (*compression <= 3);

 if (pChoose->alternate == 0)
  return -ENOENT;

 if (send_to_cam)
  ret = send_video_command(pdev, pdev->vendpoint,
      pChoose->mode, 13);
 if (ret < 0)
  return ret;

 if (pChoose->bandlength > 0 && pixfmt == V4L2_PIX_FMT_YUV420)
  pwc_dec23_init(pdev, pChoose->mode);


 pdev->pixfmt = pixfmt;
 pdev->vframes = (fps + 1) * 5;
 pdev->valternate = pChoose->alternate;
 pdev->width = pwc_image_sizes[size][0];
 pdev->height = pwc_image_sizes[size][1];
 pdev->vbandlength = pChoose->bandlength;
 if (pChoose->bandlength > 0)
  pdev->frame_size = (pChoose->bandlength * pdev->height) / 4;
 else
  pdev->frame_size = (pdev->width * pdev->height * 12) / 8;
 return 0;
}
