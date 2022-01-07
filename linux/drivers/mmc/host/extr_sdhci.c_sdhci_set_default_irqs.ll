; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_default_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_default_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64 }

@SDHCI_INT_BUS_POWER = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_CRC = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_INDEX = common dso_local global i32 0, align 4
@SDHCI_INT_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_CRC = common dso_local global i32 0, align 4
@SDHCI_INT_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@SDHCI_INT_RESPONSE = common dso_local global i32 0, align 4
@SDHCI_TUNING_MODE_2 = common dso_local global i64 0, align 8
@SDHCI_TUNING_MODE_3 = common dso_local global i64 0, align 8
@SDHCI_INT_RETUNE = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_set_default_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_default_irqs(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %3 = load i32, i32* @SDHCI_INT_BUS_POWER, align 4
  %4 = load i32, i32* @SDHCI_INT_DATA_END_BIT, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SDHCI_INT_DATA_CRC, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SDHCI_INT_DATA_TIMEOUT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SDHCI_INT_INDEX, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SDHCI_INT_END_BIT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SDHCI_INT_CRC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SDHCI_INT_TIMEOUT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SDHCI_TUNING_MODE_2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SDHCI_TUNING_MODE_3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29, %1
  %36 = load i32, i32* @SDHCI_INT_RETUNE, align 4
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %38 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %47 = call i32 @sdhci_writel(%struct.sdhci_host* %42, i32 %45, i32 %46)
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %50 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %53 = call i32 @sdhci_writel(%struct.sdhci_host* %48, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
