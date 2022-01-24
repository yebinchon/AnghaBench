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
struct img_ir_decoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct img_ir_decoder*) ; 
 struct img_ir_decoder** img_ir_decoders ; 
 int /*<<< orphan*/  img_ir_decoders_lock ; 
 int img_ir_decoders_preprocessed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct img_ir_decoder **decp;

	FUNC1(&img_ir_decoders_lock);
	if (!img_ir_decoders_preprocessed) {
		for (decp = img_ir_decoders; *decp; ++decp)
			FUNC0(*decp);
		img_ir_decoders_preprocessed = true;
	}
	FUNC2(&img_ir_decoders_lock);
}