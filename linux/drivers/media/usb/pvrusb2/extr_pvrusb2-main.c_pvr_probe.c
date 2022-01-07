
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct pvr2_context {int dummy; } ;


 int ENOMEM ;
 int PVR2_TRACE_ERROR_LEGS ;
 int PVR2_TRACE_INIT ;
 struct pvr2_context* pvr2_context_create (struct usb_interface*,struct usb_device_id const*,int ) ;
 int pvr2_trace (int ,char*,...) ;
 int pvr_setup_attach ;
 int usb_set_intfdata (struct usb_interface*,struct pvr2_context*) ;

__attribute__((used)) static int pvr_probe(struct usb_interface *intf,
       const struct usb_device_id *devid)
{
 struct pvr2_context *pvr;


 pvr = pvr2_context_create(intf,devid,pvr_setup_attach);
 if (!pvr) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Failed to create hdw handler");
  return -ENOMEM;
 }

 pvr2_trace(PVR2_TRACE_INIT,"pvr_probe(pvr=%p)",pvr);

 usb_set_intfdata(intf, pvr);

 return 0;
}
