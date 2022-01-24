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
struct major_info {char const* device_name; int /*<<< orphan*/  next; int /*<<< orphan*/  minor_lock; int /*<<< orphan*/  minor_idr; int /*<<< orphan*/  major; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct major_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  major_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(dev_t major, const char *device_name)
{
	struct major_info *tap_major;

	tap_major = FUNC2(sizeof(*tap_major), GFP_ATOMIC);
	if (!tap_major)
		return -ENOMEM;

	tap_major->major = FUNC0(major);

	FUNC1(&tap_major->minor_idr);
	FUNC4(&tap_major->minor_lock);

	tap_major->device_name = device_name;

	FUNC3(&tap_major->next, &major_list);
	return 0;
}