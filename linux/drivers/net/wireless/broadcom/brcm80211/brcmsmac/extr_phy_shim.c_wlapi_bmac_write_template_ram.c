
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_write_template_ram (int ,int,int,void*) ;

void
wlapi_bmac_write_template_ram(struct phy_shim_info *physhim, int offset,
         int len, void *buf)
{
 brcms_b_write_template_ram(physhim->wlc_hw, offset, len, buf);
}
