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

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(unsigned char *list, int list_len,
			      unsigned char *mac)
{
	while (list_len) {
		if (!FUNC0(list, mac, ETH_ALEN))
			return 1;
		list += ETH_ALEN;
		list_len--;
	}
	return 0;
}