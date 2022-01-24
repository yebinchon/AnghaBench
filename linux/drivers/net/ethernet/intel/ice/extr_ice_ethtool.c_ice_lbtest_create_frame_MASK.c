#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ice_pf *pf, u8 **ret_data, u16 size)
{
	u8 *data;

	if (!pf)
		return -EINVAL;

	data = FUNC0(&pf->pdev->dev, size, GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* Since the ethernet test frame should always be at least
	 * 64 bytes long, fill some octets in the payload with test data.
	 */
	FUNC1(data, 0xFF, size);
	data[32] = 0xDE;
	data[42] = 0xAD;
	data[44] = 0xBE;
	data[46] = 0xEF;

	*ret_data = data;

	return 0;
}