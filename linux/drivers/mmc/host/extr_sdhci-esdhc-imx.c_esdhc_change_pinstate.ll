; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_change_pinstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_change_pinstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.pltfm_imx_data = type { %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.pinctrl_state = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"change pinctrl state for uhs %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @esdhc_change_pinstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_change_pinstate(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.pltfm_imx_data*, align 8
  %8 = alloca %struct.pinctrl_state*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %6, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %12 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.pltfm_imx_data* %12, %struct.pltfm_imx_data** %7, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mmc_dev(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %20 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %19, i32 0, i32 0
  %21 = load %struct.pinctrl_state*, %struct.pinctrl_state** %20, align 8
  %22 = call i64 @IS_ERR(%struct.pinctrl_state* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %2
  %25 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %26 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %25, i32 0, i32 1
  %27 = load %struct.pinctrl_state*, %struct.pinctrl_state** %26, align 8
  %28 = call i64 @IS_ERR(%struct.pinctrl_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %32 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %31, i32 0, i32 3
  %33 = load %struct.pinctrl_state*, %struct.pinctrl_state** %32, align 8
  %34 = call i64 @IS_ERR(%struct.pinctrl_state* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %38 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %37, i32 0, i32 2
  %39 = load %struct.pinctrl_state*, %struct.pinctrl_state** %38, align 8
  %40 = call i64 @IS_ERR(%struct.pinctrl_state* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30, %24, %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %55 [
    i32 128, label %47
    i32 130, label %47
    i32 129, label %51
    i32 132, label %51
    i32 131, label %51
  ]

47:                                               ; preds = %45, %45
  %48 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %49 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %48, i32 0, i32 3
  %50 = load %struct.pinctrl_state*, %struct.pinctrl_state** %49, align 8
  store %struct.pinctrl_state* %50, %struct.pinctrl_state** %8, align 8
  br label %59

51:                                               ; preds = %45, %45, %45
  %52 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %53 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %52, i32 0, i32 2
  %54 = load %struct.pinctrl_state*, %struct.pinctrl_state** %53, align 8
  store %struct.pinctrl_state* %54, %struct.pinctrl_state** %8, align 8
  br label %59

55:                                               ; preds = %45
  %56 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %57 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %56, i32 0, i32 1
  %58 = load %struct.pinctrl_state*, %struct.pinctrl_state** %57, align 8
  store %struct.pinctrl_state* %58, %struct.pinctrl_state** %8, align 8
  br label %59

59:                                               ; preds = %55, %51, %47
  %60 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %7, align 8
  %61 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %60, i32 0, i32 0
  %62 = load %struct.pinctrl_state*, %struct.pinctrl_state** %61, align 8
  %63 = load %struct.pinctrl_state*, %struct.pinctrl_state** %8, align 8
  %64 = call i32 @pinctrl_select_state(%struct.pinctrl_state* %62, %struct.pinctrl_state* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %42
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @pinctrl_select_state(%struct.pinctrl_state*, %struct.pinctrl_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
