#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * rx_hash_fields; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; TYPE_1__ rss_params; } ;
struct ethtool_rxnfc {scalar_t__ flow_type; int data; } ;
typedef  enum mlx5e_traffic_types { ____Placeholder_mlx5e_traffic_types } mlx5e_traffic_types ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5E_NUM_INDIR_TIRS ; 
 int /*<<< orphan*/  MLX5_HASH_FIELD_SEL_DST_IP ; 
 int /*<<< orphan*/  MLX5_HASH_FIELD_SEL_L4_DPORT ; 
 int /*<<< orphan*/  MLX5_HASH_FIELD_SEL_L4_SPORT ; 
 int /*<<< orphan*/  MLX5_HASH_FIELD_SEL_SRC_IP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RXH_IP_DST ; 
 int RXH_IP_SRC ; 
 int RXH_L4_B_0_1 ; 
 int RXH_L4_B_2_3 ; 
 scalar_t__ TCP_V4_FLOW ; 
 scalar_t__ TCP_V6_FLOW ; 
 scalar_t__ UDP_V4_FLOW ; 
 scalar_t__ UDP_V6_FLOW ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,void*,int) ; 
 int /*<<< orphan*/  modify_tir_in ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mlx5e_priv *priv,
				  struct ethtool_rxnfc *nfc)
{
	int inlen = FUNC0(modify_tir_in);
	enum mlx5e_traffic_types tt;
	u8 rx_hash_field = 0;
	void *in;

	tt = FUNC1(nfc->flow_type);
	if (tt == MLX5E_NUM_INDIR_TIRS)
		return -EINVAL;

	/*  RSS does not support anything other than hashing to queues
	 *  on src IP, dest IP, TCP/UDP src port and TCP/UDP dest
	 *  port.
	 */
	if (nfc->flow_type != TCP_V4_FLOW &&
	    nfc->flow_type != TCP_V6_FLOW &&
	    nfc->flow_type != UDP_V4_FLOW &&
	    nfc->flow_type != UDP_V6_FLOW)
		return -EOPNOTSUPP;

	if (nfc->data & ~(RXH_IP_SRC | RXH_IP_DST |
			  RXH_L4_B_0_1 | RXH_L4_B_2_3))
		return -EOPNOTSUPP;

	if (nfc->data & RXH_IP_SRC)
		rx_hash_field |= MLX5_HASH_FIELD_SEL_SRC_IP;
	if (nfc->data & RXH_IP_DST)
		rx_hash_field |= MLX5_HASH_FIELD_SEL_DST_IP;
	if (nfc->data & RXH_L4_B_0_1)
		rx_hash_field |= MLX5_HASH_FIELD_SEL_L4_SPORT;
	if (nfc->data & RXH_L4_B_2_3)
		rx_hash_field |= MLX5_HASH_FIELD_SEL_L4_DPORT;

	in = FUNC3(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC5(&priv->state_lock);

	if (rx_hash_field == priv->rss_params.rx_hash_fields[tt])
		goto out;

	priv->rss_params.rx_hash_fields[tt] = rx_hash_field;
	FUNC4(priv, in, inlen);

out:
	FUNC6(&priv->state_lock);
	FUNC2(in);
	return 0;
}