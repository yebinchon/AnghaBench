; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_update_read_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_update_read_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_instr_queue = type { i32, i32, i32, i32 }

@CN23XX_PKT_IN_DONE_CNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_instr_queue*)* @cn23xx_update_read_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn23xx_update_read_index(%struct.octeon_instr_queue* %0) #0 {
  %2 = alloca %struct.octeon_instr_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.octeon_instr_queue* %0, %struct.octeon_instr_queue** %2, align 8
  %6 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %2, align 8
  %7 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @readl(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %2, align 8
  %17 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %2, align 8
  %19 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CN23XX_PKT_IN_DONE_CNT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = add nsw i32 %20, %23
  %25 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %2, align 8
  %26 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = srem i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
