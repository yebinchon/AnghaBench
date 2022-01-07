
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct uvc_streaming_control {scalar_t__ dwMaxPayloadTransferSize; int wCompWindowSize; int wCompQuality; int wPFrameRate; int wKeyFrameRate; } ;
struct uvc_streaming {scalar_t__ maxpsize; TYPE_2__* dev; TYPE_1__* intf; } ;
struct TYPE_4__ {int quirks; } ;
struct TYPE_3__ {int num_altsetting; } ;


 int ENOSPC ;
 int UVC_GET_CUR ;
 int UVC_GET_MAX ;
 int UVC_GET_MIN ;
 int UVC_QUIRK_PROBE_MINMAX ;
 int uvc_get_video_ctrl (struct uvc_streaming*,struct uvc_streaming_control*,int,int ) ;
 int uvc_set_video_ctrl (struct uvc_streaming*,struct uvc_streaming_control*,int) ;

int uvc_probe_video(struct uvc_streaming *stream,
 struct uvc_streaming_control *probe)
{
 struct uvc_streaming_control probe_min, probe_max;
 u16 bandwidth;
 unsigned int i;
 int ret;
 ret = uvc_set_video_ctrl(stream, probe, 1);
 if (ret < 0)
  goto done;


 if (!(stream->dev->quirks & UVC_QUIRK_PROBE_MINMAX)) {
  ret = uvc_get_video_ctrl(stream, &probe_min, 1, UVC_GET_MIN);
  if (ret < 0)
   goto done;
  ret = uvc_get_video_ctrl(stream, &probe_max, 1, UVC_GET_MAX);
  if (ret < 0)
   goto done;

  probe->wCompQuality = probe_max.wCompQuality;
 }

 for (i = 0; i < 2; ++i) {
  ret = uvc_set_video_ctrl(stream, probe, 1);
  if (ret < 0)
   goto done;
  ret = uvc_get_video_ctrl(stream, probe, 1, UVC_GET_CUR);
  if (ret < 0)
   goto done;

  if (stream->intf->num_altsetting == 1)
   break;

  bandwidth = probe->dwMaxPayloadTransferSize;
  if (bandwidth <= stream->maxpsize)
   break;

  if (stream->dev->quirks & UVC_QUIRK_PROBE_MINMAX) {
   ret = -ENOSPC;
   goto done;
  }


  probe->wKeyFrameRate = probe_min.wKeyFrameRate;
  probe->wPFrameRate = probe_min.wPFrameRate;
  probe->wCompQuality = probe_max.wCompQuality;
  probe->wCompWindowSize = probe_min.wCompWindowSize;
 }

done:
 return ret;
}
