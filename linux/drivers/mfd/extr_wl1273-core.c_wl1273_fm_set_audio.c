
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1273_core {scalar_t__ mode; unsigned int audio_mode; int i2s_mode; } ;


 int EPERM ;
 unsigned int WL1273_AUDIO_ANALOG ;
 unsigned int WL1273_AUDIO_DIGITAL ;
 int WL1273_AUDIO_ENABLE ;
 int WL1273_AUDIO_ENABLE_ANALOG ;
 int WL1273_AUDIO_ENABLE_I2S ;
 int WL1273_AUDIO_IO_SET ;
 int WL1273_AUDIO_IO_SET_ANALOG ;
 int WL1273_AUDIO_IO_SET_I2S ;
 int WL1273_I2S_MODE_CONFIG_SET ;
 scalar_t__ WL1273_MODE_OFF ;
 scalar_t__ WL1273_MODE_RX ;
 scalar_t__ WL1273_MODE_SUSPENDED ;
 scalar_t__ WL1273_MODE_TX ;
 int WL1273_PCM_DEF_MODE ;
 int WL1273_PCM_MODE_SET ;
 int wl1273_fm_write_cmd (struct wl1273_core*,int ,int ) ;

__attribute__((used)) static int wl1273_fm_set_audio(struct wl1273_core *core, unsigned int new_mode)
{
 int r = 0;

 if (core->mode == WL1273_MODE_OFF ||
     core->mode == WL1273_MODE_SUSPENDED)
  return -EPERM;

 if (core->mode == WL1273_MODE_RX && new_mode == WL1273_AUDIO_DIGITAL) {
  r = wl1273_fm_write_cmd(core, WL1273_PCM_MODE_SET,
     WL1273_PCM_DEF_MODE);
  if (r)
   goto out;

  r = wl1273_fm_write_cmd(core, WL1273_I2S_MODE_CONFIG_SET,
     core->i2s_mode);
  if (r)
   goto out;

  r = wl1273_fm_write_cmd(core, WL1273_AUDIO_ENABLE,
     WL1273_AUDIO_ENABLE_I2S);
  if (r)
   goto out;

 } else if (core->mode == WL1273_MODE_RX &&
     new_mode == WL1273_AUDIO_ANALOG) {
  r = wl1273_fm_write_cmd(core, WL1273_AUDIO_ENABLE,
     WL1273_AUDIO_ENABLE_ANALOG);
  if (r)
   goto out;

 } else if (core->mode == WL1273_MODE_TX &&
     new_mode == WL1273_AUDIO_DIGITAL) {
  r = wl1273_fm_write_cmd(core, WL1273_I2S_MODE_CONFIG_SET,
     core->i2s_mode);
  if (r)
   goto out;

  r = wl1273_fm_write_cmd(core, WL1273_AUDIO_IO_SET,
     WL1273_AUDIO_IO_SET_I2S);
  if (r)
   goto out;

 } else if (core->mode == WL1273_MODE_TX &&
     new_mode == WL1273_AUDIO_ANALOG) {
  r = wl1273_fm_write_cmd(core, WL1273_AUDIO_IO_SET,
     WL1273_AUDIO_IO_SET_ANALOG);
  if (r)
   goto out;
 }

 core->audio_mode = new_mode;
out:
 return r;
}
