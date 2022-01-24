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
typedef  int /*<<< orphan*/  u8 ;
struct nfp_devlink_versions {int /*<<< orphan*/  key; int /*<<< orphan*/  id; } ;
struct devlink_info_req {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct nfp_devlink_versions*) ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (struct devlink_info_req*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (struct devlink_info_req*,int /*<<< orphan*/ ,char const*) ; 
 struct nfp_devlink_versions* nfp_devlink_versions_nsp ; 
 char* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int
FUNC6(struct devlink_info_req *req, bool flash,
			     const u8 *buf, unsigned int size)
{
	unsigned int i;
	int err;

	for (i = 0; i < FUNC0(nfp_devlink_versions_nsp); i++) {
		const struct nfp_devlink_versions *info;
		const char *version;

		info = &nfp_devlink_versions_nsp[i];

		version = FUNC5(info->id, flash, buf, size);
		if (FUNC1(version)) {
			if (FUNC2(version) == -ENOENT)
				continue;
			else
				return FUNC2(version);
		}

		if (flash)
			err = FUNC4(req, info->key,
							      version);
		else
			err = FUNC3(req, info->key,
							       version);
		if (err)
			return err;
	}

	return 0;
}