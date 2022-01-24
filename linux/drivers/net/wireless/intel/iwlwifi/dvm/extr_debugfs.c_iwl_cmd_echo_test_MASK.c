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
struct iwl_priv {int dummy; } ;
struct iwl_host_cmd {int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int) ; 
 int /*<<< orphan*/  REPLY_ECHO ; 
 int FUNC2 (struct iwl_priv*,struct iwl_host_cmd*) ; 

__attribute__((used)) static int FUNC3(struct iwl_priv *priv)
{
	int ret;
	struct iwl_host_cmd cmd = {
		.id = REPLY_ECHO,
		.len = 0 ,
	};

	ret = FUNC2(priv, &cmd);
	if (ret)
		FUNC1(priv, "echo testing fail: 0X%x\n", ret);
	else
		FUNC0(priv, "echo testing pass\n");
	return ret;
}