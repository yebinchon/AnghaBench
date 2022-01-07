
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ivtv {int dummy; } ;


 int CX2341X_MBOX_MAX_DATA ;
 int CX2341X_OSD_GET_FRAMEBUFFER ;
 int ivtv_firmware_check (struct ivtv*,char*) ;
 int ivtv_vapi_result (struct ivtv*,int *,int ,int ) ;

__attribute__((used)) static int ivtvfb_get_framebuffer(struct ivtv *itv, u32 *fbbase,
           u32 *fblength)
{
 u32 data[CX2341X_MBOX_MAX_DATA];
 int rc;

 ivtv_firmware_check(itv, "ivtvfb_get_framebuffer");
 rc = ivtv_vapi_result(itv, data, CX2341X_OSD_GET_FRAMEBUFFER, 0);
 *fbbase = data[0];
 *fblength = data[1];
 return rc;
}
