
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stfsm {scalar_t__ base; } ;


 int SEQ_CFG_SWRESET ;
 int SPI_CFG_DEFAULT_CS_SETUPHOLD ;
 int SPI_CFG_DEFAULT_DATA_HOLD ;
 int SPI_CFG_DEFAULT_MIN_CS_HIGH ;
 int SPI_CFG_DEVICE_ST ;
 scalar_t__ SPI_CONFIGDATA ;
 scalar_t__ SPI_FAST_SEQ_CFG ;
 int SPI_MODESELECT_FSM ;
 scalar_t__ SPI_PROGRAM_ERASE_TIME ;
 scalar_t__ SPI_STATUS_WR_TIME_REG ;
 int STFSM_DEFAULT_WR_TIME ;
 int STFSM_FLASH_SAFE_FREQ ;
 int stfsm_clear_fifo (struct stfsm*) ;
 int stfsm_set_freq (struct stfsm*,int ) ;
 int stfsm_set_mode (struct stfsm*,int ) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int stfsm_init(struct stfsm *fsm)
{
 int ret;


 writel(SEQ_CFG_SWRESET, fsm->base + SPI_FAST_SEQ_CFG);
 udelay(1);
 writel(0, fsm->base + SPI_FAST_SEQ_CFG);


 stfsm_set_freq(fsm, STFSM_FLASH_SAFE_FREQ);


 ret = stfsm_set_mode(fsm, SPI_MODESELECT_FSM);
 if (ret)
  return ret;


 writel(SPI_CFG_DEVICE_ST |
        SPI_CFG_DEFAULT_MIN_CS_HIGH |
        SPI_CFG_DEFAULT_CS_SETUPHOLD |
        SPI_CFG_DEFAULT_DATA_HOLD,
        fsm->base + SPI_CONFIGDATA);
 writel(STFSM_DEFAULT_WR_TIME, fsm->base + SPI_STATUS_WR_TIME_REG);






 writel(0x00000001, fsm->base + SPI_PROGRAM_ERASE_TIME);


 stfsm_clear_fifo(fsm);

 return 0;
}
