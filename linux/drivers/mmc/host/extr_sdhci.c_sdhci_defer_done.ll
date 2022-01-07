; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_defer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_defer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i64 }

@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@COOKIE_MAPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, %struct.mmc_request*)* @sdhci_defer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_defer_done(%struct.sdhci_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %7 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %6, i32 0, i32 0
  %8 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  store %struct.mmc_data* %8, %struct.mmc_data** %5, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %10 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %22 = icmp ne %struct.mmc_data* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @COOKIE_MAPPED, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %20, %13
  %30 = phi i1 [ false, %20 ], [ false, %13 ], [ %28, %23 ]
  br label %31

31:                                               ; preds = %29, %2
  %32 = phi i1 [ true, %2 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
