#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t bytes; } ;
struct mlxsw_item {TYPE_1__ size; } ;

/* Variables and functions */
 char* FUNC0 (char*,struct mlxsw_item const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC2(const struct mlxsw_item *storage_item,
				    const struct mlxsw_item *output_item,
				    char *storage, char *output)
{
	char *storage_data = FUNC0(storage, storage_item, 0);
	char *output_data = FUNC0(output, output_item, 0);
	size_t len = output_item->size.bytes;

	FUNC1(output_data, storage_data, len);
}