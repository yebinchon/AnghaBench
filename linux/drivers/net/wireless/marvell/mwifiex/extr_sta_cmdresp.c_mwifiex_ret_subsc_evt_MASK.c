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
struct mwifiex_private {int /*<<< orphan*/  adapter; } ;
struct host_cmd_ds_802_11_subsc_evt {int /*<<< orphan*/  events; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_subsc_evt subsc_evt; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_private *priv,
				 struct host_cmd_ds_command *resp)
{
	struct host_cmd_ds_802_11_subsc_evt *cmd_sub_event =
		&resp->params.subsc_evt;

	/* For every subscribe event command (Get/Set/Clear), FW reports the
	 * current set of subscribed events*/
	FUNC1(priv->adapter, EVENT,
		    "Bitmap of currently subscribed events: %16x\n",
		    FUNC0(cmd_sub_event->events));

	return 0;
}