
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* uninit ) (int ) ;} ;
struct wil6210_priv {TYPE_1__ platform_ops; int platform_handle; } ;


 int memset (TYPE_1__*,int ,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void wil_platform_ops_uninit(struct wil6210_priv *wil)
{
 if (wil->platform_ops.uninit)
  wil->platform_ops.uninit(wil->platform_handle);
 memset(&wil->platform_ops, 0, sizeof(wil->platform_ops));
}
