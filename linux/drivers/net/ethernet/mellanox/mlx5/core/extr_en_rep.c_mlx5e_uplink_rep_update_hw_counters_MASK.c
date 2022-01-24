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
struct rtnl_link_stats64 {void* tx_bytes; void* tx_packets; void* rx_bytes; void* rx_packets; } ;
struct mlx5e_pport_stats {int dummy; } ;
struct TYPE_2__ {struct rtnl_link_stats64 vf_vport; struct mlx5e_pport_stats pport; } ;
struct mlx5e_priv {TYPE_1__ stats; } ;

/* Variables and functions */
 void* FUNC0 (struct mlx5e_pport_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  a_frames_received_ok ; 
 int /*<<< orphan*/  a_frames_transmitted_ok ; 
 int /*<<< orphan*/  a_octets_received_ok ; 
 int /*<<< orphan*/  a_octets_transmitted_ok ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 

__attribute__((used)) static void FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5e_pport_stats *pstats = &priv->stats.pport;
	struct rtnl_link_stats64 *vport_stats;

	FUNC1(priv);

	vport_stats = &priv->stats.vf_vport;

	vport_stats->rx_packets = FUNC0(pstats, a_frames_received_ok);
	vport_stats->rx_bytes   = FUNC0(pstats, a_octets_received_ok);
	vport_stats->tx_packets = FUNC0(pstats, a_frames_transmitted_ok);
	vport_stats->tx_bytes   = FUNC0(pstats, a_octets_transmitted_ok);
}