
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_video_channel {size_t ch; int video_standard; int fps; int dev; } ;


 int TW686X_MAX_FPS (int ) ;
 int * VIDEO_FIELD_CTRL ;
 int * fps_map ;
 int reg_write (int ,int ,int ) ;
 unsigned int tw686x_fps_idx (unsigned int,int ) ;
 int tw686x_real_fps (unsigned int,int ) ;

__attribute__((used)) static void tw686x_set_framerate(struct tw686x_video_channel *vc,
     unsigned int fps)
{
 unsigned int i;

 i = tw686x_fps_idx(fps, TW686X_MAX_FPS(vc->video_standard));
 reg_write(vc->dev, VIDEO_FIELD_CTRL[vc->ch], fps_map[i]);
 vc->fps = tw686x_real_fps(i, TW686X_MAX_FPS(vc->video_standard));
}
