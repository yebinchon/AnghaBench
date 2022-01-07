; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_bufs_alloc_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispstat.c_isp_stat_bufs_alloc_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ispstat_buffer = type { i64, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ispstat_buffer*, i32)* @isp_stat_bufs_alloc_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_stat_bufs_alloc_one(%struct.device* %0, %struct.ispstat_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ispstat_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ispstat_buffer* %1, %struct.ispstat_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @dma_alloc_coherent(%struct.device* %9, i32 %10, i64* %12, i32 %13)
  %15 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %26, i32 0, i32 2
  %28 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dma_get_sgtable(%struct.device* %25, i32* %27, i32* %30, i64 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %24
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dma_free_coherent(%struct.device* %39, i32 %40, i32* %43, i64 %46)
  %48 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.ispstat_buffer*, %struct.ispstat_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.ispstat_buffer, %struct.ispstat_buffer* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %38, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @dma_get_sgtable(%struct.device*, i32*, i32*, i64, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
