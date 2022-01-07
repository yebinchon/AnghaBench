
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;


 int EINVAL ;
 int wil_fw_error_recovery (struct wil6210_priv*) ;

__attribute__((used)) static int wil_platform_rop_fw_recovery(void *wil_handle)
{
 struct wil6210_priv *wil = wil_handle;

 if (!wil)
  return -EINVAL;

 wil_fw_error_recovery(wil);

 return 0;
}
