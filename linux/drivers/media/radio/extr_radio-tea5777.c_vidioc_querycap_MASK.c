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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct radio_tea5777 {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; TYPE_1__* v4l2_dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct radio_tea5777* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void  *priv,
					struct v4l2_capability *v)
{
	struct radio_tea5777 *tea = FUNC2(file);

	FUNC1(v->driver, tea->v4l2_dev->name, sizeof(v->driver));
	FUNC1(v->card, tea->card, sizeof(v->card));
	FUNC0(v->card, " TEA5777", sizeof(v->card));
	FUNC1(v->bus_info, tea->bus_info, sizeof(v->bus_info));
	return 0;
}