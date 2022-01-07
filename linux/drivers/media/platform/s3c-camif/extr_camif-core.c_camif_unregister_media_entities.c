
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_dev {int dummy; } ;


 int camif_unregister_sensor (struct camif_dev*) ;
 int camif_unregister_video_nodes (struct camif_dev*) ;
 int s3c_camif_unregister_subdev (struct camif_dev*) ;

__attribute__((used)) static void camif_unregister_media_entities(struct camif_dev *camif)
{
 camif_unregister_video_nodes(camif);
 camif_unregister_sensor(camif);
 s3c_camif_unregister_subdev(camif);
}
