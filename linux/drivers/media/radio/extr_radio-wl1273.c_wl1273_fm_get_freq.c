
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1273_device {scalar_t__ band; int dev; struct wl1273_core* core; } ;
struct wl1273_core {scalar_t__ mode; int (* read ) (struct wl1273_core*,int ,int*) ;} ;


 scalar_t__ WL1273_BAND_JAPAN ;
 int WL1273_BAND_JAPAN_LOW ;
 int WL1273_BAND_OTHER_LOW ;
 int WL1273_CHANL_SET ;
 int WL1273_FREQ_SET ;
 scalar_t__ WL1273_MODE_RX ;
 int dev_dbg (int ,char*,int) ;
 int stub1 (struct wl1273_core*,int ,int*) ;
 int stub2 (struct wl1273_core*,int ,int*) ;

__attribute__((used)) static int wl1273_fm_get_freq(struct wl1273_device *radio)
{
 struct wl1273_core *core = radio->core;
 unsigned int freq;
 u16 f;
 int r;

 if (core->mode == WL1273_MODE_RX) {
  r = core->read(core, WL1273_FREQ_SET, &f);
  if (r)
   return r;

  dev_dbg(radio->dev, "Freq get: 0x%04x\n", f);
  if (radio->band == WL1273_BAND_JAPAN)
   freq = WL1273_BAND_JAPAN_LOW + 50 * f;
  else
   freq = WL1273_BAND_OTHER_LOW + 50 * f;
 } else {
  r = core->read(core, WL1273_CHANL_SET, &f);
  if (r)
   return r;

  freq = f * 10;
 }

 return freq;
}
