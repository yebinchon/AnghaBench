; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_complete_data_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wmt-sdmmc.c_wmt_complete_data_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmt_mci_priv = type { i32, %struct.TYPE_5__*, i32*, i32, %struct.mmc_request* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmt_mci_priv*)* @wmt_complete_data_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_complete_data_request(%struct.wmt_mci_priv* %0) #0 {
  %2 = alloca %struct.wmt_mci_priv*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  store %struct.wmt_mci_priv* %0, %struct.wmt_mci_priv** %2, align 8
  %4 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %5 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %4, i32 0, i32 4
  %6 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  store %struct.mmc_request* %6, %struct.mmc_request** %3, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %11, %16
  %18 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 8
  %22 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MMC_DATA_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %1
  %31 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %32 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mmc_dev(i32 %33)
  %35 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @dma_unmap_sg(i32 %34, i32 %39, i32 %44, i32 %45)
  br label %64

47:                                               ; preds = %1
  %48 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %49 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mmc_dev(i32 %50)
  %52 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %53 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %58 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @dma_unmap_sg(i32 %51, i32 %56, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %47, %30
  %65 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %66 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %73 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71, %64
  %79 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %80 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %83 = call i32 @mmc_request_done(i32 %81, %struct.mmc_request* %82)
  br label %138

84:                                               ; preds = %71
  %85 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %86 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @wmt_mci_read_response(i32 %87)
  %89 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %90 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %84
  %96 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %97 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %100 = call i32 @mmc_request_done(i32 %98, %struct.mmc_request* %99)
  br label %137

101:                                              ; preds = %84
  %102 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %103 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %102, i32 0, i32 3
  %104 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %105 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %107 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @init_completion(i32* %108)
  %110 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %111 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %116 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %115, i32 0, i32 1
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %116, align 8
  %117 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %118 = getelementptr inbounds %struct.wmt_mci_priv, %struct.wmt_mci_priv* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %121 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %128 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @wmt_mci_send_command(i32 %119, i32 %126, i32 7, i32 %133, i32 9)
  %135 = load %struct.wmt_mci_priv*, %struct.wmt_mci_priv** %2, align 8
  %136 = call i32 @wmt_mci_start_command(%struct.wmt_mci_priv* %135)
  br label %137

137:                                              ; preds = %101, %95
  br label %138

138:                                              ; preds = %137, %78
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

declare dso_local i32 @wmt_mci_read_response(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wmt_mci_send_command(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wmt_mci_start_command(%struct.wmt_mci_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
