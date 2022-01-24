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
typedef  size_t u64 ;
struct niu {TYPE_1__* parent; } ;
struct ethtool_rxnfc {scalar_t__ data; int /*<<< orphan*/  flow_type; } ;
struct TYPE_2__ {int* tcam_key; int /*<<< orphan*/ * flow_key; } ;

/* Variables and functions */
 size_t CLASS_CODE_USER_PROG1 ; 
 int EINVAL ; 
 scalar_t__ RXH_DISCARD ; 
 int TCAM_KEY_DISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct niu *np, struct ethtool_rxnfc *nfc)
{
	u64 class;

	nfc->data = 0;

	if (!FUNC0(nfc->flow_type, &class))
		return -EINVAL;

	if (np->parent->tcam_key[class - CLASS_CODE_USER_PROG1] &
	    TCAM_KEY_DISC)
		nfc->data = RXH_DISCARD;
	else
		nfc->data = FUNC1(np->parent->flow_key[class -
						      CLASS_CODE_USER_PROG1]);
	return 0;
}