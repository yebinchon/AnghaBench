; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_ops_switch_volt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_ops_switch_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.msdc_host = type { i32, i32, i32, i32 }

@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported signal voltage!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Regulator set error %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @msdc_ops_switch_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_ops_switch_volt(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.msdc_host*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %9 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.msdc_host* %9, %struct.msdc_host** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IS_ERR(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %74, label %16

16:                                               ; preds = %2
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MMC_SIGNAL_VOLTAGE_330, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %24 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %30 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %76

35:                                               ; preds = %22, %16
  %36 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %38 = call i32 @mmc_regulator_set_vqmmc(%struct.mmc_host* %36, %struct.mmc_ios* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %43 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  br label %73

50:                                               ; preds = %35
  %51 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %58 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %61 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pinctrl_select_state(i32 %59, i32 %62)
  br label %72

64:                                               ; preds = %50
  %65 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %66 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %69 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pinctrl_select_state(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %64, %56
  br label %73

73:                                               ; preds = %72, %41
  br label %74

74:                                               ; preds = %73, %2
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %28
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_regulator_set_vqmmc(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
