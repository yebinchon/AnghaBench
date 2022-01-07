
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_sta_info {scalar_t__ status; int addr; } ;
struct wil_probe_client_req {size_t cid; int cookie; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {struct wil_sta_info* sta; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 int cfg80211_probe_status (struct net_device*,int ,int ,int,int ,int,int ) ;
 struct net_device* vif_to_ndev (struct wil6210_vif*) ;
 scalar_t__ wil_sta_connected ;

__attribute__((used)) static void wil_probe_client_handle(struct wil6210_priv *wil,
        struct wil6210_vif *vif,
        struct wil_probe_client_req *req)
{
 struct net_device *ndev = vif_to_ndev(vif);
 struct wil_sta_info *sta = &wil->sta[req->cid];



 bool alive = (sta->status == wil_sta_connected);

 cfg80211_probe_status(ndev, sta->addr, req->cookie, alive,
         0, 0, GFP_KERNEL);
}
