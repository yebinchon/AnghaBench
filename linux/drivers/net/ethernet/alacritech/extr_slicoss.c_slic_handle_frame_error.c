
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_stats {int dummy; } ;
struct slic_rx_info_oasis {int frame_status_b; int frame_status; } ;
struct slic_rx_info_mojave {int frame_status; } ;
struct slic_device {scalar_t__ model; struct slic_stats stats; } ;
struct sk_buff {scalar_t__ data; } ;


 int SLIC_INC_STATS_COUNTER (struct slic_stats*,int ) ;
 scalar_t__ SLIC_MODEL_OASIS ;
 int SLIC_VGBSTAT_LBOFLO ;
 int SLIC_VGBSTAT_LCODERR ;
 int SLIC_VGBSTAT_LCRCERR ;
 int SLIC_VGBSTAT_LDBLNBL ;
 int SLIC_VGBSTAT_LDEARLY ;
 int SLIC_VGBSTAT_LERRMSK ;
 int SLIC_VGBSTAT_LNKERR ;
 int SLIC_VGBSTAT_LOFLO ;
 int SLIC_VGBSTAT_LUFLO ;
 int SLIC_VGBSTAT_NCSERR ;
 int SLIC_VGBSTAT_NERRMSK ;
 int SLIC_VGBSTAT_NERRSHFT ;
 int SLIC_VGBSTAT_NETERR ;
 int SLIC_VGBSTAT_NHLEN ;
 int SLIC_VGBSTAT_NUFLOW ;
 int SLIC_VGBSTAT_XCSERR ;
 int SLIC_VGBSTAT_XERRSHFT ;
 int SLIC_VGBSTAT_XHLEN ;
 int SLIC_VGBSTAT_XPERR ;
 int SLIC_VGBSTAT_XUFLOW ;
 int SLIC_VRHSTATB_802UE ;
 int SLIC_VRHSTATB_BUFF ;
 int SLIC_VRHSTATB_CARRE ;
 int SLIC_VRHSTATB_CODE ;
 int SLIC_VRHSTATB_CRC ;
 int SLIC_VRHSTATB_DRBL ;
 int SLIC_VRHSTATB_IPCSUM ;
 int SLIC_VRHSTATB_IPHERR ;
 int SLIC_VRHSTATB_IPLERR ;
 int SLIC_VRHSTATB_RCVE ;
 int SLIC_VRHSTATB_TPCSUM ;
 int SLIC_VRHSTATB_TPHLEN ;
 int SLIC_VRHSTAT_802OE ;
 int SLIC_VRHSTAT_TPOFLO ;
 int le32_to_cpu (int ) ;
 int rx_buffoflow ;
 int rx_crc ;
 int rx_drbl ;
 int rx_early ;
 int rx_errors ;
 int rx_ipcsum ;
 int rx_iphlen ;
 int rx_iplen ;
 int rx_lcode ;
 int rx_oflow802 ;
 int rx_tpcsum ;
 int rx_tphlen ;
 int rx_tpoflow ;
 int rx_uflow802 ;
 int tx_carrier ;

__attribute__((used)) static void slic_handle_frame_error(struct slic_device *sdev,
        struct sk_buff *skb)
{
 struct slic_stats *stats = &sdev->stats;

