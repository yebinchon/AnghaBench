; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_post_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_post_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i64 }
%struct.jz4740_mmc_host = type { i32 }
%struct.dma_chan = type { i32 }

@COOKIE_UNMAPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*, i32)* @jz4740_mmc_post_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_post_request(%struct.mmc_host* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jz4740_mmc_host*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  %9 = alloca %struct.dma_chan*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.jz4740_mmc_host* %11, %struct.jz4740_mmc_host** %7, align 8
  %12 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 0
  %14 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  store %struct.mmc_data* %14, %struct.mmc_data** %8, align 8
  %15 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %16 = icmp ne %struct.mmc_data* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @COOKIE_UNMAPPED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %7, align 8
  %25 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %26 = call i32 @jz4740_mmc_dma_unmap(%struct.jz4740_mmc_host* %24, %struct.mmc_data* %25)
  br label %27

27:                                               ; preds = %23, %17, %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %7, align 8
  %32 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %33 = call %struct.dma_chan* @jz4740_mmc_get_dma_chan(%struct.jz4740_mmc_host* %31, %struct.mmc_data* %32)
  store %struct.dma_chan* %33, %struct.dma_chan** %9, align 8
  %34 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %35 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %34)
  br label %36

36:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @jz4740_mmc_dma_unmap(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local %struct.dma_chan* @jz4740_mmc_get_dma_chan(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
