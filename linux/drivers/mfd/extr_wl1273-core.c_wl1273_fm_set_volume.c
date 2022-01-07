
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1273_core {unsigned int volume; } ;


 int EINVAL ;
 unsigned int WL1273_MAX_VOLUME ;
 int WL1273_VOLUME_SET ;
 int wl1273_fm_write_cmd (struct wl1273_core*,int ,unsigned int) ;

__attribute__((used)) static int wl1273_fm_set_volume(struct wl1273_core *core, unsigned int volume)
{
 int r;

 if (volume > WL1273_MAX_VOLUME)
  return -EINVAL;

 if (core->volume == volume)
  return 0;

 r = wl1273_fm_write_cmd(core, WL1273_VOLUME_SET, volume);
 if (r)
  return r;

 core->volume = volume;
 return 0;
}
