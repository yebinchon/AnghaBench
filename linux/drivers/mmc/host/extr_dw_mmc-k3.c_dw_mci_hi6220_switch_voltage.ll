; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi6220_switch_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi6220_switch_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i64 }
%struct.dw_mci_slot = type { %struct.dw_mci* }
%struct.dw_mci = type { i32, %struct.k3_priv* }
%struct.k3_priv = type { i32 }

@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i64 0, align 8
@AO_SCTRL_CTRL3 = common dso_local global i32 0, align 4
@AO_SCTRL_SEL18 = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"voltage not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"switch voltage failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Regulator set error %d: %d - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @dw_mci_hi6220_switch_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_hi6220_switch_voltage(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.dw_mci_slot*, align 8
  %7 = alloca %struct.k3_priv*, align 8
  %8 = alloca %struct.dw_mci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %13 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %12)
  store %struct.dw_mci_slot* %13, %struct.dw_mci_slot** %6, align 8
  %14 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %6, align 8
  %15 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %14, i32 0, i32 0
  %16 = load %struct.dw_mci*, %struct.dw_mci** %15, align 8
  store %struct.dw_mci* %16, %struct.dw_mci** %8, align 8
  %17 = load %struct.dw_mci*, %struct.dw_mci** %8, align 8
  %18 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %17, i32 0, i32 1
  %19 = load %struct.k3_priv*, %struct.k3_priv** %18, align 8
  store %struct.k3_priv* %19, %struct.k3_priv** %7, align 8
  %20 = load %struct.k3_priv*, %struct.k3_priv** %7, align 8
  %21 = icmp ne %struct.k3_priv* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.k3_priv*, %struct.k3_priv** %7, align 8
  %24 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %100

28:                                               ; preds = %22
  %29 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MMC_SIGNAL_VOLTAGE_330, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.k3_priv*, %struct.k3_priv** %7, align 8
  %36 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AO_SCTRL_CTRL3, align 4
  %39 = load i32, i32* @AO_SCTRL_SEL18, align 4
  %40 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %11, align 4
  store i32 3000000, i32* %9, align 4
  store i32 3000000, i32* %10, align 4
  br label %63

41:                                               ; preds = %28
  %42 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %43 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMC_SIGNAL_VOLTAGE_180, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.k3_priv*, %struct.k3_priv** %7, align 8
  %49 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AO_SCTRL_CTRL3, align 4
  %52 = load i32, i32* @AO_SCTRL_SEL18, align 4
  %53 = load i32, i32* @AO_SCTRL_SEL18, align 4
  %54 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  store i32 1800000, i32* %9, align 4
  store i32 1800000, i32* %10, align 4
  br label %62

55:                                               ; preds = %41
  %56 = load %struct.dw_mci*, %struct.dw_mci** %8, align 8
  %57 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %100

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.dw_mci*, %struct.dw_mci** %8, align 8
  %68 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %100

72:                                               ; preds = %63
  %73 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @IS_ERR_OR_NULL(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %100

80:                                               ; preds = %72
  %81 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @regulator_set_voltage(i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %80
  %91 = load %struct.dw_mci*, %struct.dw_mci** %8, align 8
  %92 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i32, i8*, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %90, %79, %66, %55, %27
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
