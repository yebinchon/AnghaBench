
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct uvc_streaming {struct uvc_device* dev; } ;
struct uvc_device {int ref; } ;


 int kref_put (int *,int ) ;
 int uvc_delete ;
 struct uvc_streaming* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void uvc_release(struct video_device *vdev)
{
 struct uvc_streaming *stream = video_get_drvdata(vdev);
 struct uvc_device *dev = stream->dev;

 kref_put(&dev->ref, uvc_delete);
}
