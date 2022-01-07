
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_filter; } ;
struct ocelot {TYPE_1__ hwtstamp_config; int ptp_clock; int dev; int ptp_info; } ;


 int ANA_TABLES_PTP_ID_HIGH ;
 int ANA_TABLES_PTP_ID_LOW ;
 int HWTSTAMP_FILTER_PTP_V2_EVENT ;
 scalar_t__ IS_ERR (int ) ;
 int PTP_CFG_MISC ;
 int PTP_CFG_MISC_PTP_EN ;
 int PTR_ERR (int ) ;
 int SYS_PTP_CFG ;
 int SYS_PTP_CFG_PTP_STAMP_WID (int) ;
 int ocelot_ptp_clock_info ;
 int ocelot_write (struct ocelot*,int,int ) ;
 int ptp_clock_register (int *,int ) ;

__attribute__((used)) static int ocelot_init_timestamp(struct ocelot *ocelot)
{
 ocelot->ptp_info = ocelot_ptp_clock_info;
 ocelot->ptp_clock = ptp_clock_register(&ocelot->ptp_info, ocelot->dev);
 if (IS_ERR(ocelot->ptp_clock))
  return PTR_ERR(ocelot->ptp_clock);

 if (!ocelot->ptp_clock)
  return 0;

 ocelot_write(ocelot, SYS_PTP_CFG_PTP_STAMP_WID(30), SYS_PTP_CFG);
 ocelot_write(ocelot, 0xffffffff, ANA_TABLES_PTP_ID_LOW);
 ocelot_write(ocelot, 0xffffffff, ANA_TABLES_PTP_ID_HIGH);

 ocelot_write(ocelot, PTP_CFG_MISC_PTP_EN, PTP_CFG_MISC);




 ocelot->hwtstamp_config.rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;

 return 0;
}
