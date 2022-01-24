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
struct net_device {int dummy; } ;
struct ethtool_dump {int /*<<< orphan*/  len; } ;
struct bnxt {int hwrm_spec_code; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct bnxt*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnxt* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ethtool_dump *dump,
			      void *buf)
{
	struct bnxt *bp = FUNC2(dev);

	if (bp->hwrm_spec_code < 0x10801)
		return -EOPNOTSUPP;

	FUNC1(buf, 0, dump->len);

	return FUNC0(bp, buf, &dump->len);
}