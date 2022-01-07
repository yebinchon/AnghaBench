
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_priv {int status; int cmdlog_len; int config; int request_scan; int rf_kill; int mac_addr; TYPE_1__* net_dev; int * cmdlog; scalar_t__ suspend_time; int ieee; } ;
struct TYPE_2__ {int dev_addr; } ;


 int CFG_CUSTOM_MAC ;
 int EIO ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int HZ ;
 int IPW_DEBUG_INFO (char*,int,...) ;
 int IPW_ERROR (char*,int) ;
 int IPW_WARNING (char*) ;
 int MAX_HW_RESTARTS ;
 int STATUS_EXIT_PENDING ;
 int STATUS_RF_KILL_SW ;
 int cmdlog ;
 int eeprom_parse_mac (struct ipw_priv*,int ) ;
 int ipw_config (struct ipw_priv*) ;
 int ipw_down (struct ipw_priv*) ;
 int ipw_init_ordinals (struct ipw_priv*) ;
 int ipw_load (struct ipw_priv*) ;
 int ipw_set_geo (struct ipw_priv*) ;
 int * kcalloc (int,int,int ) ;
 int libipw_networks_age (int ,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ rf_kill_active (struct ipw_priv*) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int ipw_up(struct ipw_priv *priv)
{
 int rc, i;


 if (priv->suspend_time) {
  libipw_networks_age(priv->ieee, priv->suspend_time);
  priv->suspend_time = 0;
 }

 if (priv->status & STATUS_EXIT_PENDING)
  return -EIO;

 if (cmdlog && !priv->cmdlog) {
  priv->cmdlog = kcalloc(cmdlog, sizeof(*priv->cmdlog),
           GFP_KERNEL);
  if (priv->cmdlog == ((void*)0)) {
   IPW_ERROR("Error allocating %d command log entries.\n",
      cmdlog);
   return -ENOMEM;
  } else {
   priv->cmdlog_len = cmdlog;
  }
 }

 for (i = 0; i < MAX_HW_RESTARTS; i++) {


  rc = ipw_load(priv);
  if (rc) {
   IPW_ERROR("Unable to load firmware: %d\n", rc);
   return rc;
  }

  ipw_init_ordinals(priv);
  if (!(priv->config & CFG_CUSTOM_MAC))
   eeprom_parse_mac(priv, priv->mac_addr);
  memcpy(priv->net_dev->dev_addr, priv->mac_addr, ETH_ALEN);

  ipw_set_geo(priv);

  if (priv->status & STATUS_RF_KILL_SW) {
   IPW_WARNING("Radio disabled by module parameter.\n");
   return 0;
  } else if (rf_kill_active(priv)) {
   IPW_WARNING("Radio Frequency Kill Switch is On:\n"
        "Kill switch must be turned off for "
        "wireless networking to work.\n");
   schedule_delayed_work(&priv->rf_kill, 2 * HZ);
   return 0;
  }

  rc = ipw_config(priv);
  if (!rc) {
   IPW_DEBUG_INFO("Configured device on count %i\n", i);



   schedule_delayed_work(&priv->request_scan, 0);

   return 0;
  }

  IPW_DEBUG_INFO("Device configuration failed: 0x%08X\n", rc);
  IPW_DEBUG_INFO("Failed to config device on retry %d of %d\n",
          i, MAX_HW_RESTARTS);



  ipw_down(priv);
 }



 IPW_ERROR("Unable to initialize device after %d attempts.\n", i);

 return -EIO;
}
