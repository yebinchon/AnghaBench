
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil6210_priv {int dummy; } ;


 int GFP_KERNEL ;
 int dev_coredumpv (int ,void*,int ,int ) ;
 int vfree (void*) ;
 void* vzalloc (int ) ;
 int wil_err (struct wil6210_priv*,char*) ;
 scalar_t__ wil_fw_copy_crash_dump (struct wil6210_priv*,void*,int ) ;
 scalar_t__ wil_fw_get_crash_dump_bounds (struct wil6210_priv*,int *,int *) ;
 int wil_info (struct wil6210_priv*,char*,int ) ;
 int wil_to_dev (struct wil6210_priv*) ;

void wil_fw_core_dump(struct wil6210_priv *wil)
{
 void *fw_dump_data;
 u32 fw_dump_size;

 if (wil_fw_get_crash_dump_bounds(wil, &fw_dump_size, ((void*)0))) {
  wil_err(wil, "fail to get fw dump size\n");
  return;
 }

 fw_dump_data = vzalloc(fw_dump_size);
 if (!fw_dump_data)
  return;

 if (wil_fw_copy_crash_dump(wil, fw_dump_data, fw_dump_size)) {
  vfree(fw_dump_data);
  return;
 }



 dev_coredumpv(wil_to_dev(wil), fw_dump_data, fw_dump_size, GFP_KERNEL);
 wil_info(wil, "fw core dumped, size %d bytes\n", fw_dump_size);
}
