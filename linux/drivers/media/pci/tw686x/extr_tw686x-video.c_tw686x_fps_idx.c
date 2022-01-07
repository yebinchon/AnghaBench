
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int tw686x_real_fps (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int tw686x_fps_idx(unsigned int fps, unsigned int max_fps)
{
 unsigned int idx, real_fps;
 int delta;


 idx = (12 + 15 * fps) / max_fps;


 if (!idx)
  return 1;


 real_fps = tw686x_real_fps(idx, max_fps);
 delta = real_fps - fps;
 if (delta < -1)
  idx++;
 else if (delta > 1)
  idx--;


 if (idx >= 15)
  return 0;

 return idx;
}
