#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5e_priv {int max_nch; } ;
struct mlx5e_hv_vhca_per_ring_stats {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int,void*) ; 

__attribute__((used)) static void FUNC2(struct mlx5e_priv *priv, void *data,
				     int buf_len)
{
	int ch, i = 0;

	for (ch = 0; ch < priv->max_nch; ch++) {
		void *buf = data + i;

		if (FUNC0(buf +
				 sizeof(struct mlx5e_hv_vhca_per_ring_stats) >
				 data + buf_len))
			return;

		FUNC1(priv, ch, buf);
		i += sizeof(struct mlx5e_hv_vhca_per_ring_stats);
	}
}