#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  tuple_t ;
struct pcmcia_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int* ofs; int ns; int /*<<< orphan*/ * str; } ;
struct TYPE_5__ {TYPE_1__ version_1; } ;
typedef  TYPE_2__ cisparse_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_device *p_dev,
			      tuple_t *tuple,
			      void *priv)
{
	struct net_device *dev = priv;
	cisparse_t parse;
	u8 *buf;

	if (FUNC1(tuple, &parse))
		return -EINVAL;

	buf = parse.version_1.str + parse.version_1.ofs[3];

	if ((parse.version_1.ns > 3) && (FUNC0(dev, buf) == 0))
		return 0;

	return -EINVAL;
}