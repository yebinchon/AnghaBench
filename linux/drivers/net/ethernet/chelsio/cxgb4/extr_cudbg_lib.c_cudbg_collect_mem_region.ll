; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_mem_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i32 }
%struct.cudbg_buffer = type { i32 }
%struct.cudbg_error = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*, i32)* @cudbg_collect_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_collect_mem_region(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2, i32 %3) #0 {
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %11 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @cudbg_mem_region_size(%struct.cudbg_init* %10, %struct.cudbg_error* %11, i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %15 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %19 = call i32 @cudbg_read_fw_mem(%struct.cudbg_init* %14, %struct.cudbg_buffer* %15, i32 %16, i64 %17, %struct.cudbg_error* %18)
  ret i32 %19
}

declare dso_local i64 @cudbg_mem_region_size(%struct.cudbg_init*, %struct.cudbg_error*, i32) #1

declare dso_local i32 @cudbg_read_fw_mem(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, i64, %struct.cudbg_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
