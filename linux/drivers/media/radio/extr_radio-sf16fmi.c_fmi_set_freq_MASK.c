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
struct fmi {int curfreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSF16_MAXFREQ ; 
 int /*<<< orphan*/  RSF16_MINFREQ ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fmi_set_pins ; 
 int /*<<< orphan*/  FUNC1 (int,struct fmi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fmi *fmi)
{
	fmi->curfreq = FUNC0(fmi->curfreq, RSF16_MINFREQ, RSF16_MAXFREQ);
	/* rounding in steps of 800 to match the freq
	   that will be used */
	FUNC1((fmi->curfreq / 800) * 800, fmi, fmi_set_pins);
}