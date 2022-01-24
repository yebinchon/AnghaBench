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
struct adapter {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct adapter*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct adapter*,unsigned int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,unsigned int,int,int) ; 

int FUNC3(struct adapter *adap, unsigned int viid,
			       const u8 *addr, const u8 *mask,
			       unsigned int vni, unsigned int vni_mask,
			       u8 dip_hit, u8 lookup_type, bool sleep_ok)
{
	int ret;

	ret = FUNC1(adap, viid, addr, mask, vni, vni_mask,
				      dip_hit, lookup_type, sleep_ok);
	if (ret < 0)
		return ret;

	if (FUNC0(adap, addr, ret, mask)) {
		ret = -ENOMEM;
		FUNC2(adap, viid, ret, sleep_ok);
	}
	return ret;
}