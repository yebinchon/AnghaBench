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
struct cec_gpio {int /*<<< orphan*/  hpd_gpio; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 int ENOTTY ; 
 struct cec_gpio* FUNC0 (struct cec_adapter*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cec_adapter *adap)
{
	struct cec_gpio *cec = FUNC0(adap);

	if (!cec->hpd_gpio)
		return -ENOTTY;
	return FUNC1(cec->hpd_gpio);
}