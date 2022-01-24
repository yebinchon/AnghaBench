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
struct ipw_priv {int dummy; } ;
struct ipw_associate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPW_CMD_ASSOCIATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ,int,struct ipw_associate*) ; 

__attribute__((used)) static int FUNC2(struct ipw_priv *priv,
			      struct ipw_associate *associate)
{
	if (!priv || !associate) {
		FUNC0("Invalid args\n");
		return -1;
	}

	return FUNC1(priv, IPW_CMD_ASSOCIATE, sizeof(*associate),
				associate);
}