
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; } ;


 int IPW_DEBUG_HC (char*) ;
 int STATUS_SCAN_ABORTING ;
 int ipw_send_scan_abort (struct ipw_priv*) ;

__attribute__((used)) static void ipw_abort_scan(struct ipw_priv *priv)
{
 int err;

 if (priv->status & STATUS_SCAN_ABORTING) {
  IPW_DEBUG_HC("Ignoring concurrent scan abort request.\n");
  return;
 }
 priv->status |= STATUS_SCAN_ABORTING;

 err = ipw_send_scan_abort(priv);
 if (err)
  IPW_DEBUG_HC("Request to abort scan failed.\n");
}
