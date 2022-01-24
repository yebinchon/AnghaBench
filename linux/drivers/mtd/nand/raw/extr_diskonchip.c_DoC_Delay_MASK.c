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
struct doc_priv {int /*<<< orphan*/  virtadr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOCStatus ; 
 scalar_t__ FUNC0 (struct doc_priv*) ; 
 scalar_t__ FUNC1 (struct doc_priv*) ; 
 int /*<<< orphan*/  Mplus_NOP ; 
 int /*<<< orphan*/  NOP ; 
 char FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct doc_priv *doc, unsigned short cycles)
{
	volatile char dummy;
	int i;

	for (i = 0; i < cycles; i++) {
		if (FUNC0(doc))
			dummy = FUNC2(doc->virtadr, NOP);
		else if (FUNC1(doc))
			dummy = FUNC2(doc->virtadr, Mplus_NOP);
		else
			dummy = FUNC2(doc->virtadr, DOCStatus);
	}

}