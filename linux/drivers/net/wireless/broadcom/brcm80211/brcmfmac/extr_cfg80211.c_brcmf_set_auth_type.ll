; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_auth_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_auth_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i32 }
%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_cfg80211_profile = type { %struct.brcmf_cfg80211_security }
%struct.brcmf_cfg80211_security = type { i32 }

@CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"open system\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"shared key\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"automatic, auth type (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"set auth failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cfg80211_connect_params*)* @brcmf_set_auth_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_set_auth_type(%struct.net_device* %0, %struct.cfg80211_connect_params* %1) #0 {
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
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %25
  ]

22:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @CONN, align 4
  %24 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %34

25:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %26 = load i32, i32* @CONN, align 4
  %27 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %34

28:                                               ; preds = %2
  store i32 2, i32* %10, align 4
  %29 = load i32, i32* @CONN, align 4
  %30 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %25, %22
  %35 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @bphy_err(%struct.brcmf_pub* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %34
  %46 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %47 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %46, i32 0, i32 0
  store %struct.brcmf_cfg80211_security* %47, %struct.brcmf_cfg80211_security** %9, align 8
  %48 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %49 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %40
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.brcmf_cfg80211_profile* @ndev_to_prof(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
