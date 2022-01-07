
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;


 int core_dbg (char*) ;
 int saa7134_hw_enable2 (struct saa7134_dev*) ;
 int saa7134_tvaudio_init2 (struct saa7134_dev*) ;
 int saa7134_video_init2 (struct saa7134_dev*) ;

__attribute__((used)) static int saa7134_hwinit2(struct saa7134_dev *dev)
{

 core_dbg("hwinit2\n");

 saa7134_video_init2(dev);
 saa7134_tvaudio_init2(dev);

 saa7134_hw_enable2(dev);

 return 0;
}
