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
struct ave_private {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int AVE_PFMBIT_MASK ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int AVE_PFMBYTE_MASK0 ; 
 int AVE_PFMBYTE_MASK1 ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 unsigned int AVE_PF_SIZE ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int EINVAL ; 
 int FUNC4 (int,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,unsigned char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,unsigned int) ; 
 struct ave_private* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev,
				 unsigned int entry,
				 const unsigned char *mac_addr,
				 unsigned int set_size)
{
	struct ave_private *priv = FUNC9(ndev);

	if (FUNC5(entry > AVE_PF_SIZE))
		return -EINVAL;
	if (FUNC5(set_size > 6))
		return -EINVAL;

	FUNC8(ndev, entry);

	/* set MAC address for the filter */
	FUNC6(ndev, mac_addr,
			     FUNC3(entry), FUNC3(entry) + 4);

	/* set byte mask */
	FUNC10(FUNC4(31, set_size) & AVE_PFMBYTE_MASK0,
	       priv->base + FUNC1(entry));
	FUNC10(AVE_PFMBYTE_MASK1, priv->base + FUNC1(entry) + 4);

	/* set bit mask filter */
	FUNC10(AVE_PFMBIT_MASK, priv->base + FUNC0(entry));

	/* set selector to ring 0 */
	FUNC10(0, priv->base + FUNC2(entry));

	/* restart filter */
	FUNC7(ndev, entry);

	return 0;
}