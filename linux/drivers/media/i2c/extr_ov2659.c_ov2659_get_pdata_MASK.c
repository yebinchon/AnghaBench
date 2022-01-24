#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_fwnode_endpoint {int /*<<< orphan*/ * link_frequencies; int /*<<< orphan*/  nr_of_link_frequencies; int /*<<< orphan*/  bus_type; } ;
struct ov2659_platform_data {int /*<<< orphan*/  link_frequency; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; struct ov2659_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 struct ov2659_platform_data* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static struct ov2659_platform_data *
FUNC8(struct i2c_client *client)
{
	struct ov2659_platform_data *pdata;
	struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
	struct device_node *endpoint;
	int ret;

	if (!FUNC0(CONFIG_OF) || !client->dev.of_node)
		return client->dev.platform_data;

	endpoint = FUNC4(client->dev.of_node, NULL);
	if (!endpoint)
		return NULL;

	ret = FUNC6(FUNC3(endpoint),
					       &bus_cfg);
	if (ret) {
		pdata = NULL;
		goto done;
	}

	pdata = FUNC2(&client->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		goto done;

	if (!bus_cfg.nr_of_link_frequencies) {
		FUNC1(&client->dev,
			"link-frequencies property not found or too many\n");
		pdata = NULL;
		goto done;
	}

	pdata->link_frequency = bus_cfg.link_frequencies[0];

done:
	FUNC7(&bus_cfg);
	FUNC5(endpoint);
	return pdata;
}