; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64 }
%struct.alcor_sdmmc_host = type { i32 }

@MMC_TIMING_LEGACY = common dso_local global i64 0, align 8
@AU6601_CLK_DELAY = common dso_local global i32 0, align 4
@AU6601_CLK_POSITIVE_EDGE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @alcor_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_set_timing(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.alcor_sdmmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.alcor_sdmmc_host* %7, %struct.alcor_sdmmc_host** %5, align 8
  %8 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MMC_TIMING_LEGACY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %15 = load i32, i32* @AU6601_CLK_DELAY, align 4
  %16 = load i32, i32* @AU6601_CLK_POSITIVE_EDGE_ALL, align 4
  %17 = call i32 @alcor_rmw8(%struct.alcor_sdmmc_host* %14, i32 %15, i32 %16, i32 0)
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %20 = load i32, i32* @AU6601_CLK_DELAY, align 4
  %21 = load i32, i32* @AU6601_CLK_POSITIVE_EDGE_ALL, align 4
  %22 = call i32 @alcor_rmw8(%struct.alcor_sdmmc_host* %19, i32 %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @alcor_rmw8(%struct.alcor_sdmmc_host*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
