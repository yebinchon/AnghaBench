
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int pfc_rfa; int* rx_rfa; int* rx_rfd; scalar_t__* pfcq; } ;


 unsigned int XGMAC_FLOW_CONTROL_ALIGN (int ) ;
 unsigned int XGMAC_FLOW_CONTROL_MAX ;
 unsigned int XGMAC_FLOW_CONTROL_UNIT ;
 void* XGMAC_FLOW_CONTROL_VALUE (unsigned int) ;
 int xgbe_get_max_frame (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_queue_flow_control_threshold(struct xgbe_prv_data *pdata,
           unsigned int queue,
           unsigned int q_fifo_size)
{
 unsigned int frame_fifo_size;
 unsigned int rfa, rfd;

 frame_fifo_size = XGMAC_FLOW_CONTROL_ALIGN(xgbe_get_max_frame(pdata));

 if (pdata->pfcq[queue] && (q_fifo_size > pdata->pfc_rfa)) {

  rfa = pdata->pfc_rfa;
  rfd = rfa + frame_fifo_size;
  if (rfd > XGMAC_FLOW_CONTROL_MAX)
   rfd = XGMAC_FLOW_CONTROL_MAX;
  if (rfa >= XGMAC_FLOW_CONTROL_MAX)
   rfa = XGMAC_FLOW_CONTROL_MAX - XGMAC_FLOW_CONTROL_UNIT;
 } else {





  if (q_fifo_size <= 2048) {

   pdata->rx_rfa[queue] = 0;
   pdata->rx_rfd[queue] = 0;
   return;
  }

  if (q_fifo_size <= 4096) {

   pdata->rx_rfa[queue] = 0;
   pdata->rx_rfd[queue] = 1;
   return;
  }

  if (q_fifo_size <= frame_fifo_size) {

   pdata->rx_rfa[queue] = 2;
   pdata->rx_rfd[queue] = 5;
   return;
  }

  if (q_fifo_size <= (frame_fifo_size * 3)) {




   rfa = q_fifo_size - frame_fifo_size;
   rfd = rfa + (frame_fifo_size / 2);
  } else {



   rfa = frame_fifo_size * 2;
   rfa += XGMAC_FLOW_CONTROL_UNIT;
   rfd = rfa + frame_fifo_size;
  }
 }

 pdata->rx_rfa[queue] = XGMAC_FLOW_CONTROL_VALUE(rfa);
 pdata->rx_rfd[queue] = XGMAC_FLOW_CONTROL_VALUE(rfd);
}
