
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_data_stream {int urbs_submitted; int * urb_list; } ;


 int deb_info (int,char*,int) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int lme2510_kill_urb(struct usb_data_stream *stream)
{
 int i;

 for (i = 0; i < stream->urbs_submitted; i++) {
  deb_info(3, "killing URB no. %d.", i);

  usb_kill_urb(stream->urb_list[i]);
 }
 stream->urbs_submitted = 0;

 return 0;
}
