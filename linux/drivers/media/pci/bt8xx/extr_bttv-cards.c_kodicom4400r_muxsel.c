
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nr; } ;
struct bttv {int* sw_status; TYPE_1__ c; } ;


 int kodicom4400r_write (struct bttv*,int,int,int) ;
 struct bttv** master ;

__attribute__((used)) static void kodicom4400r_muxsel(struct bttv *btv, unsigned int input)
{
 int xaddr, yaddr;
 struct bttv *mctlr;
 static unsigned char map[4] = {3, 0, 2, 1};

 mctlr = master[btv->c.nr];
 if (mctlr == ((void*)0)) {
  return;
 }
 yaddr = (btv->c.nr - mctlr->c.nr + 1) & 3;
 yaddr = map[yaddr];
 xaddr = input & 0xf;

 if (mctlr->sw_status[yaddr] != xaddr)
 {

  kodicom4400r_write(mctlr, mctlr->sw_status[yaddr], yaddr, 0);
  mctlr->sw_status[yaddr] = xaddr;
  kodicom4400r_write(mctlr, xaddr, yaddr, 1);
 }
}
