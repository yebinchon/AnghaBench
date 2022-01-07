
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_7__ {int updated; scalar_t__ noise; scalar_t__ level; scalar_t__ qual; } ;
struct TYPE_5__ {int fragment; int retries; scalar_t__ misc; int code; } ;
struct iw_statistics {TYPE_3__ qual; TYPE_1__ discard; scalar_t__ status; } ;
struct hostap_interface {scalar_t__ type; TYPE_4__* local; } ;
struct TYPE_6__ {int rx_message_in_bad_msg_fragments; int tx_retry_limit_exceeded; scalar_t__ tx_discards_wrong_sa; scalar_t__ rx_discards_no_buffer; scalar_t__ rx_fcs_errors; int rx_discards_wep_undecryptable; } ;
struct TYPE_8__ {scalar_t__ iw_mode; scalar_t__ avg_noise; scalar_t__ avg_signal; scalar_t__ comms_qual; TYPE_2__ comm_tallies; struct iw_statistics wstats; } ;
typedef TYPE_4__ local_info_t ;


 scalar_t__ HOSTAP_INTERFACE_MAIN ;
 scalar_t__ IW_MODE_MASTER ;
 scalar_t__ IW_MODE_REPEAT ;
 int IW_QUAL_ALL_INVALID ;
 int IW_QUAL_ALL_UPDATED ;
 int IW_QUAL_DBM ;
 scalar_t__ in_atomic () ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 scalar_t__ prism2_update_comms_qual (struct net_device*) ;

__attribute__((used)) static struct iw_statistics *hostap_get_wireless_stats(struct net_device *dev)
{
 struct hostap_interface *iface;
 local_info_t *local;
 struct iw_statistics *wstats;

 iface = netdev_priv(dev);
 local = iface->local;


 if (iface->type != HOSTAP_INTERFACE_MAIN)
  return ((void*)0);

 wstats = &local->wstats;

 wstats->status = 0;
 wstats->discard.code =
  local->comm_tallies.rx_discards_wep_undecryptable;
 wstats->discard.misc =
  local->comm_tallies.rx_fcs_errors +
  local->comm_tallies.rx_discards_no_buffer +
  local->comm_tallies.tx_discards_wrong_sa;

 wstats->discard.retries =
  local->comm_tallies.tx_retry_limit_exceeded;
 wstats->discard.fragment =
  local->comm_tallies.rx_message_in_bad_msg_fragments;

 if (local->iw_mode != IW_MODE_MASTER &&
     local->iw_mode != IW_MODE_REPEAT) {
  int update = 1;
  if (update && prism2_update_comms_qual(dev) == 0)
   wstats->qual.updated = IW_QUAL_ALL_UPDATED |
    IW_QUAL_DBM;

  wstats->qual.qual = local->comms_qual;
  wstats->qual.level = local->avg_signal;
  wstats->qual.noise = local->avg_noise;
 } else {
  wstats->qual.qual = 0;
  wstats->qual.level = 0;
  wstats->qual.noise = 0;
  wstats->qual.updated = IW_QUAL_ALL_INVALID;
 }

 return wstats;
}
