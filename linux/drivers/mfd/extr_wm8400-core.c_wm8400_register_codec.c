
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400 {int dev; } ;
struct mfd_cell {char* name; int pdata_size; struct wm8400* platform_data; } ;


 int devm_mfd_add_devices (int ,int,struct mfd_cell const*,int,int *,int ,int *) ;

__attribute__((used)) static int wm8400_register_codec(struct wm8400 *wm8400)
{
 const struct mfd_cell cell = {
  .name = "wm8400-codec",
  .platform_data = wm8400,
  .pdata_size = sizeof(*wm8400),
 };

 return devm_mfd_add_devices(wm8400->dev, -1, &cell, 1, ((void*)0), 0, ((void*)0));
}
