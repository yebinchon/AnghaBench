; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@MMC_CAP2_SDIO_IRQ_NOTHREAD = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_sdio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_resume(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = call i32 @mmc_claim_host(%struct.mmc_host* %4)
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = call i32 @mmc_card_keep_power(%struct.mmc_host* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %1
  %10 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 6
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mmc_power_up(%struct.mmc_host* %10, i32 %15)
  %17 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %9
  %24 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_disable(i32* %27)
  %29 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 6
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @pm_runtime_set_active(i32* %32)
  %34 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 6
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @pm_runtime_enable(i32* %37)
  br label %39

39:                                               ; preds = %23, %9
  %40 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %41 = call i32 @mmc_sdio_reinit_card(%struct.mmc_host* %40)
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %1
  %43 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %44 = call i64 @mmc_card_wake_sdio_irq(%struct.mmc_host* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 6
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @sdio_enable_4bit_bus(%struct.TYPE_3__* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %92

56:                                               ; preds = %52
  %57 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %58 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %57, i32 0, i32 6
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @mmc_card_clr_suspended(%struct.TYPE_3__* %59)
  %61 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %62 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %56
  %66 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %67 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MMC_CAP2_SDIO_IRQ_NOTHREAD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %74 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @wake_up_process(i32 %75)
  br label %90

77:                                               ; preds = %65
  %78 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %79 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* @system_wq, align 4
  %86 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %87 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %86, i32 0, i32 3
  %88 = call i32 @queue_delayed_work(i32 %85, i32* %87, i32 0)
  br label %89

89:                                               ; preds = %84, %77
  br label %90

90:                                               ; preds = %89, %72
  br label %91

91:                                               ; preds = %90, %56
  br label %92

92:                                               ; preds = %91, %55
  %93 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %94 = call i32 @mmc_release_host(%struct.mmc_host* %93)
  %95 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %98 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_keep_power(%struct.mmc_host*) #1

declare dso_local i32 @mmc_power_up(%struct.mmc_host*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @mmc_sdio_reinit_card(%struct.mmc_host*) #1

declare dso_local i64 @mmc_card_wake_sdio_irq(%struct.mmc_host*) #1

declare dso_local i32 @sdio_enable_4bit_bus(%struct.TYPE_3__*) #1

declare dso_local i32 @mmc_card_clr_suspended(%struct.TYPE_3__*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
