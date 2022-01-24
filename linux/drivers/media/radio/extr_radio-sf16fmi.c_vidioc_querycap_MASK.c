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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC1(struct file *file, void  *priv,
					struct v4l2_capability *v)
{
	FUNC0(v->driver, "radio-sf16fmi", sizeof(v->driver));
	FUNC0(v->card, "SF16-FMI/FMP/FMD radio", sizeof(v->card));
	FUNC0(v->bus_info, "ISA:radio-sf16fmi", sizeof(v->bus_info));
	return 0;
}