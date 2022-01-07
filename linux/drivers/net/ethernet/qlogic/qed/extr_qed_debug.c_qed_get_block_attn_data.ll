; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_get_block_attn_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_get_block_attn_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.dbg_attn_block_type_data = type { i32 }
%struct.dbg_attn_block = type { %struct.dbg_attn_block_type_data* }

@s_dbg_arrays = common dso_local global %struct.TYPE_2__* null, align 8
@BIN_BUF_DBG_ATTN_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dbg_attn_block_type_data* (i32, i32)* @qed_get_block_attn_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dbg_attn_block_type_data* @qed_get_block_attn_data(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dbg_attn_block*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %7 = load i64, i64* @BIN_BUF_DBG_ATTN_BLOCKS, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dbg_attn_block*
  store %struct.dbg_attn_block* %11, %struct.dbg_attn_block** %5, align 8
  %12 = load %struct.dbg_attn_block*, %struct.dbg_attn_block** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.dbg_attn_block, %struct.dbg_attn_block* %12, i64 %14
  %16 = getelementptr inbounds %struct.dbg_attn_block, %struct.dbg_attn_block* %15, i32 0, i32 0
  %17 = load %struct.dbg_attn_block_type_data*, %struct.dbg_attn_block_type_data** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dbg_attn_block_type_data, %struct.dbg_attn_block_type_data* %17, i64 %19
  ret %struct.dbg_attn_block_type_data* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
