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
struct sd {int /*<<< orphan*/  jpegqual; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sd*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sd *sd)
{
	FUNC1(sd->jpegqual, false);
	FUNC0(sd, 0x39, 0x0000); /* disable JPEG encoder */
	FUNC0(sd, 0x16, 0x0000); /* stop video capture */
}