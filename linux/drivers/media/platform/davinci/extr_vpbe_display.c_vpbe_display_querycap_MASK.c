#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vpbe_layer {TYPE_2__* disp_dev; } ;
struct vpbe_device {TYPE_1__* cfg; int /*<<< orphan*/  pdev; } ;
struct v4l2_capability {int /*<<< orphan*/  card; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct vpbe_device* vpbe_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  module_name; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct vpbe_layer* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void  *priv,
			       struct v4l2_capability *cap)
{
	struct vpbe_layer *layer = FUNC3(file);
	struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;

	FUNC1(cap->driver, sizeof(cap->driver), "%s",
		FUNC0(vpbe_dev->pdev));
	FUNC1(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
		 FUNC0(vpbe_dev->pdev));
	FUNC2(cap->card, vpbe_dev->cfg->module_name, sizeof(cap->card));

	return 0;
}