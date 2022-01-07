
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_res_device {int addr_base; int crop_offset; } ;


 int __resizer_set_inaddr (struct isp_res_device*,int) ;

__attribute__((used)) static void resizer_set_inaddr(struct isp_res_device *res, u32 addr)
{
 res->addr_base = addr;


 if (res->crop_offset)
  addr += res->crop_offset & ~0x1f;

 __resizer_set_inaddr(res, addr);
}
