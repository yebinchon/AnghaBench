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
struct iwl_rx_packet {int dummy; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,struct iwl_rx_packet*) ; 
 struct iwl_rx_packet* FUNC1 (struct iwl_rx_cmd_buffer*) ; 

void FUNC2(struct iwl_priv *priv, struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC1(rxb);

	FUNC0(priv, pkt);
}