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
struct img_ir_decoder {int tolerance; int /*<<< orphan*/  timings; int /*<<< orphan*/  rtimings; int /*<<< orphan*/  unit; scalar_t__ repeat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct img_ir_decoder *decoder)
{
	/* default tolerance */
	if (!decoder->tolerance)
		decoder->tolerance = 10; /* percent */
	/* and convert tolerance to fraction out of 128 */
	decoder->tolerance = decoder->tolerance * 128 / 100;

	/* fill in implicit fields */
	FUNC1(&decoder->timings, decoder->unit);

	/* do the same for repeat timings if applicable */
	if (decoder->repeat) {
		FUNC1(&decoder->rtimings, decoder->unit);
		FUNC0(&decoder->rtimings, &decoder->timings);
	}
}