; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_sync_magic_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_sync_magic_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32 }
%struct.ispstat_buffer = type { i32 }

@dma_sync_single_range_for_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, %struct.ispstat_buffer*, i32, i32)* @isp_stat_buf_sync_magic_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_stat_buf_sync_magic_for_cpu(%struct.ispstat* %0, %struct.ispstat_buffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ispstat*, align 8
  %6 = alloca %struct.ispstat_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %5, align 8
  store %struct.ispstat_buffer* %1, %struct.ispstat_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %10 = call i64 @ISP_STAT_USES_DMAENGINE(%struct.ispstat* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %20

13:                                               ; preds = %4
  %14 = load %struct.ispstat*, %struct.ispstat** %5, align 8
  %15 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @dma_sync_single_range_for_cpu, align 4
  %19 = call i32 @__isp_stat_buf_sync_magic(%struct.ispstat* %14, %struct.ispstat_buffer* %15, i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @ISP_STAT_USES_DMAENGINE(%struct.ispstat*) #1

declare dso_local i32 @__isp_stat_buf_sync_magic(%struct.ispstat*, %struct.ispstat_buffer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
