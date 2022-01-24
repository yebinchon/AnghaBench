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
struct jpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HACTBL_SIZE ; 
 int /*<<< orphan*/  HDCTBL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  hactbl_chr ; 
 int /*<<< orphan*/  hactbl_lum ; 
 int /*<<< orphan*/  hdctbl_chr ; 
 int /*<<< orphan*/  hdctbl_lum ; 
 int /*<<< orphan*/  FUNC2 (struct jpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct jpu *jpu)
{
	FUNC2(jpu, FUNC1(0), hdctbl_lum, HDCTBL_SIZE);
	FUNC2(jpu, FUNC0(0), hactbl_lum, HACTBL_SIZE);
	FUNC2(jpu, FUNC1(1), hdctbl_chr, HDCTBL_SIZE);
	FUNC2(jpu, FUNC0(1), hactbl_chr, HACTBL_SIZE);
}