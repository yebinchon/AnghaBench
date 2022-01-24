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
struct de_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RxMissed ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct de_private *de)
{
	u32 tmp = FUNC1(RxMissed); /* self-clearing */

	FUNC0(de, tmp);
}