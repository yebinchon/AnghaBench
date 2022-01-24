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
struct nfp_hwinfo {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 unsigned long HWINFO_WAIT ; 
 unsigned long HZ ; 
 struct nfp_hwinfo* FUNC0 (struct nfp_cpp*,size_t*) ; 
 unsigned long jiffies ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_cpp*,char*) ; 
 scalar_t__ FUNC3 (unsigned long const,unsigned long const) ; 

__attribute__((used)) static struct nfp_hwinfo *FUNC4(struct nfp_cpp *cpp, size_t *hwdb_size)
{
	const unsigned long wait_until = jiffies + HWINFO_WAIT * HZ;
	struct nfp_hwinfo *db;
	int err;

	for (;;) {
		const unsigned long start_time = jiffies;

		db = FUNC0(cpp, hwdb_size);
		if (db)
			return db;

		err = FUNC1(100);
		if (err || FUNC3(start_time, wait_until)) {
			FUNC2(cpp, "NFP access error\n");
			return NULL;
		}
	}
}