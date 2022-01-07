; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.pxamci_host = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.mmc_host*)* }

@TXFIFO_WR_REQ = common dso_local global i32 0, align 4
@RXFIFO_RD_REQ = common dso_local global i32 0, align 4
@CLK_IS_OFF = common dso_local global i32 0, align 4
@STOP_CMD = common dso_local global i32 0, align 4
@END_CMD_RES = common dso_local global i32 0, align 4
@PRG_DONE = common dso_local global i32 0, align 4
@DATA_TRAN_DONE = common dso_local global i32 0, align 4
@MMC_I_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxamci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxamci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.pxamci_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = icmp ne %struct.mmc_host* %7, null
  br i1 %8, label %9, label %75

9:                                                ; preds = %1
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.pxamci_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.pxamci_host* %11, %struct.pxamci_host** %4, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = call i32 @mmc_remove_host(%struct.mmc_host* %12)
  %14 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %15 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %9
  %19 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %20 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32*, %struct.mmc_host*)*, i32 (i32*, %struct.mmc_host*)** %22, align 8
  %24 = icmp ne i32 (i32*, %struct.mmc_host*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %27 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32*, %struct.mmc_host*)*, i32 (i32*, %struct.mmc_host*)** %29, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = call i32 %30(i32* %32, %struct.mmc_host* %33)
  br label %35

35:                                               ; preds = %25, %18, %9
  %36 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %37 = call i32 @pxamci_stop_clock(%struct.pxamci_host* %36)
  %38 = load i32, i32* @TXFIFO_WR_REQ, align 4
  %39 = load i32, i32* @RXFIFO_RD_REQ, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CLK_IS_OFF, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @STOP_CMD, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @END_CMD_RES, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PRG_DONE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @DATA_TRAN_DONE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %52 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MMC_I_MASK, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %58 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dmaengine_terminate_all(i32 %59)
  %61 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %62 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dmaengine_terminate_all(i32 %63)
  %65 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %66 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dma_release_channel(i32 %67)
  %69 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %70 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_release_channel(i32 %71)
  %73 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %74 = call i32 @mmc_free_host(%struct.mmc_host* %73)
  br label %75

75:                                               ; preds = %35, %1
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.pxamci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @pxamci_stop_clock(%struct.pxamci_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
