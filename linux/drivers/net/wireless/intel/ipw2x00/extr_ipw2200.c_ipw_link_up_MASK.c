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
struct ipw_priv {int last_seq_num; int last_frag_num; int config; int /*<<< orphan*/  request_scan; int /*<<< orphan*/  last_rate; int /*<<< orphan*/  scan_event; int /*<<< orphan*/  request_passive_scan; int /*<<< orphan*/  request_direct_scan; int /*<<< orphan*/  net_dev; scalar_t__ last_packet_time; } ;

/* Variables and functions */
 int CFG_BACKGROUND_SCAN ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ipw_priv *priv)
{
	priv->last_seq_num = -1;
	priv->last_frag_num = -1;
	priv->last_packet_time = 0;

	FUNC5(priv->net_dev);

	FUNC0(&priv->request_scan);
	FUNC0(&priv->request_direct_scan);
	FUNC0(&priv->request_passive_scan);
	FUNC0(&priv->scan_event);
	FUNC4(priv);
	/* Ensure the rate is updated immediately */
	priv->last_rate = FUNC2(priv);
	FUNC1(priv);
	FUNC3(priv);
	FUNC6(priv);

	if (priv->config & CFG_BACKGROUND_SCAN)
		FUNC7(&priv->request_scan, HZ);
}