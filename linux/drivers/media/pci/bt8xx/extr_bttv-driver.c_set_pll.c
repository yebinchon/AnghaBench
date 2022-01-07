
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pll_ofreq; int pll_current; scalar_t__ pll_ifreq; int pll_crystal; } ;
struct TYPE_3__ {int nr; } ;
struct bttv {TYPE_2__ pll; TYPE_1__ c; } ;


 int BT848_DSTATUS ;
 int BT848_DSTATUS_PLOCK ;
 int BT848_PLL_XCI ;
 int BT848_TGCTRL ;
 int btread (int ) ;
 scalar_t__ bttv_verbose ;
 int btwrite (int,int ) ;
 int dprintk (char*,int ) ;
 int msleep (int) ;
 int pr_info (char*,...) ;
 int set_pll_freq (struct bttv*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void set_pll(struct bttv *btv)
{
 int i;

 if (!btv->pll.pll_crystal)
  return;

 if (btv->pll.pll_ofreq == btv->pll.pll_current) {
  dprintk("%d: PLL: no change required\n", btv->c.nr);
  return;
 }

 if (btv->pll.pll_ifreq == btv->pll.pll_ofreq) {

  if (btv->pll.pll_current == 0)
   return;
  if (bttv_verbose)
   pr_info("%d: PLL can sleep, using XTAL (%d)\n",
    btv->c.nr, btv->pll.pll_ifreq);
  btwrite(0x00,BT848_TGCTRL);
  btwrite(0x00,BT848_PLL_XCI);
  btv->pll.pll_current = 0;
  return;
 }

 if (bttv_verbose)
  pr_info("%d: Setting PLL: %d => %d (needs up to 100ms)\n",
   btv->c.nr,
   btv->pll.pll_ifreq, btv->pll.pll_ofreq);
 set_pll_freq(btv, btv->pll.pll_ifreq, btv->pll.pll_ofreq);

 for (i=0; i<10; i++) {

  msleep(10);

  if (btread(BT848_DSTATUS) & BT848_DSTATUS_PLOCK) {
   btwrite(0,BT848_DSTATUS);
  } else {
   btwrite(0x08,BT848_TGCTRL);
   btv->pll.pll_current = btv->pll.pll_ofreq;
   if (bttv_verbose)
    pr_info("PLL set ok\n");
   return;
  }
 }
 btv->pll.pll_current = -1;
 if (bttv_verbose)
  pr_info("Setting PLL failed\n");
 return;
}
