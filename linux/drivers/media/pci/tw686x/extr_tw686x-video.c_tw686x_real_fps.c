
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned long*) ;
 unsigned long GENMASK (unsigned int,int ) ;
 unsigned long* fps_map ;
 unsigned int hweight_long (unsigned long) ;

__attribute__((used)) static unsigned int tw686x_real_fps(unsigned int index, unsigned int max_fps)
{
 unsigned long mask;

 if (!index || index >= ARRAY_SIZE(fps_map))
  return max_fps;

 mask = GENMASK(max_fps - 1, 0);
 return hweight_long(fps_map[index] & mask);
}
