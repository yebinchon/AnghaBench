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
struct s5p_jpeg_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct s5p_jpeg_buffer*) ; 

__attribute__((used)) static int FUNC1(struct s5p_jpeg_buffer *buf, unsigned int *word)
{
	unsigned int temp;
	int byte;

	byte = FUNC0(buf);
	if (byte == -1)
		return -1;
	temp = byte << 8;
	byte = FUNC0(buf);
	if (byte == -1)
		return -1;
	*word = (unsigned int)byte | temp;
	return 0;
}