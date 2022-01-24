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
struct ubi_device {int /*<<< orphan*/  peb_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*) ; 

__attribute__((used)) static inline unsigned long *FUNC4(struct ubi_device *ubi)
{
	unsigned long *ret;

	if (!FUNC3(ubi))
		return NULL;

	ret = FUNC2(FUNC0(ubi->peb_count), sizeof(unsigned long),
		      GFP_KERNEL);
	if (!ret)
		return FUNC1(-ENOMEM);

	return ret;
}