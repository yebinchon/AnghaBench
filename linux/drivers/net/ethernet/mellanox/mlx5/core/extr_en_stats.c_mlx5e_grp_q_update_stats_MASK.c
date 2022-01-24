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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_qcounter_stats {void* rx_if_down_packets; void* rx_out_of_buffer; } ;
struct TYPE_2__ {struct mlx5e_qcounter_stats qcnt; } ;
struct mlx5e_priv {scalar_t__ drop_rq_q_counter; int /*<<< orphan*/  mdev; scalar_t__ q_counter; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  out_of_buffer ; 
 int /*<<< orphan*/  query_q_counter_out ; 

__attribute__((used)) static void FUNC3(struct mlx5e_priv *priv)
{
	struct mlx5e_qcounter_stats *qcnt = &priv->stats.qcnt;
	u32 out[FUNC1(query_q_counter_out)];

	if (priv->q_counter &&
	    !FUNC2(priv->mdev, priv->q_counter, 0, out,
				       sizeof(out)))
		qcnt->rx_out_of_buffer = FUNC0(query_q_counter_out,
						  out, out_of_buffer);
	if (priv->drop_rq_q_counter &&
	    !FUNC2(priv->mdev, priv->drop_rq_q_counter, 0,
				       out, sizeof(out)))
		qcnt->rx_if_down_packets = FUNC0(query_q_counter_out, out,
						    out_of_buffer);
}