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
struct nlattr {int dummy; } ;

/* Variables and functions */
 int MACSEC_NUM_AN ; 
 size_t MACSEC_SA_ATTR_ACTIVE ; 
 size_t MACSEC_SA_ATTR_AN ; 
 size_t MACSEC_SA_ATTR_KEY ; 
 size_t MACSEC_SA_ATTR_KEYID ; 
 size_t MACSEC_SA_ATTR_PN ; 
 scalar_t__ FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr*) ; 

__attribute__((used)) static bool FUNC2(struct nlattr **attrs)
{
	if (!attrs[MACSEC_SA_ATTR_AN] ||
	    attrs[MACSEC_SA_ATTR_KEY] ||
	    attrs[MACSEC_SA_ATTR_KEYID])
		return false;

	if (FUNC1(attrs[MACSEC_SA_ATTR_AN]) >= MACSEC_NUM_AN)
		return false;

	if (attrs[MACSEC_SA_ATTR_PN] && FUNC0(attrs[MACSEC_SA_ATTR_PN]) == 0)
		return false;

	if (attrs[MACSEC_SA_ATTR_ACTIVE]) {
		if (FUNC1(attrs[MACSEC_SA_ATTR_ACTIVE]) > 1)
			return false;
	}

	return true;
}