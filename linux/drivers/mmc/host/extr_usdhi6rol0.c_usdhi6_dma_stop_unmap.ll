; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_dma_stop_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_dma_stop_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@USDHI6_CC_EXT_MODE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usdhi6_host*)* @usdhi6_dma_stop_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usdhi6_dma_stop_unmap(%struct.usdhi6_host* %0) #0 {
  %2 = alloca %struct.usdhi6_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %2, align 8
  %4 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %5 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %4, i32 0, i32 3
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  store %struct.mmc_data* %8, %struct.mmc_data** %3, align 8
  %9 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %10 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %16 = load i32, i32* @USDHI6_CC_EXT_MODE, align 4
  %17 = call i32 @usdhi6_write(%struct.usdhi6_host* %15, i32 %16, i32 0)
  %18 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %19 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MMC_DATA_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %14
  %27 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %28 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_sg(i32 %33, i32 %36, i32 %39, i32 %40)
  br label %58

42:                                               ; preds = %14
  %43 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %44 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %54 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @dma_unmap_sg(i32 %49, i32 %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %13, %42, %26
  ret void
}

declare dso_local i32 @usdhi6_write(%struct.usdhi6_host*, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
