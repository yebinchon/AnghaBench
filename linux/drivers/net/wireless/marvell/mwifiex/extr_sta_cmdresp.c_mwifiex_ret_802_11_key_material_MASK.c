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
struct mwifiex_private {TYPE_1__* adapter; } ;
struct host_cmd_ds_command {int dummy; } ;
struct TYPE_2__ {scalar_t__ key_api_major_ver; } ;

/* Variables and functions */
 scalar_t__ KEY_API_VER_MAJOR_V2 ; 
 int FUNC0 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC1 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_private *priv,
					   struct host_cmd_ds_command *resp)
{
	if (priv->adapter->key_api_major_ver == KEY_API_VER_MAJOR_V2)
		return FUNC1(priv, resp);
	else
		return FUNC0(priv, resp);
}