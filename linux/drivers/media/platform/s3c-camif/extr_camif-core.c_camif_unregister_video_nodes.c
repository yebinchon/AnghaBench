
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_dev {int dummy; } ;


 int VP_CODEC ;
 int VP_PREVIEW ;
 int s3c_camif_unregister_video_node (struct camif_dev*,int ) ;

__attribute__((used)) static void camif_unregister_video_nodes(struct camif_dev *camif)
{
 s3c_camif_unregister_video_node(camif, VP_CODEC);
 s3c_camif_unregister_video_node(camif, VP_PREVIEW);
}
