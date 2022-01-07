; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_start_signal_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_start_signal_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.tmio_mmc_host = type { i32 }
%struct.renesas_sdhi = type { %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.pinctrl_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @renesas_sdhi_start_signal_voltage_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_sdhi_start_signal_voltage_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.tmio_mmc_host*, align 8
  %7 = alloca %struct.renesas_sdhi*, align 8
  %8 = alloca %struct.pinctrl_state*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.tmio_mmc_host* %11, %struct.tmio_mmc_host** %6, align 8
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %13 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %12)
  store %struct.renesas_sdhi* %13, %struct.renesas_sdhi** %7, align 8
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 128, label %17
    i32 129, label %21
  ]

17:                                               ; preds = %2
  %18 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %7, align 8
  %19 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %18, i32 0, i32 2
  %20 = load %struct.pinctrl_state*, %struct.pinctrl_state** %19, align 8
  store %struct.pinctrl_state* %20, %struct.pinctrl_state** %8, align 8
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %7, align 8
  %23 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %22, i32 0, i32 1
  %24 = load %struct.pinctrl_state*, %struct.pinctrl_state** %23, align 8
  store %struct.pinctrl_state* %24, %struct.pinctrl_state** %8, align 8
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %21, %17
  %29 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %7, align 8
  %30 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %29, i32 0, i32 0
  %31 = load %struct.pinctrl_state*, %struct.pinctrl_state** %30, align 8
  %32 = call i64 @IS_ERR(%struct.pinctrl_state* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.pinctrl_state*, %struct.pinctrl_state** %8, align 8
  %36 = call i64 @IS_ERR(%struct.pinctrl_state* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34, %28
  %39 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  store i32 %48, i32* %3, align 4
  br label %65

49:                                               ; preds = %34
  %50 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %51 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %54 = call i32 @mmc_regulator_set_vqmmc(i32 %52, %struct.mmc_ios* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %7, align 8
  %61 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %60, i32 0, i32 0
  %62 = load %struct.pinctrl_state*, %struct.pinctrl_state** %61, align 8
  %63 = load %struct.pinctrl_state*, %struct.pinctrl_state** %8, align 8
  %64 = call i32 @pinctrl_select_state(%struct.pinctrl_state* %62, %struct.pinctrl_state* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %57, %47, %25
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @mmc_regulator_set_vqmmc(i32, %struct.mmc_ios*) #1

declare dso_local i32 @pinctrl_select_state(%struct.pinctrl_state*, %struct.pinctrl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
