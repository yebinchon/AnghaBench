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
typedef  int /*<<< orphan*/  u32 ;
struct rr_private {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rr_private*,size_t,unsigned char*,int) ; 

__attribute__((used)) static u32 FUNC2(struct rr_private *rrpriv,
			    size_t offset)
{
	__be32 word;

	if ((FUNC1(rrpriv, offset,
			    (unsigned char *)&word, 4) == 4))
		return FUNC0(word);
	return 0;
}