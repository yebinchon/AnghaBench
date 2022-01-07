; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_xfer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_xfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mmc_data = type { i32, i32, i32, i32 }

@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@DAVINCI_SDIOST0 = common dso_local global i64 0, align 8
@SDIOST0_DAT1_HI = common dso_local global i32 0, align 4
@SDIOIST_IOINT = common dso_local global i32 0, align 4
@DAVINCI_SDIOIST = common dso_local global i64 0, align 8
@DAVINCI_MMC_DATADIR_NONE = common dso_local global i32 0, align 4
@DAVINCI_MMCIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_davinci_host*, %struct.mmc_data*)* @mmc_davinci_xfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_davinci_xfer_done(%struct.mmc_davinci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.mmc_davinci_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %5 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %5, i32 0, i32 7
  store i32* null, i32** %6, align 8
  %7 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DAVINCI_SDIOST0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load i32, i32* @SDIOST0_DAT1_HI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @SDIOIST_IOINT, align 4
  %32 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DAVINCI_SDIOIST, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i32 @mmc_signal_sdio_irq(%struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %30, %20, %15
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %45 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %50 = call i32 @davinci_abort_dma(%struct.mmc_davinci_host* %49)
  %51 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %52 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %51, i32 0, i32 3
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = call i32 @mmc_dev(%struct.TYPE_6__* %53)
  %55 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %62 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %61)
  %63 = call i32 @dma_unmap_sg(i32 %54, i32 %57, i32 %60, i32 %62)
  %64 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %48, %43
  %67 = load i32, i32* @DAVINCI_MMC_DATADIR_NONE, align 4
  %68 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %69 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %66
  %75 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %76 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %75, i32 0, i32 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  %80 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %81 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %80, i32 0, i32 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %79, %66
  %87 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %88 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %87, i32 0, i32 3
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mmc_request_done(%struct.TYPE_6__* %89, i32 %92)
  %94 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %95 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DAVINCI_MMCIM, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 0, i64 %98)
  %100 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %101 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  br label %108

102:                                              ; preds = %79, %74
  %103 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %104 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %105 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mmc_davinci_start_command(%struct.mmc_davinci_host* %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %86
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mmc_signal_sdio_irq(%struct.TYPE_6__*) #1

declare dso_local i32 @davinci_abort_dma(%struct.mmc_davinci_host*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_6__*) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @mmc_request_done(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mmc_davinci_start_command(%struct.mmc_davinci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
