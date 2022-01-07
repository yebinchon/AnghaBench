
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int int32_t ;


 int interpolate (int,int,int,int,int) ;

__attribute__((used)) static int ar9003_hw_power_interpolate(int32_t x,
           int32_t *px, int32_t *py, u_int16_t np)
{
 int ip = 0;
 int lx = 0, ly = 0, lhave = 0;
 int hx = 0, hy = 0, hhave = 0;
 int dx = 0;
 int y = 0;

 lhave = 0;
 hhave = 0;


 for (ip = 0; ip < np; ip++) {
  dx = x - px[ip];


  if (dx <= 0) {
   if (!hhave || dx > (x - hx)) {

    hx = px[ip];
    hy = py[ip];
    hhave = 1;
   }
  }

  if (dx >= 0) {
   if (!lhave || dx < (x - lx)) {

    lx = px[ip];
    ly = py[ip];
    lhave = 1;
   }
  }
 }


 if (lhave) {

  if (hhave) {

   if (hx == lx)
    y = ly;
   else
    y = interpolate(x, lx, hx, ly, hy);
  } else
   y = ly;
 } else if (hhave)
  y = hy;
 else
  y = -(1 << 30);
 return y;
}
