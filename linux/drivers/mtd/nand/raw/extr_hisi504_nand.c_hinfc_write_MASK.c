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
struct hinfc_host {scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct hinfc_host *host, unsigned int value,
			       unsigned int reg)
{
	FUNC0(value, host->iobase + reg);
}