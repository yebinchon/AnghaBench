; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_wpa_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_wpa_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_cfg80211_profile = type { %struct.brcmf_cfg80211_security }
%struct.brcmf_cfg80211_security = type { i32 }

@NL80211_WPA_VERSION_1 = common dso_local global i32 0, align 4
@WPA_AUTH_PSK = common dso_local global i32 0, align 4
@WPA_AUTH_UNSPECIFIED = common dso_local global i32 0, align 4
@NL80211_WPA_VERSION_2 = common dso_local global i32 0, align 4
@WPA2_AUTH_PSK = common dso_local global i32 0, align 4
@WPA2_AUTH_UNSPECIFIED = common dso_local global i32 0, align 4
@WPA_AUTH_DISABLED = common dso_local global i32 0, align 4
@CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"setting wpa_auth to 0x%0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"wpa_auth\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"set wpa_auth failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cfg80211_connect_params*)* @brcmf_set_wpa_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_set_wpa_version(%struct.net_device* %0, %struct.cfg80211_connect_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cfg80211_connect_params*, align 8
  %6 = alloca %struct.brcmf_if*, align 8
  %7 = alloca %struct.brcmf_cfg80211_profile*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca %struct.brcmf_cfg80211_security*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %12)
  store %struct.brcmf_if* %13, %struct.brcmf_if** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.brcmf_cfg80211_profile* @ndev_to_prof(%struct.net_device* %14)
  store %struct.brcmf_cfg80211_profile* %15, %struct.brcmf_cfg80211_profile** %7, align 8
  %16 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %17 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %16, i32 0, i32 0
  %18 = load %struct.brcmf_pub*, %struct.brcmf_pub** %17, align 8
  store %struct.brcmf_pub* %18, %struct.brcmf_pub** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NL80211_WPA_VERSION_1, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @WPA_AUTH_PSK, align 4
  %28 = load i32, i32* @WPA_AUTH_UNSPECIFIED, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %10, align 4
  br label %45

30:                                               ; preds = %2
  %31 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %32 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NL80211_WPA_VERSION_2, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @WPA2_AUTH_PSK, align 4
  %40 = load i32, i32* @WPA2_AUTH_UNSPECIFIED, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %10, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @WPA_AUTH_DISABLED, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i32, i32* @CONN, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @brcmf_dbg(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @bphy_err(%struct.brcmf_pub* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %69

59:                                               ; preds = %45
  %60 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %61 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %60, i32 0, i32 0
  store %struct.brcmf_cfg80211_security* %61, %struct.brcmf_cfg80211_security** %9, align 8
  %62 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %63 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %67 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %54
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.brcmf_cfg80211_profile* @ndev_to_prof(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
