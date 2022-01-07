; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c___tmio_mmc_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c___tmio_mmc_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.tmio_mmc_data*, %struct.mmc_host* }
%struct.tmio_mmc_data = type { i32 }
%struct.mmc_host = type { i32 }

@TMIO_MMC_SDIO_IRQ = common dso_local global i32 0, align 4
@CTL_SDIO_STATUS = common dso_local global i32 0, align 4
@TMIO_SDIO_MASK_ALL = common dso_local global i32 0, align 4
@TMIO_MMC_SDIO_STATUS_SETBITS = common dso_local global i32 0, align 4
@TMIO_SDIO_SETBITS_MASK = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@TMIO_SDIO_STAT_IOIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*)* @__tmio_mmc_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tmio_mmc_sdio_irq(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.tmio_mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %9, i32 0, i32 2
  %11 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  store %struct.mmc_host* %11, %struct.mmc_host** %4, align 8
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %12, i32 0, i32 1
  %14 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %13, align 8
  store %struct.tmio_mmc_data* %14, %struct.tmio_mmc_data** %5, align 8
  %15 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %5, align 8
  %16 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TMIO_MMC_SDIO_IRQ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %24 = load i32, i32* @CTL_SDIO_STATUS, align 4
  %25 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TMIO_SDIO_MASK_ALL, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TMIO_SDIO_MASK_ALL, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %5, align 8
  %39 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TMIO_MMC_SDIO_STATUS_SETBITS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i32, i32* @TMIO_SDIO_SETBITS_MASK, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %22
  %49 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %50 = load i32, i32* @CTL_SDIO_STATUS, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %49, i32 %50, i32 %51)
  %53 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @TMIO_SDIO_STAT_IOIRQ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %66 = call i32 @mmc_signal_sdio_irq(%struct.mmc_host* %65)
  br label %67

67:                                               ; preds = %64, %59, %48
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @sd_ctrl_read16(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @mmc_signal_sdio_irq(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
