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
struct TYPE_2__ {char* name; } ;
struct pcm20 {TYPE_1__ v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct pcm20* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_capability *v)
{
	struct pcm20 *dev = FUNC2(file);

	FUNC1(v->driver, "Miro PCM20", sizeof(v->driver));
	FUNC1(v->card, "Miro PCM20", sizeof(v->card));
	FUNC0(v->bus_info, sizeof(v->bus_info), "ISA:%s", dev->v4l2_dev.name);
	return 0;
}