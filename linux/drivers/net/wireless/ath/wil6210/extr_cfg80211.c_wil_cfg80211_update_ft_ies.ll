; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_update_ft_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_update_ft_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_update_ft_ies_params = type { i32, i32 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32, %struct.cfg80211_bss*, i32 }
%struct.cfg80211_bss = type { i32 }
%struct.wmi_ft_reassoc_cmd = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"update ft ies, mid=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"FT IE \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@WMI_FW_CAPABILITY_FT_ROAMING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"FW does not support FT roaming\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@wil_vif_ft_roam = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"FT: bss is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WMI_FT_REASSOC_CMDID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"FT: reassoc failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_update_ft_ies_params*)* @wil_cfg80211_update_ft_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_update_ft_ies(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_update_ft_ies_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_update_ft_ies_params*, align 8
  %8 = alloca %struct.wil6210_priv*, align 8
  %9 = alloca %struct.wil6210_vif*, align 8
  %10 = alloca %struct.cfg80211_bss*, align 8
  %11 = alloca %struct.wmi_ft_reassoc_cmd, align 4
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_update_ft_ies_params* %2, %struct.cfg80211_update_ft_ies_params** %7, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %14 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %13)
  store %struct.wil6210_priv* %14, %struct.wil6210_priv** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %15)
  store %struct.wil6210_vif* %16, %struct.wil6210_vif** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %18 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %19 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %23 = load %struct.cfg80211_update_ft_ies_params*, %struct.cfg80211_update_ft_ies_params** %7, align 8
  %24 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, %struct.cfg80211_update_ft_ies_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cfg80211_update_ft_ies_params*, %struct.cfg80211_update_ft_ies_params** %7, align 8
  %27 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, %struct.cfg80211_update_ft_ies_params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 16, i32 1, i32 %25, i32 %28, i32 1)
  %30 = load i32, i32* @WMI_FW_CAPABILITY_FT_ROAMING, align 4
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %32 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @test_bit(i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %38 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %95

41:                                               ; preds = %3
  %42 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %43 = load %struct.cfg80211_update_ft_ies_params*, %struct.cfg80211_update_ft_ies_params** %7, align 8
  %44 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, %struct.cfg80211_update_ft_ies_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cfg80211_update_ft_ies_params*, %struct.cfg80211_update_ft_ies_params** %7, align 8
  %47 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, %struct.cfg80211_update_ft_ies_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wmi_update_ft_ies(%struct.wil6210_vif* %42, i32 %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %95

54:                                               ; preds = %41
  %55 = load i32, i32* @wil_vif_ft_roam, align 4
  %56 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %57 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @test_bit(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %95

62:                                               ; preds = %54
  %63 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %64 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %63, i32 0, i32 1
  %65 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %64, align 8
  store %struct.cfg80211_bss* %65, %struct.cfg80211_bss** %10, align 8
  %66 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %10, align 8
  %67 = icmp ne %struct.cfg80211_bss* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %70 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %95

73:                                               ; preds = %62
  %74 = call i32 @memset(%struct.wmi_ft_reassoc_cmd* %11, i32 0, i32 4)
  %75 = getelementptr inbounds %struct.wmi_ft_reassoc_cmd, %struct.wmi_ft_reassoc_cmd* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %10, align 8
  %78 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ether_addr_copy(i32 %76, i32 %79)
  %81 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %82 = load i32, i32* @WMI_FT_REASSOC_CMDID, align 4
  %83 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %84 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @wmi_send(%struct.wil6210_priv* %81, i32 %82, i32 %85, %struct.wmi_ft_reassoc_cmd* %11, i32 4)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %73
  %90 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %73
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %68, %61, %52, %36
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_hex_dump_misc(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wmi_update_ft_ies(%struct.wil6210_vif*, i32, i32) #1

declare dso_local i32 @memset(%struct.wmi_ft_reassoc_cmd*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_ft_reassoc_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
