; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_sync_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_sync_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ispstat_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, %struct.ispstat_buffer*)* @isp_stat_buf_sync_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_stat_buf_sync_for_cpu(%struct.ispstat* %0, %struct.ispstat_buffer* %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca %struct.ispstat_buffer*, align 8
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store %struct.ispstat_buffer* %1, %struct.ispstat_buffer** %4, align 8
  %5 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %6 = call i64 @ISP_STAT_USES_DMAENGINE(%struct.ispstat* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %25

9:                                                ; preds = %2
  %10 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %11 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = call i32 @dma_sync_sg_for_cpu(i32 %14, i32 %18, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @ISP_STAT_USES_DMAENGINE(%struct.ispstat*) #1

declare dso_local i32 @dma_sync_sg_for_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
