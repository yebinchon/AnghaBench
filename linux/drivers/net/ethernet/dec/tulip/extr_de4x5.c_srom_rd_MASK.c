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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int DT_CS ; 
 int DT_IN ; 
 int SROM_RD ; 
 int SROM_SR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 short FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static short
FUNC5(u_long addr, u_char offset)
{
    FUNC0(SROM_RD | SROM_SR, addr);

    FUNC4(SROM_RD | SROM_SR | DT_CS, addr);
    FUNC2(SROM_RD | SROM_SR | DT_IN | DT_CS, addr);
    FUNC1(SROM_RD | SROM_SR | DT_CS, addr, offset);

    return FUNC3(SROM_RD | SROM_SR | DT_CS, addr);
}