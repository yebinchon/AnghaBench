
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int ctl_volume; int ctrl_handler; } ;


 int saa7134_tvaudio_setmute (struct saa7134_dev*) ;
 int saa7134_tvaudio_setvolume (struct saa7134_dev*,int ) ;
 int set_tvnorm (struct saa7134_dev*,int *) ;
 int * tvnorms ;
 int v4l2_ctrl_handler_setup (int *) ;
 int video_mux (struct saa7134_dev*,int ) ;

int saa7134_video_init2(struct saa7134_dev *dev)
{

 set_tvnorm(dev,&tvnorms[0]);
 video_mux(dev,0);
 v4l2_ctrl_handler_setup(&dev->ctrl_handler);
 saa7134_tvaudio_setmute(dev);
 saa7134_tvaudio_setvolume(dev,dev->ctl_volume);
 return 0;
}
