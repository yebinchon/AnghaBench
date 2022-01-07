; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sdhci_host*, %struct.mmc_command*)* }
%struct.mmc_command = type { i32 }

@SDHCI_QUIRK2_DISABLE_HW_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_TIMEOUT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, %struct.mmc_command*)* @sdhci_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_timeout(%struct.sdhci_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.sdhci_host*, %struct.mmc_command*)*, i32 (%struct.sdhci_host*, %struct.mmc_command*)** %10, align 8
  %12 = icmp ne i32 (%struct.sdhci_host*, %struct.mmc_command*)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.sdhci_host*, %struct.mmc_command*)*, i32 (%struct.sdhci_host*, %struct.mmc_command*)** %17, align 8
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %20 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %21 = call i32 %18(%struct.sdhci_host* %19, %struct.mmc_command* %20)
  br label %57

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %25 = call i32 @sdhci_calc_timeout(%struct.sdhci_host* %23, %struct.mmc_command* %24, i32* %6)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SDHCI_QUIRK2_DISABLE_HW_TIMEOUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %37 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %38 = call i32 @sdhci_calc_sw_timeout(%struct.sdhci_host* %36, %struct.mmc_command* %37)
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = call i32 @sdhci_set_data_timeout_irq(%struct.sdhci_host* %39, i32 0)
  br label %52

41:                                               ; preds = %28, %22
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %43 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SDHCI_INT_DATA_TIMEOUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %50 = call i32 @sdhci_set_data_timeout_irq(%struct.sdhci_host* %49, i32 1)
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SDHCI_TIMEOUT_CONTROL, align 4
  %56 = call i32 @sdhci_writeb(%struct.sdhci_host* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %13
  ret void
}

declare dso_local i32 @sdhci_calc_timeout(%struct.sdhci_host*, %struct.mmc_command*, i32*) #1

declare dso_local i32 @sdhci_calc_sw_timeout(%struct.sdhci_host*, %struct.mmc_command*) #1

declare dso_local i32 @sdhci_set_data_timeout_irq(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
