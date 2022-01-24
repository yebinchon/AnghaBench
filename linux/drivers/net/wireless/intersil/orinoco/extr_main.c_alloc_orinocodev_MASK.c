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
struct wiphy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * spy_data; } ;
struct orinoco_private {int (* hard_reset ) (struct orinoco_private*) ;int (* stop_fw ) (struct orinoco_private*,int) ;int hw_unavailable; int last_linkstatus; int /*<<< orphan*/ * cached_fw; int /*<<< orphan*/ * cached_pri_fw; int /*<<< orphan*/  process_scan; int /*<<< orphan*/  scan_list; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  rx_list; int /*<<< orphan*/  wevent_work; int /*<<< orphan*/  join_work; int /*<<< orphan*/  reset_work; scalar_t__ open; int /*<<< orphan*/  lock; int /*<<< orphan*/  spy_data; TYPE_1__ wireless_data; int /*<<< orphan*/ * card; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  orinoco_cfg_ops ; 
 int /*<<< orphan*/  orinoco_join_ap ; 
 int /*<<< orphan*/  orinoco_process_scan_results ; 
 int /*<<< orphan*/  FUNC2 (struct orinoco_private*) ; 
 int /*<<< orphan*/  orinoco_reset ; 
 int /*<<< orphan*/  orinoco_rx_isr_tasklet ; 
 int /*<<< orphan*/  orinoco_send_wevents ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 struct wiphy* FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct orinoco_private* FUNC7 (struct wiphy*) ; 

struct orinoco_private
*FUNC8(int sizeof_card,
		  struct device *device,
		  int (*hard_reset)(struct orinoco_private *),
		  int (*stop_fw)(struct orinoco_private *, int))
{
	struct orinoco_private *priv;
	struct wiphy *wiphy;

	/* allocate wiphy
	 * NOTE: We only support a single virtual interface
	 *       but this may change when monitor mode is added
	 */
	wiphy = FUNC6(&orinoco_cfg_ops,
			  sizeof(struct orinoco_private) + sizeof_card);
	if (!wiphy)
		return NULL;

	priv = FUNC7(wiphy);
	priv->dev = device;

	if (sizeof_card)
		priv->card = (void *)((unsigned long)priv
				      + sizeof(struct orinoco_private));
	else
		priv->card = NULL;

	FUNC3(wiphy);

#ifdef WIRELESS_SPY
	priv->wireless_data.spy_data = &priv->spy_data;
#endif

	/* Set up default callbacks */
	priv->hard_reset = hard_reset;
	priv->stop_fw = stop_fw;

	FUNC4(&priv->lock);
	priv->open = 0;
	priv->hw_unavailable = 1; /* orinoco_init() must clear this
				   * before anything else touches the
				   * hardware */
	FUNC1(&priv->reset_work, orinoco_reset);
	FUNC1(&priv->join_work, orinoco_join_ap);
	FUNC1(&priv->wevent_work, orinoco_send_wevents);

	FUNC0(&priv->rx_list);
	FUNC5(&priv->rx_tasklet, orinoco_rx_isr_tasklet,
		     (unsigned long) priv);

	FUNC4(&priv->scan_lock);
	FUNC0(&priv->scan_list);
	FUNC1(&priv->process_scan, orinoco_process_scan_results);

	priv->last_linkstatus = 0xffff;

#if defined(CONFIG_HERMES_CACHE_FW_ON_INIT) || defined(CONFIG_PM_SLEEP)
	priv->cached_pri_fw = NULL;
	priv->cached_fw = NULL;
#endif

	/* Register PM notifiers */
	FUNC2(priv);

	return priv;
}