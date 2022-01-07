
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_9__ {int tx_descr; int tx_len; TYPE_3__* tx_p; } ;
struct TYPE_10__ {TYPE_4__ hwm; } ;
struct TYPE_6__ {TYPE_3__** tx; } ;
struct TYPE_7__ {int mac_ring_is_up; TYPE_1__ fp; } ;
struct s_smc {TYPE_5__ os; TYPE_2__ hw; } ;
struct TYPE_8__ {int tx_free; } ;


 int DB_TX (int,char*,...) ;
 int FC_ASYNC_LLC ;
 int FC_LLC_PRIOR ;




 int FC_SYNC_BIT ;
 int HWM_E0010 ;
 int HWM_E0010_MSG ;
 int LAN_TX ;
 int LOC_TX ;
 int NDD_TRACE (char*,int,int,int) ;
 int OUT_OF_TXD ;
 int QUEUE_A0 ;
 int RING_DOWN ;
 int SMT_PANIC (struct s_smc*,int ,int ) ;
 int TX_DESCRIPTOR ;
 int mac_drv_clear_txd (struct s_smc*) ;

int hwm_tx_init(struct s_smc *smc, u_char fc, int frag_count, int frame_len,
  int frame_status)
{
 NDD_TRACE("THiB",fc,frag_count,frame_len) ;
 smc->os.hwm.tx_p = smc->hw.fp.tx[frame_status & QUEUE_A0] ;
 smc->os.hwm.tx_descr = TX_DESCRIPTOR | (((u_long)(frame_len-1)&3)<<27) ;
 smc->os.hwm.tx_len = frame_len ;
 DB_TX(3, "hwm_tx_init: fc = %x, len = %d", fc, frame_len);
 if ((fc & ~(FC_SYNC_BIT|FC_LLC_PRIOR)) == FC_ASYNC_LLC) {
  frame_status |= LAN_TX ;
 }
 else {
  switch (fc) {
  case 131 :
  case 128 :
   frame_status |= LAN_TX ;
   break ;
  case 129 :
   frame_status |= LOC_TX ;
   break ;
  case 130 :
   frame_status |= LAN_TX | LOC_TX ;
   break ;
  default :
   SMT_PANIC(smc,HWM_E0010,HWM_E0010_MSG) ;
  }
 }
 if (!smc->hw.mac_ring_is_up) {
  frame_status &= ~LAN_TX ;
  frame_status |= RING_DOWN ;
  DB_TX(2, "Ring is down: terminate LAN_TX");
 }
 if (frag_count > smc->os.hwm.tx_p->tx_free) {

  mac_drv_clear_txd(smc) ;
  if (frag_count > smc->os.hwm.tx_p->tx_free) {
   DB_TX(2, "Out of TxDs, terminate LAN_TX");
   frame_status &= ~LAN_TX ;
   frame_status |= OUT_OF_TXD ;
  }





 }
 DB_TX(3, "frame_status = %x", frame_status);
 NDD_TRACE("THiE",frame_status,smc->os.hwm.tx_p->tx_free,0) ;
 return frame_status;
}