 if (sdev->model == SLIC_MODEL_OASIS) {
  struct slic_rx_info_oasis *info;
  u32 status_b;
  u32 status;

  info = (struct slic_rx_info_oasis *)skb->data;
  status = le32_to_cpu(info->frame_status);
  status_b = le32_to_cpu(info->frame_status_b);

  if (status_b & SLIC_VRHSTATB_TPCSUM)
   SLIC_INC_STATS_COUNTER(stats, rx_tpcsum);
  if (status & SLIC_VRHSTAT_TPOFLO)
   SLIC_INC_STATS_COUNTER(stats, rx_tpoflow);
  if (status_b & SLIC_VRHSTATB_TPHLEN)
   SLIC_INC_STATS_COUNTER(stats, rx_tphlen);

  if (status_b & SLIC_VRHSTATB_IPCSUM)
   SLIC_INC_STATS_COUNTER(stats, rx_ipcsum);
  if (status_b & SLIC_VRHSTATB_IPLERR)
   SLIC_INC_STATS_COUNTER(stats, rx_iplen);
  if (status_b & SLIC_VRHSTATB_IPHERR)
   SLIC_INC_STATS_COUNTER(stats, rx_iphlen);

  if (status_b & SLIC_VRHSTATB_RCVE)
   SLIC_INC_STATS_COUNTER(stats, rx_early);
  if (status_b & SLIC_VRHSTATB_BUFF)
   SLIC_INC_STATS_COUNTER(stats, rx_buffoflow);
  if (status_b & SLIC_VRHSTATB_CODE)
   SLIC_INC_STATS_COUNTER(stats, rx_lcode);
  if (status_b & SLIC_VRHSTATB_DRBL)
   SLIC_INC_STATS_COUNTER(stats, rx_drbl);
  if (status_b & SLIC_VRHSTATB_CRC)
   SLIC_INC_STATS_COUNTER(stats, rx_crc);
  if (status & SLIC_VRHSTAT_802OE)
   SLIC_INC_STATS_COUNTER(stats, rx_oflow802);
  if (status_b & SLIC_VRHSTATB_802UE)
   SLIC_INC_STATS_COUNTER(stats, rx_uflow802);
  if (status_b & SLIC_VRHSTATB_CARRE)
   SLIC_INC_STATS_COUNTER(stats, tx_carrier);
 } else {
  struct slic_rx_info_mojave *info;
  u32 status;

  info = (struct slic_rx_info_mojave *)skb->data;
  status = le32_to_cpu(info->frame_status);

  if (status & SLIC_VGBSTAT_XPERR) {
   u32 xerr = status >> SLIC_VGBSTAT_XERRSHFT;

   if (xerr == SLIC_VGBSTAT_XCSERR)
    SLIC_INC_STATS_COUNTER(stats, rx_tpcsum);
   if (xerr == SLIC_VGBSTAT_XUFLOW)
    SLIC_INC_STATS_COUNTER(stats, rx_tpoflow);
   if (xerr == SLIC_VGBSTAT_XHLEN)
    SLIC_INC_STATS_COUNTER(stats, rx_tphlen);
  }

  if (status & SLIC_VGBSTAT_NETERR) {
   u32 nerr = status >> SLIC_VGBSTAT_NERRSHFT &
       SLIC_VGBSTAT_NERRMSK;

   if (nerr == SLIC_VGBSTAT_NCSERR)
    SLIC_INC_STATS_COUNTER(stats, rx_ipcsum);
   if (nerr == SLIC_VGBSTAT_NUFLOW)
    SLIC_INC_STATS_COUNTER(stats, rx_iplen);
   if (nerr == SLIC_VGBSTAT_NHLEN)
    SLIC_INC_STATS_COUNTER(stats, rx_iphlen);
  }

  if (status & SLIC_VGBSTAT_LNKERR) {
   u32 lerr = status & SLIC_VGBSTAT_LERRMSK;

   if (lerr == SLIC_VGBSTAT_LDEARLY)
    SLIC_INC_STATS_COUNTER(stats, rx_early);
   if (lerr == SLIC_VGBSTAT_LBOFLO)
    SLIC_INC_STATS_COUNTER(stats, rx_buffoflow);
   if (lerr == SLIC_VGBSTAT_LCODERR)
    SLIC_INC_STATS_COUNTER(stats, rx_lcode);
   if (lerr == SLIC_VGBSTAT_LDBLNBL)
    SLIC_INC_STATS_COUNTER(stats, rx_drbl);
   if (lerr == SLIC_VGBSTAT_LCRCERR)
    SLIC_INC_STATS_COUNTER(stats, rx_crc);
   if (lerr == SLIC_VGBSTAT_LOFLO)
    SLIC_INC_STATS_COUNTER(stats, rx_oflow802);
   if (lerr == SLIC_VGBSTAT_LUFLO)
    SLIC_INC_STATS_COUNTER(stats, rx_uflow802);
  }
 }
 SLIC_INC_STATS_COUNTER(stats, rx_errors);
}
