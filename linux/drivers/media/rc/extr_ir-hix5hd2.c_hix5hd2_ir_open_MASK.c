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
struct rc_dev {struct hix5hd2_ir_priv* priv; } ;
struct hix5hd2_ir_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hix5hd2_ir_priv*) ; 
 int FUNC1 (struct hix5hd2_ir_priv*,int) ; 

__attribute__((used)) static int FUNC2(struct rc_dev *rdev)
{
	struct hix5hd2_ir_priv *priv = rdev->priv;
	int ret;

	ret = FUNC1(priv, true);
	if (ret)
		return ret;

	ret = FUNC0(priv);
	if (ret) {
		FUNC1(priv, false);
		return ret;
	}
	return 0;
}