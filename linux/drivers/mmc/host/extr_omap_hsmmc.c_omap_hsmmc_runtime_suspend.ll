; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_hsmmc_host = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@HSMMC_SDIO_IRQ_ENABLED = common dso_local global i32 0, align 4
@ISE = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@PSTATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"pending sdio irq, abort suspend\0A\00", align 1
@STAT = common dso_local global i32 0, align 4
@STAT_CLEAR = common dso_local global i32 0, align 4
@CIRQ_EN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @omap_hsmmc_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.omap_hsmmc_host* @dev_get_drvdata(%struct.device* %6)
  store %struct.omap_hsmmc_host* %7, %struct.omap_hsmmc_host** %3, align 8
  %8 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %9 = call i32 @omap_hsmmc_context_save(%struct.omap_hsmmc_host* %8)
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i32 @dev_dbg(%struct.device* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %1
  %25 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HSMMC_SDIO_IRQ_ENABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %24
  %32 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ISE, align 4
  %36 = call i32 @OMAP_HSMMC_WRITE(i32 %34, i32 %35, i32 0)
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IE, align 4
  %41 = call i32 @OMAP_HSMMC_WRITE(i32 %39, i32 %40, i32 0)
  %42 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PSTATE, align 4
  %46 = call i32 @OMAP_HSMMC_READ(i32 %44, i32 %45)
  %47 = call i32 @DLEV_DAT(i32 1)
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %31
  %51 = load %struct.device*, %struct.device** %2, align 8
  %52 = call i32 @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @STAT, align 4
  %57 = load i32, i32* @STAT_CLEAR, align 4
  %58 = call i32 @OMAP_HSMMC_WRITE(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ISE, align 4
  %63 = load i32, i32* @CIRQ_EN, align 4
  %64 = call i32 @OMAP_HSMMC_WRITE(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %66 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IE, align 4
  %69 = load i32, i32* @CIRQ_EN, align 4
  %70 = call i32 @OMAP_HSMMC_WRITE(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.device*, %struct.device** %2, align 8
  %72 = call i32 @pm_runtime_mark_last_busy(%struct.device* %71)
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %82

75:                                               ; preds = %31
  %76 = load %struct.device*, %struct.device** %2, align 8
  %77 = call i32 @pinctrl_pm_select_idle_state(%struct.device* %76)
  br label %81

78:                                               ; preds = %24, %1
  %79 = load %struct.device*, %struct.device** %2, align 8
  %80 = call i32 @pinctrl_pm_select_idle_state(%struct.device* %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %84 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %83, i32 0, i32 1
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.omap_hsmmc_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @omap_hsmmc_context_save(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @DLEV_DAT(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pinctrl_pm_select_idle_state(%struct.device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
