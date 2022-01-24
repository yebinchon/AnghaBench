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
struct mvpp2 {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int MVPP2_PRS_TCAM_SRAM_SIZE ; 
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int FUNC1 (struct dentry*,struct mvpp2*,int) ; 

__attribute__((used)) static int FUNC2(struct dentry *parent, struct mvpp2 *priv)
{
	struct dentry *prs_dir;
	int i, ret;

	prs_dir = FUNC0("parser", parent);

	for (i = 0; i < MVPP2_PRS_TCAM_SRAM_SIZE; i++) {
		ret = FUNC1(prs_dir, priv, i);
		if (ret)
			return ret;
	}

	return 0;
}