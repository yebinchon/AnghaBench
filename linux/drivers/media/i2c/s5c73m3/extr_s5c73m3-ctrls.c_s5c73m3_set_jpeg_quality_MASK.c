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
struct s5c73m3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_IMAGE_QUALITY ; 
 int COMM_IMAGE_QUALITY_FINE ; 
 int COMM_IMAGE_QUALITY_NORMAL ; 
 int COMM_IMAGE_QUALITY_SUPERFINE ; 
 int FUNC0 (struct s5c73m3*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct s5c73m3 *state, int quality)
{
	int reg;

	if (quality <= 65)
		reg = COMM_IMAGE_QUALITY_NORMAL;
	else if (quality <= 75)
		reg = COMM_IMAGE_QUALITY_FINE;
	else
		reg = COMM_IMAGE_QUALITY_SUPERFINE;

	return FUNC0(state, COMM_IMAGE_QUALITY, reg);
}