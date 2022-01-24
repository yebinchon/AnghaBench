#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct obj_mlme {scalar_t__ state; int code; int /*<<< orphan*/  address; } ;
struct TYPE_5__ {int /*<<< orphan*/  acl; } ;
typedef  TYPE_1__ islpci_private ;
typedef  enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;

/* Variables and functions */
 scalar_t__ DOT11_STATE_ASSOCING ; 
 scalar_t__ DOT11_STATE_AUTHING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,struct obj_mlme*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(islpci_private *priv, struct obj_mlme *mlme, enum oid_num_t oid)
{
	if (((mlme->state == DOT11_STATE_AUTHING) ||
	     (mlme->state == DOT11_STATE_ASSOCING))
	    && FUNC0(priv)) {
		/* Someone is requesting auth and we must respond. Just send back
		 * the trap with error code set accordingly.
		 */
		mlme->code = FUNC2(&priv->acl,
						mlme->address) ? 0 : 1;
		FUNC1(priv, oid, 0, mlme);
	}
}