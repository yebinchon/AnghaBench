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
struct delta_dev {scalar_t__ nb_of_decoders; int /*<<< orphan*/  dev; TYPE_1__** decoders; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__**) ; 
 scalar_t__ DELTA_MAX_DECODERS ; 
 int /*<<< orphan*/  DELTA_PREFIX ; 
 TYPE_1__** delta_decoders ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct delta_dev *delta)
{
	unsigned int i;

	for (i = 0; i < FUNC0(delta_decoders); i++) {
		if (delta->nb_of_decoders >= DELTA_MAX_DECODERS) {
			FUNC1(delta->dev,
				"%s failed to register %s decoder (%d maximum reached)\n",
				DELTA_PREFIX, delta_decoders[i]->name,
				DELTA_MAX_DECODERS);
			return;
		}

		delta->decoders[delta->nb_of_decoders++] = delta_decoders[i];
		FUNC2(delta->dev, "%s %s decoder registered\n",
			 DELTA_PREFIX, delta_decoders[i]->name);
	}
}