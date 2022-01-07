; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_remove_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_remove_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32*, i32*, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Controller removed during  transfer!\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_remove_host(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i64, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %7, i32 0, i32 11
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 9
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %23 = call i64 @sdhci_has_requests(%struct.sdhci_host* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %27 = call i32 @mmc_hostname(%struct.mmc_host* %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %30 = load i32, i32* @ENOMEDIUM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @sdhci_error_out_mrqs(%struct.sdhci_host* %29, i32 %31)
  br label %33

33:                                               ; preds = %25, %12
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 9
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = call i32 @sdhci_disable_card_detection(%struct.sdhci_host* %39)
  %41 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %42 = call i32 @mmc_remove_host(%struct.mmc_host* %41)
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %44 = call i32 @sdhci_led_unregister(%struct.sdhci_host* %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %49 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %50 = call i32 @sdhci_do_reset(%struct.sdhci_host* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %53 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %54 = call i32 @sdhci_writel(%struct.sdhci_host* %52, i32 0, i32 %53)
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %56 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %57 = call i32 @sdhci_writel(%struct.sdhci_host* %55, i32 0, i32 %56)
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %59 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = call i32 @free_irq(i32 %60, %struct.sdhci_host* %61)
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %64 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %63, i32 0, i32 7
  %65 = call i32 @del_timer_sync(i32* %64)
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %67 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %66, i32 0, i32 6
  %68 = call i32 @del_timer_sync(i32* %67)
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %70 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @destroy_workqueue(i32 %71)
  %73 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @IS_ERR(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %51
  %80 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %81 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regulator_disable(i32 %83)
  br label %85

85:                                               ; preds = %79, %51
  %86 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %87 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %92 = call i32 @mmc_dev(%struct.mmc_host* %91)
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %94 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %97 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %101 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %104 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dma_free_coherent(i32 %92, i64 %99, i32* %102, i32 %105)
  br label %107

107:                                              ; preds = %90, %85
  %108 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %109 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  %110 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %111 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sdhci_has_requests(%struct.sdhci_host*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_error_out_mrqs(%struct.sdhci_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sdhci_disable_card_detection(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_led_unregister(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_do_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.sdhci_host*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
