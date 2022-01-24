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
struct vb2_queue {int dummy; } ;
struct solo_enc_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct solo_enc_dev*) ; 
 struct solo_enc_dev* FUNC1 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC2(struct vb2_queue *q, unsigned int count)
{
	struct solo_enc_dev *solo_enc = FUNC1(q);

	return FUNC0(solo_enc);
}