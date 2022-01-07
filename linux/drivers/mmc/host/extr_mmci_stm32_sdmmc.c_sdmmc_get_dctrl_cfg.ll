; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_sdmmc_get_dctrl_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_sdmmc_get_dctrl_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }

@MCI_DPSM_STM32_MODE_SDIO = common dso_local global i32 0, align 4
@MCI_DPSM_STM32_MODE_BLOCK_STOP = common dso_local global i32 0, align 4
@MCI_DPSM_STM32_MODE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmci_host*)* @sdmmc_get_dctrl_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdmmc_get_dctrl_cfg(%struct.mmci_host* %0) #0 {
  %2 = alloca %struct.mmci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %2, align 8
  %4 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %5 = call i32 @mmci_dctrl_blksz(%struct.mmci_host* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %7 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %14 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @mmc_card_sdio(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %22 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @MCI_DPSM_STM32_MODE_SDIO, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %20, %12, %1
  %32 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %33 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %40 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @MCI_DPSM_STM32_MODE_BLOCK_STOP, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %38, %31
  %50 = load i32, i32* @MCI_DPSM_STM32_MODE_BLOCK, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mmci_dctrl_blksz(%struct.mmci_host*) #1

declare dso_local i64 @mmc_card_sdio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
