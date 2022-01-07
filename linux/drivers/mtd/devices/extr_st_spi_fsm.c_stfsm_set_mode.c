
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stfsm {scalar_t__ base; } ;


 int EBUSY ;
 scalar_t__ SPI_MODESELECT ;
 scalar_t__ SPI_STA_MODE_CHANGE ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int stfsm_set_mode(struct stfsm *fsm, uint32_t mode)
{
 int ret, timeout = 10;


 while (--timeout) {
  ret = readl(fsm->base + SPI_STA_MODE_CHANGE);
  if (ret & 0x1)
   break;
  udelay(1);
 }

 if (!timeout)
  return -EBUSY;

 writel(mode, fsm->base + SPI_MODESELECT);

 return 0;
}
