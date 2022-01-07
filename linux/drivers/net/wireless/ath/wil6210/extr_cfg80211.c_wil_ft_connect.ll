; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_ft_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_ft_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32, i32, i32, i32 }
%struct.wmi_ft_auth_cmd = type { i32, i64 }

@WMI_FW_CAPABILITY_FT_ROAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"FT: FW does not support FT roaming\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"FT: prev_bssid was not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"FT: can not roam to same AP\0A\00", align 1
@wil_vif_fwconnected = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"FT: roam while not connected\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"FT: privacy mismatch, current (%d) roam (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"FT: roam is not valid for PBSS\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"FT: roaming\0A\00", align 1
@wil_vif_ft_roam = common dso_local global i32 0, align 4
@WMI_FT_AUTH_CMDID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_connect_params*)* @wil_ft_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_ft_connect(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_connect_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.wil6210_priv*, align 8
  %9 = alloca %struct.wil6210_vif*, align 8
  %10 = alloca %struct.wmi_ft_auth_cmd, align 8
  %11 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %7, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %13 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %12)
  store %struct.wil6210_priv* %13, %struct.wil6210_priv** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %14)
  store %struct.wil6210_vif* %15, %struct.wil6210_vif** %9, align 8
  %16 = load i32, i32* @WMI_FW_CAPABILITY_FT_ROAMING, align 4
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %18 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %24 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %137

27:                                               ; preds = %3
  %28 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %29 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %34 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %137

37:                                               ; preds = %27
  %38 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %39 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %42 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ether_addr_equal(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %48 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %137

51:                                               ; preds = %37
  %52 = load i32, i32* @wil_vif_fwconnected, align 4
  %53 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %54 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @test_bit(i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %60 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %137

63:                                               ; preds = %51
  %64 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %65 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %68 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %63
  %72 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %73 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %74 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %77 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %137

82:                                               ; preds = %63
  %83 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %84 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %89 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %137

92:                                               ; preds = %82
  %93 = call i32 @memset(%struct.wmi_ft_auth_cmd* %10, i32 0, i32 16)
  %94 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %95 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  %100 = getelementptr inbounds %struct.wmi_ft_auth_cmd, %struct.wmi_ft_auth_cmd* %10, i32 0, i32 1
  store i64 %99, i64* %100, align 8
  %101 = getelementptr inbounds %struct.wmi_ft_auth_cmd, %struct.wmi_ft_auth_cmd* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %104 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ether_addr_copy(i32 %102, i32 %105)
  %107 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %108 = call i32 @wil_info(%struct.wil6210_priv* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* @wil_vif_ft_roam, align 4
  %110 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %111 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @set_bit(i32 %109, i32 %112)
  %114 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %115 = load i32, i32* @WMI_FT_AUTH_CMDID, align 4
  %116 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %117 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @wmi_send(%struct.wil6210_priv* %114, i32 %115, i32 %118, %struct.wmi_ft_auth_cmd* %10, i32 16)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %92
  %123 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %124 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %123, i32 0, i32 1
  %125 = load i64, i64* @jiffies, align 8
  %126 = call i64 @msecs_to_jiffies(i32 5000)
  %127 = add nsw i64 %125, %126
  %128 = call i32 @mod_timer(i32* %124, i64 %127)
  br label %135

129:                                              ; preds = %92
  %130 = load i32, i32* @wil_vif_ft_roam, align 4
  %131 = load %struct.wil6210_vif*, %struct.wil6210_vif** %9, align 8
  %132 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @clear_bit(i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %129, %122
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %87, %71, %58, %46, %32, %22
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @memset(%struct.wmi_ft_auth_cmd*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_ft_auth_cmd*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
