#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct si470x_device {size_t band; } ;
struct TYPE_2__ {unsigned int rangelow; int /*<<< orphan*/  rangehigh; } ;

/* Variables and functions */
 TYPE_1__* bands ; 
 unsigned int FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct si470x_device*) ; 
 int FUNC2 (struct si470x_device*,unsigned short) ; 

int FUNC3(struct si470x_device *radio, unsigned int freq)
{
	unsigned short chan;

	freq = FUNC0(freq, bands[radio->band].rangelow,
			   bands[radio->band].rangehigh);
	/* Chan = [ Freq (Mhz) - Bottom of Band (MHz) ] / Spacing (kHz) */
	chan = (freq - bands[radio->band].rangelow) / FUNC1(radio);

	return FUNC2(radio, chan);
}