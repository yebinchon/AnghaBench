
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int avg_lum; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static void set_lum(struct sd *sd,
      u8 *data)
{
 int avg_lum;





 avg_lum = (data[27] << 8) + data[28]

  + (data[31] << 8) + data[32]

  + (data[23] << 8) + data[24]

  + (data[35] << 8) + data[36]

  + (data[29] << 10) + (data[30] << 2);
 avg_lum >>= 10;
 atomic_set(&sd->avg_lum, avg_lum);
}
