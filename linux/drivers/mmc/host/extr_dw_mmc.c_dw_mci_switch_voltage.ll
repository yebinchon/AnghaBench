; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_switch_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_switch_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i64 }
%struct.dw_mci_slot = type { i32, %struct.dw_mci* }
%struct.dw_mci = type { %struct.dw_mci_drv_data* }
%struct.dw_mci_drv_data = type { i32 (%struct.mmc_host*, %struct.mmc_ios*)* }

@SDMMC_UHS_18V = common dso_local global i32 0, align 4
@UHS_REG = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Regulator set error %d - %s V\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.8\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"3.3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @dw_mci_switch_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_switch_voltage(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.dw_mci_slot*, align 8
  %7 = alloca %struct.dw_mci*, align 8
  %8 = alloca %struct.dw_mci_drv_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %13 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %12)
  store %struct.dw_mci_slot* %13, %struct.dw_mci_slot** %6, align 8
  %14 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %6, align 8
  %15 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %14, i32 0, i32 1
  %16 = load %struct.dw_mci*, %struct.dw_mci** %15, align 8
  store %struct.dw_mci* %16, %struct.dw_mci** %7, align 8
  %17 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %18 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %17, i32 0, i32 0
  %19 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %18, align 8
  store %struct.dw_mci_drv_data* %19, %struct.dw_mci_drv_data** %8, align 8
  %20 = load i32, i32* @SDMMC_UHS_18V, align 4
  %21 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %6, align 8
  %22 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %8, align 8
  %26 = icmp ne %struct.dw_mci_drv_data* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %8, align 8
  %29 = getelementptr inbounds %struct.dw_mci_drv_data, %struct.dw_mci_drv_data* %28, i32 0, i32 0
  %30 = load i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)** %29, align 8
  %31 = icmp ne i32 (%struct.mmc_host*, %struct.mmc_ios*)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %8, align 8
  %34 = getelementptr inbounds %struct.dw_mci_drv_data, %struct.dw_mci_drv_data* %33, i32 0, i32 0
  %35 = load i32 (%struct.mmc_host*, %struct.mmc_ios*)*, i32 (%struct.mmc_host*, %struct.mmc_ios*)** %34, align 8
  %36 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %38 = call i32 %35(%struct.mmc_host* %36, %struct.mmc_ios* %37)
  store i32 %38, i32* %3, align 4
  br label %88

39:                                               ; preds = %27, %2
  %40 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %41 = load i32, i32* @UHS_REG, align 4
  %42 = call i32 @mci_readl(%struct.dw_mci* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MMC_SIGNAL_VOLTAGE_330, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %57

53:                                               ; preds = %39
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %59 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IS_ERR(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %57
  %65 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %66 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %67 = call i32 @mmc_regulator_set_vqmmc(%struct.mmc_host* %65, %struct.mmc_ios* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %72 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %71, i32 0, i32 0
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %80 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %3, align 4
  br label %88

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.dw_mci*, %struct.dw_mci** %7, align 8
  %85 = load i32, i32* @UHS_REG, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @mci_writel(%struct.dw_mci* %84, i32 %85, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %70, %32
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_vqmmc(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
