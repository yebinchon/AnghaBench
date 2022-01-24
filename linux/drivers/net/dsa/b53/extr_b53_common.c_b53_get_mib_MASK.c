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
struct b53_mib_desc {int dummy; } ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 struct b53_mib_desc const* b53_mibs ; 
 struct b53_mib_desc const* b53_mibs_58xx ; 
 struct b53_mib_desc const* b53_mibs_63xx ; 
 struct b53_mib_desc const* b53_mibs_65 ; 
 scalar_t__ FUNC0 (struct b53_device*) ; 
 scalar_t__ FUNC1 (struct b53_device*) ; 
 scalar_t__ FUNC2 (struct b53_device*) ; 

__attribute__((used)) static const struct b53_mib_desc *FUNC3(struct b53_device *dev)
{
	if (FUNC0(dev))
		return b53_mibs_65;
	else if (FUNC2(dev))
		return b53_mibs_63xx;
	else if (FUNC1(dev))
		return b53_mibs_58xx;
	else
		return b53_mibs;
}