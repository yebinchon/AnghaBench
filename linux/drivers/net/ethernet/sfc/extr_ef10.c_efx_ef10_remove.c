
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct efx_nic {TYPE_1__* pci_dev; int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int vf_index; int mcdi_buf; int udp_tunnels_lock; int udp_tunnels; int must_restore_piobufs; scalar_t__ wc_membase; int vlan_lock; struct ef10_vf* vf; } ;
struct ef10_vf {int * efx; } ;
struct TYPE_2__ {int dev; struct pci_dev* physfn; scalar_t__ is_virtfn; } ;


 int WARN_ON (int) ;
 int dev_attr_link_control_flag ;
 int dev_attr_primary_flag ;
 int device_remove_file (int *,int *) ;
 int drv ;
 int efx_ef10_cleanup_vlans (struct efx_nic*) ;
 int efx_ef10_free_piobufs (struct efx_nic*) ;
 int efx_ef10_free_vis (struct efx_nic*) ;
 int efx_ef10_rx_free_indir_table (struct efx_nic*) ;
 int efx_ef10_set_udp_tnl_ports (struct efx_nic*,int) ;
 int efx_mcdi_detach (struct efx_nic*) ;
 int efx_mcdi_fini (struct efx_nic*) ;
 int efx_mcdi_mon_remove (struct efx_nic*) ;
 int efx_nic_free_buffer (struct efx_nic*,int *) ;
 int efx_ptp_remove (struct efx_nic*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct efx_ef10_nic_data*) ;
 int memset (int ,int ,int) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_info (struct efx_nic*,int ,int ,char*) ;
 struct efx_nic* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void efx_ef10_remove(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 int rc;
 efx_ef10_cleanup_vlans(efx);
 mutex_destroy(&nic_data->vlan_lock);

 efx_ptp_remove(efx);

 efx_mcdi_mon_remove(efx);

 efx_ef10_rx_free_indir_table(efx);

 if (nic_data->wc_membase)
  iounmap(nic_data->wc_membase);

 rc = efx_ef10_free_vis(efx);
 WARN_ON(rc != 0);

 if (!nic_data->must_restore_piobufs)
  efx_ef10_free_piobufs(efx);

 device_remove_file(&efx->pci_dev->dev, &dev_attr_primary_flag);
 device_remove_file(&efx->pci_dev->dev, &dev_attr_link_control_flag);

 efx_mcdi_detach(efx);

 memset(nic_data->udp_tunnels, 0, sizeof(nic_data->udp_tunnels));
 mutex_lock(&nic_data->udp_tunnels_lock);
 (void)efx_ef10_set_udp_tnl_ports(efx, 1);
 mutex_unlock(&nic_data->udp_tunnels_lock);

 mutex_destroy(&nic_data->udp_tunnels_lock);

 efx_mcdi_fini(efx);
 efx_nic_free_buffer(efx, &nic_data->mcdi_buf);
 kfree(nic_data);
}
