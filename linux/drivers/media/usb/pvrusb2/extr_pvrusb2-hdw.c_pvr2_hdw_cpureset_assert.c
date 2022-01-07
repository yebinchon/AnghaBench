
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int usb_dev; } ;


 int GFP_KERNEL ;
 int HZ ;
 int PVR2_TRACE_ERROR_LEGS ;
 int PVR2_TRACE_INIT ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int pvr2_hdw_render_useless (struct pvr2_hdw*) ;
 int pvr2_trace (int ,char*,...) ;
 int usb_control_msg (int ,unsigned int,int,int,int,int ,char*,int,int ) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

void pvr2_hdw_cpureset_assert(struct pvr2_hdw *hdw,int val)
{
 char *da;
 unsigned int pipe;
 int ret;

 if (!hdw->usb_dev) return;

 da = kmalloc(16, GFP_KERNEL);

 if (da == ((void*)0)) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Unable to allocate memory to control CPU reset");
  return;
 }

 pvr2_trace(PVR2_TRACE_INIT,"cpureset_assert(%d)",val);

 da[0] = val ? 0x01 : 0x00;



 pipe = usb_sndctrlpipe(hdw->usb_dev, 0);
 ret = usb_control_msg(hdw->usb_dev,pipe,0xa0,0x40,0xe600,0,da,1,HZ);
 if (ret < 0) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "cpureset_assert(%d) error=%d",val,ret);
  pvr2_hdw_render_useless(hdw);
 }

 kfree(da);
}
