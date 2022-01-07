
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int mac_lock; scalar_t__ multicast_update_pending; } ;


 int MAC_CR ;
 int MAC_CR_RXEN_ ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 int drv ;
 int smsc911x_mac_read (struct smsc911x_data*,int ) ;
 int smsc911x_mac_write (struct smsc911x_data*,int ,unsigned int) ;
 int smsc911x_rx_multicast_update (struct smsc911x_data*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void smsc911x_rx_multicast_update_workaround(struct smsc911x_data *pdata)
{
 unsigned int mac_cr;
 spin_lock(&pdata->mac_lock);


 if (smsc911x_mac_read(pdata, MAC_CR) & MAC_CR_RXEN_)
  SMSC_WARN(pdata, drv, "Rx not stopped");


 smsc911x_rx_multicast_update(pdata);


 mac_cr = smsc911x_mac_read(pdata, MAC_CR);
 mac_cr |= MAC_CR_RXEN_;
 smsc911x_mac_write(pdata, MAC_CR, mac_cr);

 pdata->multicast_update_pending = 0;

 spin_unlock(&pdata->mac_lock);
}
