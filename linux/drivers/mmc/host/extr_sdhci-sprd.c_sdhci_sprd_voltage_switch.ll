; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_sprd_host = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"%s: Switching signalling voltage failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: failed to select uhs pin state\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: failed to select default pin state\0A\00", align 1
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @sdhci_sprd_voltage_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_sprd_voltage_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.sdhci_sprd_host*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %6, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %12 = call %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host* %11)
  store %struct.sdhci_sprd_host* %12, %struct.sdhci_sprd_host** %7, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %22 = call i32 @mmc_regulator_set_vqmmc(%struct.mmc_host* %20, %struct.mmc_ios* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %27 = call i32 @mmc_hostname(%struct.mmc_host* %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %7, align 8
  %33 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %58 [
    i32 129, label %42
    i32 128, label %59
  ]

42:                                               ; preds = %38
  %43 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %7, align 8
  %44 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %7, align 8
  %47 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pinctrl_select_state(i32 %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %54 = call i32 @mmc_hostname(%struct.mmc_host* %53)
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %82

57:                                               ; preds = %42
  br label %75

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %38, %58
  %60 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %7, align 8
  %61 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %7, align 8
  %64 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pinctrl_select_state(i32 %62, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %71 = call i32 @mmc_hostname(%struct.mmc_host* %70)
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %82

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %57
  %76 = call i32 @usleep_range(i32 300, i32 500)
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %78 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %79 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @sdhci_reset(%struct.sdhci_host* %77, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %69, %52, %37, %25
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_vqmmc(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
