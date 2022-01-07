
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {unsigned int sensor_framerate; unsigned int fps_scale; } ;



__attribute__((used)) static int vti_bitlen(struct go7007 *go)
{
 unsigned int i, max_time_incr = go->sensor_framerate / go->fps_scale;

 for (i = 31; (max_time_incr & ((1 << i) - 1)) == max_time_incr; --i)
  ;
 return i + 1;
}
