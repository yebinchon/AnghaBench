
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int cmd_buf; int ctrl_buf; int udev; } ;


 int PWC_ERROR (char*,int) ;
 int SET_EP_STREAM_CTL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int VIDEO_OUTPUT_CONTROL_FORMATTER ;
 int memcpy (int ,unsigned char const*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int,int ,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static inline int send_video_command(struct pwc_device *pdev,
 int index, const unsigned char *buf, int buflen)
{
 int rc;

 memcpy(pdev->ctrl_buf, buf, buflen);

 rc = usb_control_msg(pdev->udev, usb_sndctrlpipe(pdev->udev, 0),
   SET_EP_STREAM_CTL,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   VIDEO_OUTPUT_CONTROL_FORMATTER, index,
   pdev->ctrl_buf, buflen, USB_CTRL_SET_TIMEOUT);
 if (rc >= 0)
  memcpy(pdev->cmd_buf, buf, buflen);
 else
  PWC_ERROR("send_video_command error %d\n", rc);

 return rc;
}
