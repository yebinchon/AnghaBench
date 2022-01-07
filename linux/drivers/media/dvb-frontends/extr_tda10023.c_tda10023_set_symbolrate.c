
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct tda10023_state {int sysclk; } ;
typedef int s32 ;
typedef int s16 ;


 int do_div (int,int) ;
 int dprintk (char*,int,int,int,int) ;
 int tda10023_writebit (struct tda10023_state*,int,int,int) ;
 int tda10023_writereg (struct tda10023_state*,int,int) ;

__attribute__((used)) static int tda10023_set_symbolrate (struct tda10023_state* state, u32 sr)
{
 s32 BDR;
 s32 BDRI;
 s16 SFIL=0;
 u16 NDEC = 0;



 u32 sysclk_x_10 = state->sysclk * 10;

 if (sr < (u32)(sysclk_x_10/984)) {
  NDEC=3;
  SFIL=1;
 } else if (sr < (u32)(sysclk_x_10/640)) {
  NDEC=3;
  SFIL=0;
 } else if (sr < (u32)(sysclk_x_10/492)) {
  NDEC=2;
  SFIL=1;
 } else if (sr < (u32)(sysclk_x_10/320)) {
  NDEC=2;
  SFIL=0;
 } else if (sr < (u32)(sysclk_x_10/246)) {
  NDEC=1;
  SFIL=1;
 } else if (sr < (u32)(sysclk_x_10/160)) {
  NDEC=1;
  SFIL=0;
 } else if (sr < (u32)(sysclk_x_10/123)) {
  NDEC=0;
  SFIL=1;
 }

 BDRI = (state->sysclk)*16;
 BDRI>>=NDEC;
 BDRI +=sr/2;
 BDRI /=sr;

 if (BDRI>255)
  BDRI=255;

 {
  u64 BDRX;

  BDRX=1<<(24+NDEC);
  BDRX*=sr;
  do_div(BDRX, state->sysclk);

  BDR=(s32)BDRX;
 }
 dprintk("Symbolrate %i, BDR %i BDRI %i, NDEC %i\n",
  sr, BDR, BDRI, NDEC);
 tda10023_writebit (state, 0x03, 0xc0, NDEC<<6);
 tda10023_writereg (state, 0x0a, BDR&255);
 tda10023_writereg (state, 0x0b, (BDR>>8)&255);
 tda10023_writereg (state, 0x0c, (BDR>>16)&31);
 tda10023_writereg (state, 0x0d, BDRI);
 tda10023_writereg (state, 0x3d, (SFIL<<7));
 return 0;
}
