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
typedef  scalar_t__ u32 ;
struct ath_softc {int /*<<< orphan*/ * rng_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_RNG_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath_softc*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  rng_queue ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void *data)
{
	int bytes_read;
	struct ath_softc *sc = data;
	u32 *rng_buf;
	u32 delay, fail_stats = 0;

	rng_buf = FUNC5(ATH9K_RNG_BUF_SIZE, sizeof(u32), GFP_KERNEL);
	if (!rng_buf)
		goto out;

	while (!FUNC6()) {
		bytes_read = FUNC2(sc, rng_buf,
						 ATH9K_RNG_BUF_SIZE);
		if (FUNC8(!bytes_read)) {
			delay = FUNC3(++fail_stats);
			FUNC9(rng_queue,
							 FUNC6(),
							 FUNC7(delay));
			continue;
		}

		fail_stats = 0;

		/* sleep until entropy bits under write_wakeup_threshold */
		FUNC1((void *)rng_buf, bytes_read,
					   FUNC0(bytes_read));
	}

	FUNC4(rng_buf);
out:
	sc->rng_task = NULL;

	return 0;
}