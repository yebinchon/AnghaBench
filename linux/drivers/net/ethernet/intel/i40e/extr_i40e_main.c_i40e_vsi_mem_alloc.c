
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int type; int idx; int rss_table_size; int netdev_registered; int irqs_ready; int af_xdp_zc_qps; int mac_filter_hash_lock; int mac_filter_hash; int work_limit; scalar_t__ int_rate_limit; scalar_t__ flags; int state; struct i40e_pf* back; } ;
struct i40e_pf {int next_vsi; int num_alloc_vsi; int rss_table_size; int switch_mutex; struct i40e_vsi** vsi; int num_lan_qps; } ;
typedef enum i40e_vsi_type { ____Placeholder_i40e_vsi_type } i40e_vsi_type ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I40E_DEFAULT_IRQ_WORK ;
 scalar_t__ I40E_VSI_MAIN ;
 int __I40E_VSI_DOWN ;
 int bitmap_free (int ) ;
 int bitmap_zalloc (int ,int ) ;
 int hash_init (int ) ;
 int i40e_msix_clean_rings ;
 int i40e_set_num_rings_in_vsi (struct i40e_vsi*) ;
 int i40e_vsi_alloc_arrays (struct i40e_vsi*,int) ;
 int i40e_vsi_setup_irqhandler (struct i40e_vsi*,int ) ;
 int kfree (struct i40e_vsi*) ;
 struct i40e_vsi* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int i40e_vsi_mem_alloc(struct i40e_pf *pf, enum i40e_vsi_type type)
{
 int ret = -ENODEV;
 struct i40e_vsi *vsi;
 int vsi_idx;
 int i;


 mutex_lock(&pf->switch_mutex);







 i = pf->next_vsi;
 while (i < pf->num_alloc_vsi && pf->vsi[i])
  i++;
 if (i >= pf->num_alloc_vsi) {
  i = 0;
  while (i < pf->next_vsi && pf->vsi[i])
   i++;
 }

 if (i < pf->num_alloc_vsi && !pf->vsi[i]) {
  vsi_idx = i;
 } else {
  ret = -ENODEV;
  goto unlock_pf;
 }
 pf->next_vsi = ++i;

 vsi = kzalloc(sizeof(*vsi), GFP_KERNEL);
 if (!vsi) {
  ret = -ENOMEM;
  goto unlock_pf;
 }
 vsi->type = type;
 vsi->back = pf;
 set_bit(__I40E_VSI_DOWN, vsi->state);
 vsi->flags = 0;
 vsi->idx = vsi_idx;
 vsi->int_rate_limit = 0;
 vsi->rss_table_size = (vsi->type == I40E_VSI_MAIN) ?
    pf->rss_table_size : 64;
 vsi->netdev_registered = 0;
 vsi->work_limit = I40E_DEFAULT_IRQ_WORK;
 hash_init(vsi->mac_filter_hash);
 vsi->irqs_ready = 0;

 if (type == I40E_VSI_MAIN) {
  vsi->af_xdp_zc_qps = bitmap_zalloc(pf->num_lan_qps, GFP_KERNEL);
  if (!vsi->af_xdp_zc_qps)
   goto err_rings;
 }

 ret = i40e_set_num_rings_in_vsi(vsi);
 if (ret)
  goto err_rings;

 ret = i40e_vsi_alloc_arrays(vsi, 1);
 if (ret)
  goto err_rings;


 i40e_vsi_setup_irqhandler(vsi, i40e_msix_clean_rings);


 spin_lock_init(&vsi->mac_filter_hash_lock);
 pf->vsi[vsi_idx] = vsi;
 ret = vsi_idx;
 goto unlock_pf;

err_rings:
 bitmap_free(vsi->af_xdp_zc_qps);
 pf->next_vsi = i - 1;
 kfree(vsi);
unlock_pf:
 mutex_unlock(&pf->switch_mutex);
 return ret;
}
