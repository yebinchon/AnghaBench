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
struct virtqueue {int dummy; } ;
struct napi_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct napi_struct*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*) ; 
 int FUNC3 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct napi_struct*,struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*,int) ; 

__attribute__((used)) static void FUNC6(struct napi_struct *napi,
				    struct virtqueue *vq, int processed)
{
	int opaque;

	opaque = FUNC3(vq);
	if (FUNC0(napi, processed)) {
		if (FUNC1(FUNC5(vq, opaque)))
			FUNC4(napi, vq);
	} else {
		FUNC2(vq);
	}
}