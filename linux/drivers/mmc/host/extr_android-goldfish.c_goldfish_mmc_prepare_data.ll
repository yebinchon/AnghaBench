; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_prepare_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_mmc_host = type { i32, i32, i64, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }

@MMC_BLOCK_LENGTH = common dso_local global i32 0, align 4
@MMC_BLOCK_COUNT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goldfish_mmc_host*, %struct.mmc_request*)* @goldfish_mmc_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_mmc_prepare_data(%struct.goldfish_mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.goldfish_mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.goldfish_mmc_host* %0, %struct.goldfish_mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %5, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %13 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %13, i32 0, i32 4
  store %struct.mmc_data* %12, %struct.mmc_data** %14, align 8
  %15 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %16 = icmp eq %struct.mmc_data* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %19 = load i32, i32* @MMC_BLOCK_LENGTH, align 4
  %20 = call i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host* %18, i32 %19, i32 0)
  %21 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %22 = load i32, i32* @MMC_BLOCK_COUNT, align 4
  %23 = call i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host* %21, i32 %22, i32 0)
  %24 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %86

26:                                               ; preds = %2
  %27 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %31 = load i32, i32* @MMC_BLOCK_COUNT, align 4
  %32 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host* %30, i32 %31, i32 %35)
  %37 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %38 = load i32, i32* @MMC_BLOCK_LENGTH, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host* %37, i32 %38, i32 %40)
  %42 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %43 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %51

47:                                               ; preds = %26
  %48 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  br label %51

51:                                               ; preds = %47, %46
  %52 = phi i32 [ 1, %46 ], [ %50, %47 ]
  store i32 %52, i32* %7, align 4
  %53 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %54 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %56 = call i32 @mmc_from_priv(%struct.goldfish_mmc_host* %55)
  %57 = call i32 @mmc_dev(i32 %56)
  %58 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dma_map_sg(i32 %57, %struct.TYPE_3__* %60, i32 %61, i32 %62)
  %64 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %67 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %69 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %51
  %74 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %75 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %78 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %81 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sg_copy_to_buffer(%struct.TYPE_3__* %76, i32 1, i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %17, %73, %51
  ret void
}

declare dso_local i32 @GOLDFISH_MMC_WRITE(%struct.goldfish_mmc_host*, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_from_priv(%struct.goldfish_mmc_host*) #1

declare dso_local i32 @sg_copy_to_buffer(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
