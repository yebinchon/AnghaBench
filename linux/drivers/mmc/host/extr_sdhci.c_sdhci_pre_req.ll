; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_pre_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_pre_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_host = type { i32, i32 }

@COOKIE_UNMAPPED = common dso_local global i32 0, align 4
@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@COOKIE_PRE_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @sdhci_pre_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_pre_req(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.sdhci_host* %7, %struct.sdhci_host** %5, align 8
  %8 = load i32, i32* @COOKIE_UNMAPPED, align 4
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %21 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %26 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* @COOKIE_PRE_MAPPED, align 4
  %30 = call i32 @sdhci_pre_dma_transfer(%struct.sdhci_host* %25, %struct.TYPE_2__* %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %19, %2
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_pre_dma_transfer(%struct.sdhci_host*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
