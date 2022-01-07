; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_post_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_post_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i64, i32, i32 }
%struct.alcor_sdmmc_host = type { i32 }

@COOKIE_MAPPED = common dso_local global i64 0, align 8
@COOKIE_UNMAPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*, i32)* @alcor_post_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_post_req(%struct.mmc_host* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alcor_sdmmc_host*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.alcor_sdmmc_host* %10, %struct.alcor_sdmmc_host** %7, align 8
  %11 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %11, i32 0, i32 0
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %8, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %15 = icmp ne %struct.mmc_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @COOKIE_MAPPED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %7, align 8
  %25 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %34 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %33)
  %35 = call i32 @dma_unmap_sg(i32 %26, i32 %29, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %23, %17
  %37 = load i64, i64* @COOKIE_UNMAPPED, align 8
  %38 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %16
  ret void
}

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
