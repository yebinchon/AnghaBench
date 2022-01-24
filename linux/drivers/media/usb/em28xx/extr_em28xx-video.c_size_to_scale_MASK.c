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
struct em28xx {int dummy; } ;

/* Variables and functions */
 unsigned int EM28XX_HVSCALE_MAX ; 
 unsigned int FUNC0 (struct em28xx*) ; 
 unsigned int FUNC1 (struct em28xx*) ; 

__attribute__((used)) static void FUNC2(struct em28xx *dev,
			  unsigned int width, unsigned int height,
			unsigned int *hscale, unsigned int *vscale)
{
	unsigned int          maxw = FUNC1(dev);
	unsigned int          maxh = FUNC0(dev);

	*hscale = (((unsigned long)maxw) << 12) / width - 4096L;
	if (*hscale > EM28XX_HVSCALE_MAX)
		*hscale = EM28XX_HVSCALE_MAX;

	*vscale = (((unsigned long)maxh) << 12) / height - 4096L;
	if (*vscale > EM28XX_HVSCALE_MAX)
		*vscale = EM28XX_HVSCALE_MAX;
}