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
struct seq_file {int dummy; } ;
struct cec_gpio {char* cec_irq; scalar_t__ v5_is_high; scalar_t__ v5_gpio; scalar_t__ hpd_is_high; scalar_t__ hpd_gpio; scalar_t__ cec_is_low; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 struct cec_gpio* FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static void FUNC2(struct cec_adapter *adap, struct seq_file *file)
{
	struct cec_gpio *cec = FUNC0(adap);

	FUNC1(file, "mode: %s\n", cec->cec_is_low ? "low-drive" : "read");
	FUNC1(file, "using irq: %d\n", cec->cec_irq);
	if (cec->hpd_gpio)
		FUNC1(file, "hpd: %s\n",
			   cec->hpd_is_high ? "high" : "low");
	if (cec->v5_gpio)
		FUNC1(file, "5V: %s\n",
			   cec->v5_is_high ? "high" : "low");
}