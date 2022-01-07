; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi3660_switch_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi3660_switch_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i64 }
%struct.dw_mci_slot = type { %struct.dw_mci* }
%struct.dw_mci = type { i32, %struct.k3_priv* }
%struct.k3_priv = type { i64, i32 }

@DWMMC_SDIO_ID = common dso_local global i64 0, align 8
@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i64 0, align 8
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Regulator set error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @dw_mci_hi3660_switch_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_hi3660_switch_voltage(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dw_mci_slot*, align 8
  %8 = alloca %struct.k3_priv*, align 8
  %9 = alloca %struct.dw_mci*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %10)
  store %struct.dw_mci_slot* %11, %struct.dw_mci_slot** %7, align 8
  %12 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %7, align 8
  %13 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %12, i32 0, i32 0
  %14 = load %struct.dw_mci*, %struct.dw_mci** %13, align 8
  store %struct.dw_mci* %14, %struct.dw_mci** %9, align 8
  %15 = load %struct.dw_mci*, %struct.dw_mci** %9, align 8
  %16 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %15, i32 0, i32 1
  %17 = load %struct.k3_priv*, %struct.k3_priv** %16, align 8
  store %struct.k3_priv* %17, %struct.k3_priv** %8, align 8
  %18 = load %struct.k3_priv*, %struct.k3_priv** %8, align 8
  %19 = icmp ne %struct.k3_priv* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.k3_priv*, %struct.k3_priv** %8, align 8
  %22 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %79

26:                                               ; preds = %20
  %27 = load %struct.k3_priv*, %struct.k3_priv** %8, align 8
  %28 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DWMMC_SDIO_ID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %79

33:                                               ; preds = %26
  %34 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %35 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MMC_SIGNAL_VOLTAGE_330, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.dw_mci*, %struct.dw_mci** %9, align 8
  %41 = call i32 @dw_mci_set_sel18(%struct.dw_mci* %40, i32 0)
  store i32 %41, i32* %6, align 4
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MMC_SIGNAL_VOLTAGE_180, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.dw_mci*, %struct.dw_mci** %9, align 8
  %50 = call i32 @dw_mci_set_sel18(%struct.dw_mci* %49, i32 1)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %79

57:                                               ; preds = %52
  %58 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %59 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IS_ERR(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %57
  %65 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %66 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %67 = call i32 @mmc_regulator_set_vqmmc(%struct.mmc_host* %65, %struct.mmc_ios* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.dw_mci*, %struct.dw_mci** %9, align 8
  %72 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %57
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %70, %55, %32, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dw_mci_set_sel18(%struct.dw_mci*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_vqmmc(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
