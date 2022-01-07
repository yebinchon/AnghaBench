
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct brcms_hardware {size_t unit; TYPE_1__* wlc; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
struct TYPE_4__ {int intstatus; } ;
struct TYPE_3__ {int wl; } ;


 int D11REGOFFS (int ) ;
 size_t I_DE ;
 size_t I_ERRORS ;
 size_t I_PC ;
 size_t I_PD ;
 size_t I_RO ;
 size_t I_RU ;
 size_t I_XU ;
 size_t NFIFO ;
 size_t bcma_read32 (struct bcma_device*,int ) ;
 int bcma_write32 (struct bcma_device*,int ,size_t) ;
 int brcms_dbg_int (struct bcma_device*,char*,size_t,size_t,size_t) ;
 int brcms_err (struct bcma_device*,char*,size_t,size_t) ;
 int brcms_fatal_error (int ) ;
 TYPE_2__* intctrlregs ;

__attribute__((used)) static void brcms_b_fifoerrors(struct brcms_hardware *wlc_hw)
{
 bool fatal = 0;
 uint unit;
 uint intstatus, idx;
 struct bcma_device *core = wlc_hw->d11core;

 unit = wlc_hw->unit;

 for (idx = 0; idx < NFIFO; idx++) {

  intstatus =
   bcma_read32(core,
        D11REGOFFS(intctrlregs[idx].intstatus)) &
   I_ERRORS;
  if (!intstatus)
   continue;

  brcms_dbg_int(core, "wl%d: intstatus%d 0x%x\n",
         unit, idx, intstatus);

  if (intstatus & I_RO) {
   brcms_err(core, "wl%d: fifo %d: receive fifo "
      "overflow\n", unit, idx);
   fatal = 1;
  }

  if (intstatus & I_PC) {
   brcms_err(core, "wl%d: fifo %d: descriptor error\n",
      unit, idx);
   fatal = 1;
  }

  if (intstatus & I_PD) {
   brcms_err(core, "wl%d: fifo %d: data error\n", unit,
      idx);
   fatal = 1;
  }

  if (intstatus & I_DE) {
   brcms_err(core, "wl%d: fifo %d: descriptor protocol "
      "error\n", unit, idx);
   fatal = 1;
  }

  if (intstatus & I_RU)
   brcms_err(core, "wl%d: fifo %d: receive descriptor "
      "underflow\n", idx, unit);

  if (intstatus & I_XU) {
   brcms_err(core, "wl%d: fifo %d: transmit fifo "
      "underflow\n", idx, unit);
   fatal = 1;
  }

  if (fatal) {
   brcms_fatal_error(wlc_hw->wlc->wl);
   break;
  } else
   bcma_write32(core,
         D11REGOFFS(intctrlregs[idx].intstatus),
         intstatus);
 }
}
