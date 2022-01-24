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
struct cpsw_slave {int dummy; } ;
struct cpsw_priv {int* fifo_bw; } ;

/* Variables and functions */
 int CPSW_FIFO_SHAPERS_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_priv*,int,int) ; 

__attribute__((used)) static void FUNC1(struct cpsw_slave *slave, struct cpsw_priv *priv)
{
	int fifo, bw;

	for (fifo = CPSW_FIFO_SHAPERS_NUM; fifo > 0; fifo--) {
		bw = priv->fifo_bw[fifo];
		if (!bw)
			continue;

		FUNC0(priv, fifo, bw);
	}
}