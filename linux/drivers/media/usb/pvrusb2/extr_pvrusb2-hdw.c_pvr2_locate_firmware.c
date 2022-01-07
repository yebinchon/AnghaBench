
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_hdw {TYPE_1__* usb_dev; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOENT ;
 int PVR2_TRACE_ERROR_LEGS ;
 int pvr2_trace (int ,char*,...) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int trace_firmware (char*,char const*,char const*) ;

__attribute__((used)) static int pvr2_locate_firmware(struct pvr2_hdw *hdw,
    const struct firmware **fw_entry,
    const char *fwtypename,
    unsigned int fwcount,
    const char *fwnames[])
{
 unsigned int idx;
 int ret = -EINVAL;
 for (idx = 0; idx < fwcount; idx++) {
  ret = request_firmware(fw_entry,
           fwnames[idx],
           &hdw->usb_dev->dev);
  if (!ret) {
   trace_firmware("Located %s firmware: %s; uploading...",
           fwtypename,
           fwnames[idx]);
   return idx;
  }
  if (ret == -ENOENT) continue;
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "request_firmware fatal error with code=%d",ret);
  return ret;
 }
 pvr2_trace(PVR2_TRACE_ERROR_LEGS,
     "***WARNING*** Device %s firmware seems to be missing.",
     fwtypename);
 pvr2_trace(PVR2_TRACE_ERROR_LEGS,
     "Did you install the pvrusb2 firmware files in their proper location?");
 if (fwcount == 1) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "request_firmware unable to locate %s file %s",
      fwtypename,fwnames[0]);
 } else {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "request_firmware unable to locate one of the following %s files:",
      fwtypename);
  for (idx = 0; idx < fwcount; idx++) {
   pvr2_trace(PVR2_TRACE_ERROR_LEGS,
       "request_firmware: Failed to find %s",
       fwnames[idx]);
  }
 }
 return ret;
}
