
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct altera_state {int dummy; } ;


 int alt_jtag_io (int,int,int ) ;

__attribute__((used)) static int alt_jtag_drscan(struct altera_state *astate,
   int start_state,
   int count,
   u8 *tdi,
   u8 *tdo)
{
 int i = 0;
 int tdo_bit = 0;
 int status = 1;


 switch (start_state) {
 case 0:
  alt_jtag_io(1, 0, 0);
  alt_jtag_io(0, 0, 0);
  alt_jtag_io(0, 0, 0);
  break;

 case 1:
  alt_jtag_io(1, 0, 0);
  alt_jtag_io(1, 0, 0);
  alt_jtag_io(1, 0, 0);
  alt_jtag_io(0, 0, 0);
  alt_jtag_io(0, 0, 0);
  break;

 case 2:
  alt_jtag_io(1, 0, 0);
  alt_jtag_io(1, 0, 0);
  alt_jtag_io(1, 0, 0);
  alt_jtag_io(0, 0, 0);
  alt_jtag_io(0, 0, 0);
  break;

 default:
  status = 0;
 }

 if (status) {

  for (i = 0; i < count; i++) {
   tdo_bit = alt_jtag_io(
     (i == count - 1),
     tdi[i >> 3] & (1 << (i & 7)),
     (tdo != ((void*)0)));

   if (tdo != ((void*)0)) {
    if (tdo_bit)
     tdo[i >> 3] |= (1 << (i & 7));
    else
     tdo[i >> 3] &= ~(u32)(1 << (i & 7));

   }
  }

  alt_jtag_io(0, 0, 0);
 }

 return status;
}
