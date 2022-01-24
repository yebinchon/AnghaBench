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
typedef  int u32 ;
struct av7110 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AV7110_FW_AUDIO_COMMAND ; 
 int /*<<< orphan*/  COMTYPE_MISC ; 
 int FUNC0 (struct av7110*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static inline int FUNC1(struct av7110 *av7110, u32 com)
{
	return FUNC0(av7110, COMTYPE_MISC, AV7110_FW_AUDIO_COMMAND, 2,
			     (com>>16), (com&0xffff));
}