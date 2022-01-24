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

/* Variables and functions */
 int /*<<< orphan*/  IPW_CMD_RSN_CAPABILITIES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ipw_priv*,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC2(struct ipw_priv *priv,
			    char *capabilities, int length)
{
	FUNC0("HOST_CMD_RSN_CAPABILITIES\n");

	return FUNC1(priv, IPW_CMD_RSN_CAPABILITIES, length,
				capabilities);
}