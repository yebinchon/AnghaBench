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
typedef  int u32 ;
struct img_ir_priv {int /*<<< orphan*/  raw; int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMG_IR_CORE_REV ; 
 int IMG_IR_DESIGNER ; 
 int IMG_IR_DESIGNER_SHIFT ; 
 int IMG_IR_MAINT_REV ; 
 int IMG_IR_MAINT_REV_SHIFT ; 
 int IMG_IR_MAJOR_REV ; 
 int IMG_IR_MAJOR_REV_SHIFT ; 
 int IMG_IR_MINOR_REV ; 
 int IMG_IR_MINOR_REV_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct img_ir_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct img_ir_priv *priv)
{
	u32 core_rev = FUNC3(priv, IMG_IR_CORE_REV);

	FUNC0(priv->dev,
		 "IMG IR Decoder (%d.%d.%d.%d) probed successfully\n",
		 (core_rev & IMG_IR_DESIGNER) >> IMG_IR_DESIGNER_SHIFT,
		 (core_rev & IMG_IR_MAJOR_REV) >> IMG_IR_MAJOR_REV_SHIFT,
		 (core_rev & IMG_IR_MINOR_REV) >> IMG_IR_MINOR_REV_SHIFT,
		 (core_rev & IMG_IR_MAINT_REV) >> IMG_IR_MAINT_REV_SHIFT);
	FUNC0(priv->dev, "Modes:%s%s\n",
		 FUNC1(&priv->hw) ? " hardware" : "",
		 FUNC2(&priv->raw) ? " raw" : "");
}