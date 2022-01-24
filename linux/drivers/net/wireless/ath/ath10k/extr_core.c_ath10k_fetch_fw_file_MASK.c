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
struct firmware {int dummy; } ;
struct ath10k {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int ENOENT ; 
 struct firmware const* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC2 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static const struct firmware *FUNC4(struct ath10k *ar,
						   const char *dir,
						   const char *file)
{
	char filename[100];
	const struct firmware *fw;
	int ret;

	if (file == NULL)
		return FUNC0(-ENOENT);

	if (dir == NULL)
		dir = ".";

	FUNC3(filename, sizeof(filename), "%s/%s", dir, file);
	ret = FUNC2(&fw, filename, ar->dev);
	FUNC1(ar, ATH10K_DBG_BOOT, "boot fw request '%s': %d\n",
		   filename, ret);

	if (ret)
		return FUNC0(ret);

	return fw;
}