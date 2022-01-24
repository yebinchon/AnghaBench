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
struct inode {scalar_t__ i_private; } ;
struct file {int dummy; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dpaa2_dbg_ch_show ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,struct dpaa2_eth_priv*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	int err;
	struct dpaa2_eth_priv *priv = (struct dpaa2_eth_priv *)inode->i_private;

	err = FUNC1(file, dpaa2_dbg_ch_show, priv);
	if (err < 0)
		FUNC0(priv->net_dev, "single_open() failed\n");

	return err;
}