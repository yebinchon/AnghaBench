
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tp_err_stats {int ofld_no_neigh; int * tcp6_in_errs; int * ofld_vlan_drops; int * tnl_tx_drops; int * ofld_chan_drops; int * tnl_cong_drops; int * tcp_in_errs; int * hdr_in_errs; int * mac_in_errs; } ;
struct TYPE_3__ {int nchan; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;


 int TP_MIB_HDR_IN_ERR_0_A ;
 int TP_MIB_MAC_IN_ERR_0_A ;
 int TP_MIB_OFD_ARP_DROP_A ;
 int TP_MIB_OFD_CHN_DROP_0_A ;
 int TP_MIB_OFD_VLN_DROP_0_A ;
 int TP_MIB_TCP_IN_ERR_0_A ;
 int TP_MIB_TCP_V6IN_ERR_0_A ;
 int TP_MIB_TNL_CNG_DROP_0_A ;
 int TP_MIB_TNL_DROP_0_A ;
 int t4_tp_mib_read (struct adapter*,int *,int,int ,int) ;

void t4_tp_get_err_stats(struct adapter *adap, struct tp_err_stats *st,
    bool sleep_ok)
{
 int nchan = adap->params.arch.nchan;

 t4_tp_mib_read(adap, st->mac_in_errs, nchan, TP_MIB_MAC_IN_ERR_0_A,
         sleep_ok);
 t4_tp_mib_read(adap, st->hdr_in_errs, nchan, TP_MIB_HDR_IN_ERR_0_A,
         sleep_ok);
 t4_tp_mib_read(adap, st->tcp_in_errs, nchan, TP_MIB_TCP_IN_ERR_0_A,
         sleep_ok);
 t4_tp_mib_read(adap, st->tnl_cong_drops, nchan,
         TP_MIB_TNL_CNG_DROP_0_A, sleep_ok);
 t4_tp_mib_read(adap, st->ofld_chan_drops, nchan,
         TP_MIB_OFD_CHN_DROP_0_A, sleep_ok);
 t4_tp_mib_read(adap, st->tnl_tx_drops, nchan, TP_MIB_TNL_DROP_0_A,
         sleep_ok);
 t4_tp_mib_read(adap, st->ofld_vlan_drops, nchan,
         TP_MIB_OFD_VLN_DROP_0_A, sleep_ok);
 t4_tp_mib_read(adap, st->tcp6_in_errs, nchan,
         TP_MIB_TCP_V6IN_ERR_0_A, sleep_ok);
 t4_tp_mib_read(adap, &st->ofld_no_neigh, 2, TP_MIB_OFD_ARP_DROP_A,
         sleep_ok);
}
