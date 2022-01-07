
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_opt {int rx_thresh; int DMA_length; int numrx; int numtx; int flow_cntl; int wol_opts; int spd_dpx; int flags; } ;


 int DMA_LENGTH_DEF ;
 int DMA_LENGTH_MAX ;
 int DMA_LENGTH_MIN ;
 int * DMA_length ;
 int FLOW_CNTL_DEF ;
 int FLOW_CNTL_MAX ;
 int FLOW_CNTL_MIN ;
 int IP_ALIG_DEF ;
 int * IP_byte_align ;
 int MED_LNK_DEF ;
 int MED_LNK_MAX ;
 int MED_LNK_MIN ;
 int RX_DESC_DEF ;
 int RX_DESC_MAX ;
 int RX_DESC_MIN ;
 int RX_THRESH_DEF ;
 int RX_THRESH_MAX ;
 int RX_THRESH_MIN ;
 int * RxDescriptors ;
 int TX_DESC_DEF ;
 int TX_DESC_MAX ;
 int TX_DESC_MIN ;
 int * TxDescriptors ;
 int VELOCITY_FLAGS_IP_ALIGN ;
 int WOL_OPT_DEF ;
 int WOL_OPT_MAX ;
 int WOL_OPT_MIN ;
 int * flow_control ;
 int * rx_thresh ;
 int * speed_duplex ;
 int velocity_set_bool_opt (int *,int ,int ,int ,char*,char const*) ;
 int velocity_set_int_opt (int*,int ,int ,int ,int ,char*,char const*) ;
 int * wol_opts ;

__attribute__((used)) static void velocity_get_options(struct velocity_opt *opts, int index,
     const char *devname)
{

 velocity_set_int_opt(&opts->rx_thresh, rx_thresh[index], RX_THRESH_MIN, RX_THRESH_MAX, RX_THRESH_DEF, "rx_thresh", devname);
 velocity_set_int_opt(&opts->DMA_length, DMA_length[index], DMA_LENGTH_MIN, DMA_LENGTH_MAX, DMA_LENGTH_DEF, "DMA_length", devname);
 velocity_set_int_opt(&opts->numrx, RxDescriptors[index], RX_DESC_MIN, RX_DESC_MAX, RX_DESC_DEF, "RxDescriptors", devname);
 velocity_set_int_opt(&opts->numtx, TxDescriptors[index], TX_DESC_MIN, TX_DESC_MAX, TX_DESC_DEF, "TxDescriptors", devname);

 velocity_set_int_opt(&opts->flow_cntl, flow_control[index], FLOW_CNTL_MIN, FLOW_CNTL_MAX, FLOW_CNTL_DEF, "flow_control", devname);
 velocity_set_bool_opt(&opts->flags, IP_byte_align[index], IP_ALIG_DEF, VELOCITY_FLAGS_IP_ALIGN, "IP_byte_align", devname);
 velocity_set_int_opt((int *) &opts->spd_dpx, speed_duplex[index], MED_LNK_MIN, MED_LNK_MAX, MED_LNK_DEF, "Media link mode", devname);
 velocity_set_int_opt(&opts->wol_opts, wol_opts[index], WOL_OPT_MIN, WOL_OPT_MAX, WOL_OPT_DEF, "Wake On Lan options", devname);
 opts->numrx = (opts->numrx & ~3);
}
