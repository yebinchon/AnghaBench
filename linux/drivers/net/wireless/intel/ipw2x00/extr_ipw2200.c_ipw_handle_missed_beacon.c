
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int notif_missed_beacons; int disassociate_threshold; int status; int roaming_threshold; int abort_scan; int request_scan; int disassociate; } ;


 int IPW_DEBUG (int,char*,...) ;
 int IPW_DEBUG_NOTIF (char*,int) ;
 int IPW_DL_ASSOC ;
 int IPW_DL_INFO ;
 int IPW_DL_NOTIF ;
 int IPW_DL_STATE ;
 int IPW_MB_SCAN_CANCEL_THRESHOLD ;
 int STATUS_ASSOCIATED ;
 int STATUS_ROAMING ;
 int STATUS_SCANNING ;
 scalar_t__ roaming ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ipw_handle_missed_beacon(struct ipw_priv *priv,
         int missed_count)
{
 priv->notif_missed_beacons = missed_count;

 if (missed_count > priv->disassociate_threshold &&
     priv->status & STATUS_ASSOCIATED) {



  IPW_DEBUG(IPW_DL_INFO | IPW_DL_NOTIF |
     IPW_DL_STATE | IPW_DL_ASSOC,
     "Missed beacon: %d - disassociate\n", missed_count);
  priv->status &= ~STATUS_ROAMING;
  if (priv->status & STATUS_SCANNING) {
   IPW_DEBUG(IPW_DL_INFO | IPW_DL_NOTIF |
      IPW_DL_STATE,
      "Aborting scan with missed beacon.\n");
   schedule_work(&priv->abort_scan);
  }

  schedule_work(&priv->disassociate);
  return;
 }

 if (priv->status & STATUS_ROAMING) {


  IPW_DEBUG(IPW_DL_NOTIF | IPW_DL_STATE,
     "Missed beacon: %d - roam in progress\n",
     missed_count);
  return;
 }

 if (roaming &&
     (missed_count > priv->roaming_threshold &&
      missed_count <= priv->disassociate_threshold)) {




  IPW_DEBUG(IPW_DL_NOTIF | IPW_DL_STATE,
     "Missed beacon: %d - initiate "
     "roaming\n", missed_count);
  if (!(priv->status & STATUS_ROAMING)) {
   priv->status |= STATUS_ROAMING;
   if (!(priv->status & STATUS_SCANNING))
    schedule_delayed_work(&priv->request_scan, 0);
  }
  return;
 }

 if (priv->status & STATUS_SCANNING &&
     missed_count > IPW_MB_SCAN_CANCEL_THRESHOLD) {




  IPW_DEBUG(IPW_DL_INFO | IPW_DL_NOTIF | IPW_DL_STATE,
     "Aborting scan with missed beacon.\n");
  schedule_work(&priv->abort_scan);
 }

 IPW_DEBUG_NOTIF("Missed beacon: %d\n", missed_count);
}
