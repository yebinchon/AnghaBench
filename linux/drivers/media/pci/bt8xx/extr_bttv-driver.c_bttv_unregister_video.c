
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int radio_dev; int vbi_dev; int video_dev; } ;


 int video_unregister_device (int *) ;

__attribute__((used)) static void bttv_unregister_video(struct bttv *btv)
{
 video_unregister_device(&btv->video_dev);
 video_unregister_device(&btv->vbi_dev);
 video_unregister_device(&btv->radio_dev);
}
