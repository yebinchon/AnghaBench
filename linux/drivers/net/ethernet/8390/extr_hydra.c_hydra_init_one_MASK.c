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
struct zorro_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct zorro_dev {TYPE_1__ resource; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct zorro_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC3(struct zorro_dev *z,
			  const struct zorro_device_id *ent)
{
    int err;

    if (!FUNC2(z->resource.start, 0x10000, "Hydra"))
	return -EBUSY;
    if ((err = FUNC0(z))) {
	FUNC1(z->resource.start, 0x10000);
	return -EBUSY;
    }
    return 0;
}