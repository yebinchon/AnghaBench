
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int internal_scan; int scan_work; int work_thread; struct cfg80211_scan_request* scan_req; scalar_t__ scan_channel; } ;
struct cfg80211_scan_request {int ie_len; int n_channels; int n_ssids; } ;


 int lbs_deb_scan (char*,int ,int ,int ) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void _internal_start_scan(struct lbs_private *priv, bool internal,
 struct cfg80211_scan_request *request)
{
 lbs_deb_scan("scan: ssids %d, channels %d, ie_len %zd\n",
  request->n_ssids, request->n_channels, request->ie_len);

 priv->scan_channel = 0;
 priv->scan_req = request;
 priv->internal_scan = internal;

 queue_delayed_work(priv->work_thread, &priv->scan_work,
  msecs_to_jiffies(50));
}
