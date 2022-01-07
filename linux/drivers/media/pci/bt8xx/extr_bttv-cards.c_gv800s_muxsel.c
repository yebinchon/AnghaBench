
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nr; } ;
struct bttv {int* sw_status; TYPE_1__ c; } ;


 int gv800s_write (struct bttv*,int,int,int) ;
 struct bttv** master ;

__attribute__((used)) static void gv800s_muxsel(struct bttv *btv, unsigned int input)
{
 struct bttv *mctlr;
 int xaddr, yaddr;
 static unsigned int map[4][4] = { { 0x0, 0x4, 0xa, 0x6 },
       { 0x1, 0x5, 0xb, 0x7 },
       { 0x2, 0x8, 0xc, 0xe },
       { 0x3, 0x9, 0xd, 0xf } };
 input = input%4;
 mctlr = master[btv->c.nr];
 if (mctlr == ((void*)0)) {

  return;
 }
 yaddr = (btv->c.nr - mctlr->c.nr) & 3;
 xaddr = map[yaddr][input] & 0xf;


 if (mctlr->sw_status[yaddr] != xaddr) {

  gv800s_write(mctlr, mctlr->sw_status[yaddr], yaddr, 0);
  mctlr->sw_status[yaddr] = xaddr;
  gv800s_write(mctlr, xaddr, yaddr, 1);
 }
}
