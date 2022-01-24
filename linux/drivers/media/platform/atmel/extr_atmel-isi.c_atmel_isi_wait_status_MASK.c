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
struct atmel_isi {int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ISI_CTRL ; 
 int /*<<< orphan*/  ISI_CTRL_DIS ; 
 int /*<<< orphan*/  ISI_CTRL_SRST ; 
 int /*<<< orphan*/  ISI_INTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_isi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct atmel_isi *isi, int wait_reset)
{
	unsigned long timeout;
	/*
	 * The reset or disable will only succeed if we have a
	 * pixel clock from the camera.
	 */
	FUNC0(&isi->complete);

	if (wait_reset) {
		FUNC1(isi, ISI_INTEN, ISI_CTRL_SRST);
		FUNC1(isi, ISI_CTRL, ISI_CTRL_SRST);
	} else {
		FUNC1(isi, ISI_INTEN, ISI_CTRL_DIS);
		FUNC1(isi, ISI_CTRL, ISI_CTRL_DIS);
	}

	timeout = FUNC3(&isi->complete,
			FUNC2(500));
	if (timeout == 0)
		return -ETIMEDOUT;

	return 0;
}