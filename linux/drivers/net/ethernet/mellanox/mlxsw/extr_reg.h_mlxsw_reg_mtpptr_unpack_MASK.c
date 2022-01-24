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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,unsigned int) ; 
 int FUNC3 (char const*,unsigned int) ; 
 int FUNC4 (char const*,unsigned int) ; 

__attribute__((used)) static inline void FUNC5(const char *payload,
					   unsigned int rec,
					   u8 *p_message_type,
					   u8 *p_domain_number,
					   u16 *p_sequence_id,
					   u64 *p_timestamp)
{
	u32 timestamp_high, timestamp_low;

	*p_message_type = FUNC1(payload, rec);
	*p_domain_number = FUNC0(payload, rec);
	*p_sequence_id = FUNC2(payload, rec);
	timestamp_high = FUNC3(payload, rec);
	timestamp_low = FUNC4(payload, rec);
	*p_timestamp = (u64)timestamp_high << 32 | timestamp_low;
}