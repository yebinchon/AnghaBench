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
struct si470x_device {int (* get_register ) (struct si470x_device*,size_t) ;int* registers; size_t band; } ;
struct TYPE_2__ {int rangelow; } ;

/* Variables and functions */
 size_t READCHAN ; 
 int READCHAN_READCHAN ; 
 TYPE_1__* bands ; 
 int FUNC0 (struct si470x_device*) ; 
 int FUNC1 (struct si470x_device*,size_t) ; 

__attribute__((used)) static int FUNC2(struct si470x_device *radio, unsigned int *freq)
{
	int chan, retval;

	/* read channel */
	retval = radio->get_register(radio, READCHAN);
	chan = radio->registers[READCHAN] & READCHAN_READCHAN;

	/* Frequency (MHz) = Spacing (kHz) x Channel + Bottom of Band (MHz) */
	*freq = chan * FUNC0(radio) + bands[radio->band].rangelow;

	return retval;
}