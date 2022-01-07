; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_start_signal_voltage_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_start_signal_voltage_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.tmio_mmc_host = type { i64 }
%struct.uniphier_sd_priv = type { i32, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.pinctrl_state = type { i32 }

@UNIPHIER_SD_VOLT_330 = common dso_local global i32 0, align 4
@UNIPHIER_SD_VOLT_180 = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@UNIPHIER_SD_VOLT = common dso_local global i64 0, align 8
@UNIPHIER_SD_VOLT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @uniphier_sd_start_signal_voltage_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_sd_start_signal_voltage_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.tmio_mmc_host*, align 8
  %7 = alloca %struct.uniphier_sd_priv*, align 8
  %8 = alloca %struct.pinctrl_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %12 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %11)
  store %struct.tmio_mmc_host* %12, %struct.tmio_mmc_host** %6, align 8
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %14 = call %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host* %13)
  store %struct.uniphier_sd_priv* %14, %struct.uniphier_sd_priv** %7, align 8
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %28 [
    i32 128, label %18
    i32 129, label %23
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @UNIPHIER_SD_VOLT_330, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %7, align 8
  %21 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %20, i32 0, i32 2
  %22 = load %struct.pinctrl_state*, %struct.pinctrl_state** %21, align 8
  store %struct.pinctrl_state* %22, %struct.pinctrl_state** %8, align 8
  br label %31

23:                                               ; preds = %2
  %24 = load i32, i32* @UNIPHIER_SD_VOLT_180, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %7, align 8
  %26 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %25, i32 0, i32 1
  %27 = load %struct.pinctrl_state*, %struct.pinctrl_state** %26, align 8
  store %struct.pinctrl_state* %27, %struct.pinctrl_state** %8, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %23, %18
  %32 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %33 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UNIPHIER_SD_VOLT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @UNIPHIER_SD_VOLT_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @UNIPHIER_SD_VOLT_MASK, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @FIELD_PREP(i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %6, align 8
  %49 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UNIPHIER_SD_VOLT, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %7, align 8
  %55 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pinctrl_state*, %struct.pinctrl_state** %8, align 8
  %58 = call i32 @pinctrl_select_state(i32 %56, %struct.pinctrl_state* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %31, %28
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pinctrl_select_state(i32, %struct.pinctrl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
