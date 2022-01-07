
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_data_stream_properties {int dummy; } ;
struct TYPE_2__ {int type; int endpoint; } ;
struct usb_data_stream {TYPE_1__ props; int * complete; int udev; } ;


 int EINVAL ;


 int err (char*) ;
 int memcpy (TYPE_1__*,struct usb_data_stream_properties*,int) ;
 int usb_bulk_urb_init (struct usb_data_stream*) ;
 int usb_clear_halt (int ,int ) ;
 int usb_isoc_urb_init (struct usb_data_stream*) ;
 int usb_rcvbulkpipe (int ,int ) ;

int usb_urb_init(struct usb_data_stream *stream, struct usb_data_stream_properties *props)
{
 if (stream == ((void*)0) || props == ((void*)0))
  return -EINVAL;

 memcpy(&stream->props, props, sizeof(*props));

 usb_clear_halt(stream->udev,usb_rcvbulkpipe(stream->udev,stream->props.endpoint));

 if (stream->complete == ((void*)0)) {
  err("there is no data callback - this doesn't make sense.");
  return -EINVAL;
 }

 switch (stream->props.type) {
  case 129:
   return usb_bulk_urb_init(stream);
  case 128:
   return usb_isoc_urb_init(stream);
  default:
   err("unknown URB-type for data transfer.");
   return -EINVAL;
 }
}
