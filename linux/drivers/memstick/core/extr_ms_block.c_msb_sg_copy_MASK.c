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
struct scatterlist {size_t length; scalar_t__ offset; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 scalar_t__ FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ ,size_t,scalar_t__) ; 

__attribute__((used)) static size_t FUNC6(struct scatterlist *sg_from,
	struct scatterlist *sg_to, int to_nents, size_t offset, size_t len)
{
	size_t copied = 0;

	while (offset > 0) {
		if (offset >= sg_from->length) {
			if (FUNC1(sg_from))
				return 0;

			offset -= sg_from->length;
			sg_from = FUNC3(sg_from);
			continue;
		}

		copied = FUNC0(len, sg_from->length - offset);
		FUNC5(sg_to, FUNC4(sg_from),
			copied, sg_from->offset + offset);

		len -= copied;
		offset = 0;

		if (FUNC1(sg_from) || !len)
			goto out;

		sg_to = FUNC3(sg_to);
		to_nents--;
		sg_from = FUNC3(sg_from);
	}

	while (len > sg_from->length && to_nents--) {
		len -= sg_from->length;
		copied += sg_from->length;

		FUNC5(sg_to, FUNC4(sg_from),
				sg_from->length, sg_from->offset);

		if (FUNC1(sg_from) || !len)
			goto out;

		sg_from = FUNC3(sg_from);
		sg_to = FUNC3(sg_to);
	}

	if (len && to_nents) {
		FUNC5(sg_to, FUNC4(sg_from), len, sg_from->offset);
		copied += len;
	}
out:
	FUNC2(sg_to);
	return copied;
}