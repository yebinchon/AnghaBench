
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int * fw_buffer; } ;



int pvr2_hdw_cpufw_get_enabled(struct pvr2_hdw *hdw)
{
 return hdw->fw_buffer != ((void*)0);
}
