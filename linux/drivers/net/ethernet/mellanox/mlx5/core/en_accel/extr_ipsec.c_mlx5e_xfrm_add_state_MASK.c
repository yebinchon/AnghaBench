#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; unsigned long offload_handle; struct net_device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  a6; int /*<<< orphan*/  a4; } ;
struct TYPE_9__ {int /*<<< orphan*/  spi; TYPE_3__ daddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  a6; int /*<<< orphan*/  a4; } ;
struct TYPE_7__ {int flags; scalar_t__ family; TYPE_1__ saddr; } ;
struct xfrm_state {TYPE_5__ xso; TYPE_4__ id; TYPE_2__ props; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; int /*<<< orphan*/  ipsec; } ;
struct mlx5e_ipsec_sa_entry {int /*<<< orphan*/  xfrm; int /*<<< orphan*/  hw_context; int /*<<< orphan*/  set_iv_op; int /*<<< orphan*/  ipsec; struct xfrm_state* x; } ;
struct mlx5_accel_esp_xfrm_attrs {int dummy; } ;
typedef  int /*<<< orphan*/  saddr ;
typedef  int /*<<< orphan*/  daddr ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int XFRM_OFFLOAD_INBOUND ; 
 int XFRM_STATE_ESN ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_ipsec_sa_entry*) ; 
 struct mlx5e_ipsec_sa_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct mlx5_accel_esp_xfrm_attrs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_ipsec_sa_entry*,struct mlx5_accel_esp_xfrm_attrs*) ; 
 int FUNC9 (struct mlx5e_ipsec_sa_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_ipsec_sa_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5e_ipsec_sa_entry*) ; 
 int /*<<< orphan*/  mlx5e_ipsec_set_iv ; 
 int /*<<< orphan*/  mlx5e_ipsec_set_iv_esn ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_ipsec_sa_entry*) ; 
 int FUNC13 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*,int) ; 
 struct mlx5e_priv* FUNC15 (struct net_device*) ; 

__attribute__((used)) static int FUNC16(struct xfrm_state *x)
{
	struct mlx5e_ipsec_sa_entry *sa_entry = NULL;
	struct net_device *netdev = x->xso.dev;
	struct mlx5_accel_esp_xfrm_attrs attrs;
	struct mlx5e_priv *priv;
	__be32 saddr[4] = {0}, daddr[4] = {0}, spi;
	bool is_ipv6 = false;
	int err;

	priv = FUNC15(netdev);

	err = FUNC13(x);
	if (err)
		return err;

	sa_entry = FUNC3(sizeof(*sa_entry), GFP_KERNEL);
	if (!sa_entry) {
		err = -ENOMEM;
		goto out;
	}

	sa_entry->x = x;
	sa_entry->ipsec = priv->ipsec;

	/* Add the SA to handle processed incoming packets before the add SA
	 * completion was received
	 */
	if (x->xso.flags & XFRM_OFFLOAD_INBOUND) {
		err = FUNC9(sa_entry);
		if (err) {
			FUNC14(netdev, "Failed adding to SADB_RX: %d\n", err);
			goto err_entry;
		}
	} else {
		sa_entry->set_iv_op = (x->props.flags & XFRM_STATE_ESN) ?
				mlx5e_ipsec_set_iv_esn : mlx5e_ipsec_set_iv;
	}

	/* check esn */
	FUNC12(sa_entry);

	/* create xfrm */
	FUNC8(sa_entry, &attrs);
	sa_entry->xfrm =
		FUNC6(priv->mdev, &attrs,
					   MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA);
	if (FUNC0(sa_entry->xfrm)) {
		err = FUNC1(sa_entry->xfrm);
		goto err_sadb_rx;
	}

	/* create hw context */
	if (x->props.family == AF_INET) {
		saddr[3] = x->props.saddr.a4;
		daddr[3] = x->id.daddr.a4;
	} else {
		FUNC4(saddr, x->props.saddr.a6, sizeof(saddr));
		FUNC4(daddr, x->id.daddr.a6, sizeof(daddr));
		is_ipv6 = true;
	}
	spi = x->id.spi;
	sa_entry->hw_context =
			FUNC5(priv->mdev,
							 sa_entry->xfrm,
							 saddr, daddr, spi,
							 is_ipv6);
	if (FUNC0(sa_entry->hw_context)) {
		err = FUNC1(sa_entry->hw_context);
		goto err_xfrm;
	}

	x->xso.offload_handle = (unsigned long)sa_entry;
	goto out;

err_xfrm:
	FUNC7(sa_entry->xfrm);
err_sadb_rx:
	if (x->xso.flags & XFRM_OFFLOAD_INBOUND) {
		FUNC10(sa_entry);
		FUNC11(sa_entry);
	}
err_entry:
	FUNC2(sa_entry);
out:
	return err;
}