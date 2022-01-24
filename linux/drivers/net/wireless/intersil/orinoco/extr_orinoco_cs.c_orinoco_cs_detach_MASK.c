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
struct pcmcia_device {struct orinoco_private* priv; } ;
struct orinoco_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pcmcia_device *link)
{
	struct orinoco_private *priv = link->priv;

	FUNC2(priv);

	FUNC1(link);

	FUNC4(FUNC3(priv));
	FUNC0(priv);
}