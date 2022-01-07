
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int flags; unsigned long offload_handle; struct net_device* dev; } ;
struct TYPE_8__ {int a6; int a4; } ;
struct TYPE_9__ {int spi; TYPE_3__ daddr; } ;
struct TYPE_6__ {int a6; int a4; } ;
struct TYPE_7__ {int flags; scalar_t__ family; TYPE_1__ saddr; } ;
struct xfrm_state {TYPE_5__ xso; TYPE_4__ id; TYPE_2__ props; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int mdev; int ipsec; } ;
struct mlx5e_ipsec_sa_entry {int xfrm; int hw_context; int set_iv_op; int ipsec; struct xfrm_state* x; } ;
struct mlx5_accel_esp_xfrm_attrs {int dummy; } ;
typedef int saddr ;
typedef int daddr ;
typedef int __be32 ;


 scalar_t__ AF_INET ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA ;
 int PTR_ERR (int ) ;
 int XFRM_OFFLOAD_INBOUND ;
 int XFRM_STATE_ESN ;
 int kfree (struct mlx5e_ipsec_sa_entry*) ;
 struct mlx5e_ipsec_sa_entry* kzalloc (int,int ) ;
 int memcpy (int *,int ,int) ;
 int mlx5_accel_esp_create_hw_context (int ,int ,int *,int *,int ,int) ;
 int mlx5_accel_esp_create_xfrm (int ,struct mlx5_accel_esp_xfrm_attrs*,int ) ;
 int mlx5_accel_esp_destroy_xfrm (int ) ;
 int mlx5e_ipsec_build_accel_xfrm_attrs (struct mlx5e_ipsec_sa_entry*,struct mlx5_accel_esp_xfrm_attrs*) ;
 int mlx5e_ipsec_sadb_rx_add (struct mlx5e_ipsec_sa_entry*) ;
 int mlx5e_ipsec_sadb_rx_del (struct mlx5e_ipsec_sa_entry*) ;
 int mlx5e_ipsec_sadb_rx_free (struct mlx5e_ipsec_sa_entry*) ;
 int mlx5e_ipsec_set_iv ;
 int mlx5e_ipsec_set_iv_esn ;
 int mlx5e_ipsec_update_esn_state (struct mlx5e_ipsec_sa_entry*) ;
 int mlx5e_xfrm_validate_state (struct xfrm_state*) ;
 int netdev_info (struct net_device*,char*,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_xfrm_add_state(struct xfrm_state *x)
{
 struct mlx5e_ipsec_sa_entry *sa_entry = ((void*)0);
 struct net_device *netdev = x->xso.dev;
 struct mlx5_accel_esp_xfrm_attrs attrs;
 struct mlx5e_priv *priv;
 __be32 saddr[4] = {0}, daddr[4] = {0}, spi;
 bool is_ipv6 = 0;
 int err;

 priv = netdev_priv(netdev);

 err = mlx5e_xfrm_validate_state(x);
 if (err)
  return err;

 sa_entry = kzalloc(sizeof(*sa_entry), GFP_KERNEL);
 if (!sa_entry) {
  err = -ENOMEM;
  goto out;
 }

 sa_entry->x = x;
 sa_entry->ipsec = priv->ipsec;




 if (x->xso.flags & XFRM_OFFLOAD_INBOUND) {
  err = mlx5e_ipsec_sadb_rx_add(sa_entry);
  if (err) {
   netdev_info(netdev, "Failed adding to SADB_RX: %d\n", err);
   goto err_entry;
  }
 } else {
  sa_entry->set_iv_op = (x->props.flags & XFRM_STATE_ESN) ?
    mlx5e_ipsec_set_iv_esn : mlx5e_ipsec_set_iv;
 }


 mlx5e_ipsec_update_esn_state(sa_entry);


 mlx5e_ipsec_build_accel_xfrm_attrs(sa_entry, &attrs);
 sa_entry->xfrm =
  mlx5_accel_esp_create_xfrm(priv->mdev, &attrs,
        MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA);
 if (IS_ERR(sa_entry->xfrm)) {
  err = PTR_ERR(sa_entry->xfrm);
  goto err_sadb_rx;
 }


 if (x->props.family == AF_INET) {
  saddr[3] = x->props.saddr.a4;
  daddr[3] = x->id.daddr.a4;
 } else {
  memcpy(saddr, x->props.saddr.a6, sizeof(saddr));
  memcpy(daddr, x->id.daddr.a6, sizeof(daddr));
  is_ipv6 = 1;
 }
 spi = x->id.spi;
 sa_entry->hw_context =
   mlx5_accel_esp_create_hw_context(priv->mdev,
        sa_entry->xfrm,
        saddr, daddr, spi,
        is_ipv6);
 if (IS_ERR(sa_entry->hw_context)) {
  err = PTR_ERR(sa_entry->hw_context);
  goto err_xfrm;
 }

 x->xso.offload_handle = (unsigned long)sa_entry;
 goto out;

err_xfrm:
 mlx5_accel_esp_destroy_xfrm(sa_entry->xfrm);
err_sadb_rx:
 if (x->xso.flags & XFRM_OFFLOAD_INBOUND) {
  mlx5e_ipsec_sadb_rx_del(sa_entry);
  mlx5e_ipsec_sadb_rx_free(sa_entry);
 }
err_entry:
 kfree(sa_entry);
out:
 return err;
}
