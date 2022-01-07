
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u16 ;
struct brcms_hardware {int unit; int** txavail; TYPE_1__* band; int ** di; int d11core; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;
typedef int name ;
struct TYPE_2__ {int mhfs; } ;


 int BRCMS_HWRXOFF ;
 int DMA_RX ;
 int DMA_TX ;
 int NFIFO ;
 int NRXBUFPOST ;
 int NRXD ;
 int NTXD ;
 int RXBUFSZ ;
 int brcms_c_mhfdef (struct brcms_c_info*,int ,int ) ;
 int brcms_err (int ,char*,int) ;
 void* dma_attach (char*,struct brcms_c_info*,int ,int ,int ,int ,int ,int,int ,int ) ;
 scalar_t__ dma_getvar (int *,char*) ;
 int dmareg (int ,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static bool brcms_b_attach_dmapio(struct brcms_c_info *wlc, uint j, bool wme)
{
 uint i;
 char name[8];



 u16 pio_mhf2 = 0;
 struct brcms_hardware *wlc_hw = wlc->hw;
 uint unit = wlc_hw->unit;


 snprintf(name, sizeof(name), "wl%d", unit);

 if (wlc_hw->di[0] == ((void*)0)) {
  int dma_attach_err = 0;






  wlc_hw->di[0] = dma_attach(name, wlc,
        (wme ? dmareg(DMA_TX, 0) : 0),
        dmareg(DMA_RX, 0),
        (wme ? NTXD : 0), NRXD,
        RXBUFSZ, -1, NRXBUFPOST,
        BRCMS_HWRXOFF);
  dma_attach_err |= (((void*)0) == wlc_hw->di[0]);







  wlc_hw->di[1] = dma_attach(name, wlc,
        dmareg(DMA_TX, 1), 0,
        NTXD, 0, 0, -1, 0, 0);
  dma_attach_err |= (((void*)0) == wlc_hw->di[1]);






  wlc_hw->di[2] = dma_attach(name, wlc,
        dmareg(DMA_TX, 2), 0,
        NTXD, 0, 0, -1, 0, 0);
  dma_attach_err |= (((void*)0) == wlc_hw->di[2]);





  wlc_hw->di[3] = dma_attach(name, wlc,
        dmareg(DMA_TX, 3),
        0, NTXD, 0, 0, -1,
        0, 0);
  dma_attach_err |= (((void*)0) == wlc_hw->di[3]);


  if (dma_attach_err) {
   brcms_err(wlc_hw->d11core,
      "wl%d: wlc_attach: dma_attach failed\n",
      unit);
   return 0;
  }


  for (i = 0; i < NFIFO; i++)
   if (wlc_hw->di[i])
    wlc_hw->txavail[i] =
        (uint *) dma_getvar(wlc_hw->di[i],
       "&txavail");
 }


 brcms_c_mhfdef(wlc, wlc_hw->band->mhfs, pio_mhf2);

 return 1;
}
