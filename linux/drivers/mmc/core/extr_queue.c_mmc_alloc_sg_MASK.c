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
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct scatterlist* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int) ; 

__attribute__((used)) static struct scatterlist *FUNC2(int sg_len, gfp_t gfp)
{
	struct scatterlist *sg;

	sg = FUNC0(sg_len, sizeof(*sg), gfp);
	if (sg)
		FUNC1(sg, sg_len);

	return sg;
}