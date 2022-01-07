
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1273_device {int spacing; struct wl1273_core* core; } ;
struct wl1273_core {int (* write ) (struct wl1273_core*,int ,int ) ;} ;


 int WL1273_SCAN_SPACING_SET ;
 int WL1273_SPACING_100kHz ;
 int WL1273_SPACING_200kHz ;
 int WL1273_SPACING_50kHz ;
 int stub1 (struct wl1273_core*,int ,int ) ;
 int stub2 (struct wl1273_core*,int ,int ) ;
 int stub3 (struct wl1273_core*,int ,int ) ;
 int stub4 (struct wl1273_core*,int ,int ) ;

__attribute__((used)) static int wl1273_fm_tx_set_spacing(struct wl1273_device *radio,
        unsigned int spacing)
{
 struct wl1273_core *core = radio->core;
 int r;

 if (spacing == 0) {
  r = core->write(core, WL1273_SCAN_SPACING_SET,
    WL1273_SPACING_100kHz);
  radio->spacing = 100;
 } else if (spacing - 50000 < 25000) {
  r = core->write(core, WL1273_SCAN_SPACING_SET,
    WL1273_SPACING_50kHz);
  radio->spacing = 50;
 } else if (spacing - 100000 < 50000) {
  r = core->write(core, WL1273_SCAN_SPACING_SET,
    WL1273_SPACING_100kHz);
  radio->spacing = 100;
 } else {
  r = core->write(core, WL1273_SCAN_SPACING_SET,
    WL1273_SPACING_200kHz);
  radio->spacing = 200;
 }

 return r;
}
