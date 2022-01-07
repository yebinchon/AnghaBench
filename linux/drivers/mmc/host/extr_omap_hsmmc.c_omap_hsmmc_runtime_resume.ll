; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_hsmmc_host = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@HSMMC_SDIO_IRQ_ENABLED = common dso_local global i32 0, align 4
@STAT = common dso_local global i32 0, align 4
@STAT_CLEAR = common dso_local global i32 0, align 4
@ISE = common dso_local global i32 0, align 4
@CIRQ_EN = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @omap_hsmmc_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.omap_hsmmc_host* @dev_get_drvdata(%struct.device* %5)
  store %struct.omap_hsmmc_host* %6, %struct.omap_hsmmc_host** %3, align 8
  %7 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %8 = call i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host* %7)
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @dev_dbg(%struct.device* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %1
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HSMMC_SDIO_IRQ_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %23
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pinctrl_pm_select_default_state(i32 %33)
  %35 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @STAT, align 4
  %39 = load i32, i32* @STAT_CLEAR, align 4
  %40 = call i32 @OMAP_HSMMC_WRITE(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ISE, align 4
  %45 = load i32, i32* @CIRQ_EN, align 4
  %46 = call i32 @OMAP_HSMMC_WRITE(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IE, align 4
  %51 = load i32, i32* @CIRQ_EN, align 4
  %52 = call i32 @OMAP_HSMMC_WRITE(i32 %49, i32 %50, i32 %51)
  br label %58

53:                                               ; preds = %23, %1
  %54 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pinctrl_pm_select_default_state(i32 %56)
  br label %58

58:                                               ; preds = %53, %30
  %59 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %59, i32 0, i32 1
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret i32 0
}

declare dso_local %struct.omap_hsmmc_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @omap_hsmmc_context_restore(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pinctrl_pm_select_default_state(i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
