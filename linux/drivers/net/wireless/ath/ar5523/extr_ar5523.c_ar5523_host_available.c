
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523_cmd_host_available {void* sw_ver_build; void* sw_ver_patch; void* sw_ver_minor; void* sw_ver_major; } ;
struct ar5523 {int dummy; } ;
typedef int setup ;


 int ATH_SW_VER_BUILD ;
 int ATH_SW_VER_MAJOR ;
 int ATH_SW_VER_MINOR ;
 int ATH_SW_VER_PATCH ;
 int WDCMSG_HOST_AVAILABLE ;
 int ar5523_cmd_read (struct ar5523*,int ,struct ar5523_cmd_host_available*,int,int *,int ,int ) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static int ar5523_host_available(struct ar5523 *ar)
{
 struct ar5523_cmd_host_available setup;


 setup.sw_ver_major = cpu_to_be32(ATH_SW_VER_MAJOR);
 setup.sw_ver_minor = cpu_to_be32(ATH_SW_VER_MINOR);
 setup.sw_ver_patch = cpu_to_be32(ATH_SW_VER_PATCH);
 setup.sw_ver_build = cpu_to_be32(ATH_SW_VER_BUILD);
 return ar5523_cmd_read(ar, WDCMSG_HOST_AVAILABLE,
          &setup, sizeof(setup), ((void*)0), 0, 0);
}
