; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_insert_magic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_buf_insert_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64 }
%struct.ispstat_buffer = type { i64 }

@AF_EXTRA_DATA = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MAGIC_NUM = common dso_local global i32 0, align 4
@MAGIC_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, %struct.ispstat_buffer*)* @isp_stat_buf_insert_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_stat_buf_insert_magic(%struct.ispstat* %0, %struct.ispstat_buffer* %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca %struct.ispstat_buffer*, align 8
  %5 = alloca i64, align 8
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store %struct.ispstat_buffer* %1, %struct.ispstat_buffer** %4, align 8
  %6 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %7 = call i64 @IS_H3A_AF(%struct.ispstat* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %11 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_EXTRA_DATA, align 8
  %14 = add nsw i64 %12, %13
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %17 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i64 [ %14, %9 ], [ %18, %15 ]
  store i64 %20, i64* %5, align 8
  %21 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %22 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @isp_stat_buf_sync_magic_for_cpu(%struct.ispstat* %21, %struct.ispstat_buffer* %22, i64 %23, i32 %24)
  %26 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @MAGIC_NUM, align 4
  %30 = load i32, i32* @MAGIC_SIZE, align 4
  %31 = call i32 @memset(i64 %28, i32 %29, i32 %30)
  %32 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @MAGIC_NUM, align 4
  %38 = load i32, i32* @MAGIC_SIZE, align 4
  %39 = call i32 @memset(i64 %36, i32 %37, i32 %38)
  %40 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %41 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %44 = call i32 @isp_stat_buf_sync_magic_for_device(%struct.ispstat* %40, %struct.ispstat_buffer* %41, i64 %42, i32 %43)
  ret void
}

declare dso_local i64 @IS_H3A_AF(%struct.ispstat*) #1

declare dso_local i32 @isp_stat_buf_sync_magic_for_cpu(%struct.ispstat*, %struct.ispstat_buffer*, i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @isp_stat_buf_sync_magic_for_device(%struct.ispstat*, %struct.ispstat_buffer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
