
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_dev {int dummy; } ;


 int VP_CODEC ;
 int VP_PREVIEW ;
 int s3c_camif_register_video_node (struct camif_dev*,int ) ;

__attribute__((used)) static int camif_register_video_nodes(struct camif_dev *camif)
{
 int ret = s3c_camif_register_video_node(camif, VP_CODEC);
 if (ret < 0)
  return ret;

 return s3c_camif_register_video_node(camif, VP_PREVIEW);
}
