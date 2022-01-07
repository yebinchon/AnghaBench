
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {char const* name; } ;



const char *pvr2_hdw_get_driver_name(struct pvr2_hdw *hdw)
{
 return hdw->name;
}
