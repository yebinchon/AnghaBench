; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_prepare_dma_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_prepare_dma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i32 }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@COOKIE_PREMAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to map scatterlist for DMA operation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4740_mmc_host*, %struct.mmc_data*, i32)* @jz4740_mmc_prepare_dma_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_mmc_prepare_dma_data(%struct.jz4740_mmc_host* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4740_mmc_host*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %5, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %13 = call %struct.dma_chan* @jz4740_mmc_get_dma_chan(%struct.jz4740_mmc_host* %11, %struct.mmc_data* %12)
  store %struct.dma_chan* %13, %struct.dma_chan** %8, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %15 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @COOKIE_PREMAPPED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %27 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @dma_map_sg(i32 %30, i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %25
  %42 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %43 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mmc_dev(i32 %44)
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %59

49:                                               ; preds = %25
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %49, %41, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.dma_chan* @jz4740_mmc_get_dma_chan(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
