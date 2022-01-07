
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int dummy; } ;


 int EOPNOTSUPP ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_err (struct wil6210_priv*,char*) ;

__attribute__((used)) static int wil_tx_ring_modify_edma(struct wil6210_vif *vif, int ring_id,
       int cid, int tid)
{
 struct wil6210_priv *wil = vif_to_wil(vif);

 wil_err(wil, "ring modify is not supported for EDMA\n");

 return -EOPNOTSUPP;
}
