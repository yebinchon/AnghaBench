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
struct stk_sio_buffer {int dummy; } ;
struct stk_camera {int n_sbufs; int /*<<< orphan*/ * sio_bufs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct stk_camera*,int) ; 

__attribute__((used)) static int FUNC3(struct stk_camera *dev, unsigned n_sbufs)
{
	int i;
	if (dev->sio_bufs != NULL)
		FUNC1("sio_bufs already allocated\n");
	else {
		dev->sio_bufs = FUNC0(n_sbufs,
					sizeof(struct stk_sio_buffer),
					GFP_KERNEL);
		if (dev->sio_bufs == NULL)
			return -ENOMEM;
		for (i = 0; i < n_sbufs; i++) {
			if (FUNC2(dev, i))
				return (dev->n_sbufs > 1 ? 0 : -ENOMEM);
			dev->n_sbufs = i+1;
		}
	}
	return 0;
}