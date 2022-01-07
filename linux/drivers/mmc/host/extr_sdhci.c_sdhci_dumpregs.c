
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; } ;


 scalar_t__ SDHCI_ADMA_ADDRESS ;
 scalar_t__ SDHCI_ADMA_ADDRESS_HI ;
 scalar_t__ SDHCI_ADMA_ERROR ;
 scalar_t__ SDHCI_ARGUMENT ;
 int SDHCI_AUTO_CMD_STATUS ;
 int SDHCI_BLOCK_COUNT ;
 int SDHCI_BLOCK_GAP_CONTROL ;
 int SDHCI_BLOCK_SIZE ;
 scalar_t__ SDHCI_CAPABILITIES ;
 scalar_t__ SDHCI_CAPABILITIES_1 ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_COMMAND ;
 scalar_t__ SDHCI_DMA_ADDRESS ;
 int SDHCI_DUMP (char*,...) ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_HOST_VERSION ;
 scalar_t__ SDHCI_INT_ENABLE ;
 scalar_t__ SDHCI_INT_STATUS ;
 scalar_t__ SDHCI_MAX_CURRENT ;
 int SDHCI_POWER_CONTROL ;
 scalar_t__ SDHCI_PRESENT_STATE ;
 scalar_t__ SDHCI_RESPONSE ;
 scalar_t__ SDHCI_SIGNAL_ENABLE ;
 int SDHCI_SLOT_INT_STATUS ;
 int SDHCI_TIMEOUT_CONTROL ;
 int SDHCI_TRANSFER_MODE ;
 int SDHCI_USE_64_BIT_DMA ;
 int SDHCI_USE_ADMA ;
 int SDHCI_WAKE_UP_CONTROL ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_readl (struct sdhci_host*,scalar_t__) ;
 int sdhci_readw (struct sdhci_host*,int ) ;

void sdhci_dumpregs(struct sdhci_host *host)
{
 SDHCI_DUMP("============ SDHCI REGISTER DUMP ===========\n");

 SDHCI_DUMP("Sys addr:  0x%08x | Version:  0x%08x\n",
     sdhci_readl(host, SDHCI_DMA_ADDRESS),
     sdhci_readw(host, SDHCI_HOST_VERSION));
 SDHCI_DUMP("Blk size:  0x%08x | Blk cnt:  0x%08x\n",
     sdhci_readw(host, SDHCI_BLOCK_SIZE),
     sdhci_readw(host, SDHCI_BLOCK_COUNT));
 SDHCI_DUMP("Argument:  0x%08x | Trn mode: 0x%08x\n",
     sdhci_readl(host, SDHCI_ARGUMENT),
     sdhci_readw(host, SDHCI_TRANSFER_MODE));
 SDHCI_DUMP("Present:   0x%08x | Host ctl: 0x%08x\n",
     sdhci_readl(host, SDHCI_PRESENT_STATE),
     sdhci_readb(host, SDHCI_HOST_CONTROL));
 SDHCI_DUMP("Power:     0x%08x | Blk gap:  0x%08x\n",
     sdhci_readb(host, SDHCI_POWER_CONTROL),
     sdhci_readb(host, SDHCI_BLOCK_GAP_CONTROL));
 SDHCI_DUMP("Wake-up:   0x%08x | Clock:    0x%08x\n",
     sdhci_readb(host, SDHCI_WAKE_UP_CONTROL),
     sdhci_readw(host, SDHCI_CLOCK_CONTROL));
 SDHCI_DUMP("Timeout:   0x%08x | Int stat: 0x%08x\n",
     sdhci_readb(host, SDHCI_TIMEOUT_CONTROL),
     sdhci_readl(host, SDHCI_INT_STATUS));
 SDHCI_DUMP("Int enab:  0x%08x | Sig enab: 0x%08x\n",
     sdhci_readl(host, SDHCI_INT_ENABLE),
     sdhci_readl(host, SDHCI_SIGNAL_ENABLE));
 SDHCI_DUMP("ACmd stat: 0x%08x | Slot int: 0x%08x\n",
     sdhci_readw(host, SDHCI_AUTO_CMD_STATUS),
     sdhci_readw(host, SDHCI_SLOT_INT_STATUS));
 SDHCI_DUMP("Caps:      0x%08x | Caps_1:   0x%08x\n",
     sdhci_readl(host, SDHCI_CAPABILITIES),
     sdhci_readl(host, SDHCI_CAPABILITIES_1));
 SDHCI_DUMP("Cmd:       0x%08x | Max curr: 0x%08x\n",
     sdhci_readw(host, SDHCI_COMMAND),
     sdhci_readl(host, SDHCI_MAX_CURRENT));
 SDHCI_DUMP("Resp[0]:   0x%08x | Resp[1]:  0x%08x\n",
     sdhci_readl(host, SDHCI_RESPONSE),
     sdhci_readl(host, SDHCI_RESPONSE + 4));
 SDHCI_DUMP("Resp[2]:   0x%08x | Resp[3]:  0x%08x\n",
     sdhci_readl(host, SDHCI_RESPONSE + 8),
     sdhci_readl(host, SDHCI_RESPONSE + 12));
 SDHCI_DUMP("Host ctl2: 0x%08x\n",
     sdhci_readw(host, SDHCI_HOST_CONTROL2));

 if (host->flags & SDHCI_USE_ADMA) {
  if (host->flags & SDHCI_USE_64_BIT_DMA) {
   SDHCI_DUMP("ADMA Err:  0x%08x | ADMA Ptr: 0x%08x%08x\n",
       sdhci_readl(host, SDHCI_ADMA_ERROR),
       sdhci_readl(host, SDHCI_ADMA_ADDRESS_HI),
       sdhci_readl(host, SDHCI_ADMA_ADDRESS));
  } else {
   SDHCI_DUMP("ADMA Err:  0x%08x | ADMA Ptr: 0x%08x\n",
       sdhci_readl(host, SDHCI_ADMA_ERROR),
       sdhci_readl(host, SDHCI_ADMA_ADDRESS));
  }
 }

 SDHCI_DUMP("============================================\n");
}
