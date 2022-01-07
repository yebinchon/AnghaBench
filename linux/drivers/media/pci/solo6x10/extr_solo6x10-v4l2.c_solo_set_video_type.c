
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct solo_dev {int nr_chans; int cur_disp_ch; TYPE_1__** v4l2_enc; int video_type; int vidq; } ;
struct TYPE_2__ {int vidq; } ;


 int EBUSY ;
 int SOLO_VO_FMT_TYPE_NTSC ;
 int SOLO_VO_FMT_TYPE_PAL ;
 int solo_disp_init (struct solo_dev*) ;
 int solo_enc_init (struct solo_dev*) ;
 int solo_tw28_init (struct solo_dev*) ;
 int solo_update_mode (TYPE_1__*) ;
 int solo_v4l2_set_ch (struct solo_dev*,int ) ;
 scalar_t__ vb2_is_busy (int *) ;

int solo_set_video_type(struct solo_dev *solo_dev, bool is_50hz)
{
 int i;


 if (vb2_is_busy(&solo_dev->vidq))
  return -EBUSY;
 for (i = 0; i < solo_dev->nr_chans; i++)
  if (vb2_is_busy(&solo_dev->v4l2_enc[i]->vidq))
   return -EBUSY;
 solo_dev->video_type = is_50hz ? SOLO_VO_FMT_TYPE_PAL :
      SOLO_VO_FMT_TYPE_NTSC;

 solo_disp_init(solo_dev);
 solo_enc_init(solo_dev);
 solo_tw28_init(solo_dev);
 for (i = 0; i < solo_dev->nr_chans; i++)
  solo_update_mode(solo_dev->v4l2_enc[i]);
 return solo_v4l2_set_ch(solo_dev, solo_dev->cur_disp_ch);
}
