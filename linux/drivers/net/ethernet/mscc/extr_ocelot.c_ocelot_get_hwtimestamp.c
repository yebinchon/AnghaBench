
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct ocelot {int ptp_clock_lock; } ;


 int PTP_PIN_ACTION_SAVE ;
 int PTP_PIN_CFG ;
 int PTP_PIN_CFG_ACTION (int ) ;
 int PTP_PIN_CFG_ACTION_MASK ;
 int PTP_PIN_CFG_DOM ;
 int PTP_PIN_CFG_SYNC ;
 int PTP_PIN_TOD_SEC_LSB ;
 int SYS_PTP_TXSTAMP ;
 int SYS_PTP_TXSTAMP_PTP_TXSTAMP (int) ;
 int SYS_PTP_TXSTAMP_PTP_TXSTAMP_SEC ;
 int TOD_ACC_PIN ;
 int ocelot_read (struct ocelot*,int ) ;
 void* ocelot_read_rix (struct ocelot*,int ,int ) ;
 int ocelot_write_rix (struct ocelot*,int,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ocelot_get_hwtimestamp(struct ocelot *ocelot, struct timespec64 *ts)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&ocelot->ptp_clock_lock, flags);


 val = ocelot_read_rix(ocelot, PTP_PIN_CFG, TOD_ACC_PIN);

 val &= ~(PTP_PIN_CFG_SYNC | PTP_PIN_CFG_ACTION_MASK | PTP_PIN_CFG_DOM);
 val |= PTP_PIN_CFG_ACTION(PTP_PIN_ACTION_SAVE);
 ocelot_write_rix(ocelot, val, PTP_PIN_CFG, TOD_ACC_PIN);
 ts->tv_sec = ocelot_read_rix(ocelot, PTP_PIN_TOD_SEC_LSB, TOD_ACC_PIN);


 val = ocelot_read(ocelot, SYS_PTP_TXSTAMP);
 ts->tv_nsec = SYS_PTP_TXSTAMP_PTP_TXSTAMP(val);


 if ((ts->tv_sec & 0x1) != !!(val & SYS_PTP_TXSTAMP_PTP_TXSTAMP_SEC))
  ts->tv_sec--;

 spin_unlock_irqrestore(&ocelot->ptp_clock_lock, flags);
}
