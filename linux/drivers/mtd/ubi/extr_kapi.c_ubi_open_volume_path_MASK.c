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
struct ubi_volume_desc {int dummy; } ;
struct path {int dummy; } ;
struct kstat {int /*<<< orphan*/  rdev; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int EINVAL ; 
 int ENODEV ; 
 struct ubi_volume_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  LOOKUP_FOLLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATX_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct ubi_volume_desc* FUNC8 (int,int,int) ; 
 int FUNC9 (struct path*,struct kstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ubi_volume_desc *FUNC10(const char *pathname, int mode)
{
	int error, ubi_num, vol_id;
	struct path path;
	struct kstat stat;

	FUNC4("open volume %s, mode %d", pathname, mode);

	if (!pathname || !*pathname)
		return FUNC0(-EINVAL);

	error = FUNC5(pathname, LOOKUP_FOLLOW, &path);
	if (error)
		return FUNC0(error);

	error = FUNC9(&path, &stat, STATX_TYPE, AT_STATX_SYNC_AS_STAT);
	FUNC6(&path);
	if (error)
		return FUNC0(error);

	if (!FUNC3(stat.mode))
		return FUNC0(-EINVAL);

	ubi_num = FUNC7(FUNC1(stat.rdev));
	vol_id = FUNC2(stat.rdev) - 1;

	if (vol_id >= 0 && ubi_num >= 0)
		return FUNC8(ubi_num, vol_id, mode);
	return FUNC0(-ENODEV);
}