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
typedef  int vhalf ;
typedef  int byte ;

/* Variables and functions */
 scalar_t__ PA_83902 ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static inline byte
FUNC1 (int reg)
{
  byte val;

  val = (*(vhalf *) (PA_83902 + ((reg) << 1)) >> 8) & 0xff;
  FUNC0 ();
  return val;
}