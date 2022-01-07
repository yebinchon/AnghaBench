
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uvc_device {int dummy; } ;


 int EBUSY ;
 int EILSEQ ;
 int EINVAL ;
 int EPIPE ;
 int ERANGE ;
 int EREMOTE ;
 int KERN_ERR ;
 int UVC_CTRL_CONTROL_TIMEOUT ;
 int UVC_GET_CUR ;
 int UVC_TRACE_CONTROL ;
 int UVC_VC_REQUEST_ERROR_CODE_CONTROL ;
 int __uvc_query_ctrl (struct uvc_device*,int,int,int,int,void*,int,int ) ;
 scalar_t__ likely (int) ;
 int uvc_printk (int ,char*,int ,int,int,int,int) ;
 int uvc_query_name (int) ;
 int uvc_trace (int ,char*,int) ;

int uvc_query_ctrl(struct uvc_device *dev, u8 query, u8 unit,
   u8 intfnum, u8 cs, void *data, u16 size)
{
 int ret;
 u8 error;
 u8 tmp;

 ret = __uvc_query_ctrl(dev, query, unit, intfnum, cs, data, size,
    UVC_CTRL_CONTROL_TIMEOUT);
 if (likely(ret == size))
  return 0;

 uvc_printk(KERN_ERR,
     "Failed to query (%s) UVC control %u on unit %u: %d (exp. %u).\n",
     uvc_query_name(query), cs, unit, ret, size);

 if (ret != -EPIPE)
  return ret;

 tmp = *(u8 *)data;

 ret = __uvc_query_ctrl(dev, UVC_GET_CUR, 0, intfnum,
          UVC_VC_REQUEST_ERROR_CODE_CONTROL, data, 1,
          UVC_CTRL_CONTROL_TIMEOUT);

 error = *(u8 *)data;
 *(u8 *)data = tmp;

 if (ret != 1)
  return ret < 0 ? ret : -EPIPE;

 uvc_trace(UVC_TRACE_CONTROL, "Control error %u\n", error);

 switch (error) {
 case 0:

  return -EPIPE;
 case 1:
  return -EBUSY;
 case 2:
  return -EILSEQ;
 case 3:
  return -EREMOTE;
 case 4:
  return -ERANGE;
 case 5:
 case 6:
 case 7:
 case 8:
  return -EINVAL;
 default:
  break;
 }

 return -EPIPE;
}
