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
struct lb_stats {unsigned int tx_bytes; } ;
struct lb_priv {int /*<<< orphan*/  pcpu_stats; } ;
struct lb_port_priv {int /*<<< orphan*/  pcpu_stats; } ;
struct lb_pcpu_stats {int /*<<< orphan*/  syncp; struct lb_stats* hash_stats; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned int tx_bytes, struct lb_priv *lb_priv,
			       struct lb_port_priv *lb_port_priv,
			       unsigned char hash)
{
	struct lb_pcpu_stats *pcpu_stats;
	struct lb_stats *port_stats;
	struct lb_stats *hash_stats;

	pcpu_stats = FUNC0(lb_priv->pcpu_stats);
	port_stats = FUNC0(lb_port_priv->pcpu_stats);
	hash_stats = &pcpu_stats->hash_stats[hash];
	FUNC1(&pcpu_stats->syncp);
	port_stats->tx_bytes += tx_bytes;
	hash_stats->tx_bytes += tx_bytes;
	FUNC2(&pcpu_stats->syncp);
}