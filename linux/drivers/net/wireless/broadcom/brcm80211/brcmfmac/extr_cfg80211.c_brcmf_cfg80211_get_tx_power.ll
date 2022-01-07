; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_get_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_get_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_cfg80211_vif = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"qtxpower\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"error (%d)\0A\00", align 1
@WL_TXPWR_OVERRIDE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Exit (0x%x %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i32*)* @brcmf_cfg80211_get_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_get_tx_power(%struct.wiphy* %0, %struct.wireless_dev* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %10 = alloca %struct.brcmf_pub*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %14 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %13)
  store %struct.brcmf_cfg80211_info* %14, %struct.brcmf_cfg80211_info** %8, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %16 = call %struct.brcmf_cfg80211_vif* @wdev_to_vif(%struct.wireless_dev* %15)
  store %struct.brcmf_cfg80211_vif* %16, %struct.brcmf_cfg80211_vif** %9, align 8
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %17, i32 0, i32 0
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %18, align 8
  store %struct.brcmf_pub* %19, %struct.brcmf_pub** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* @TRACE, align 4
  %21 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %23 = call i32 @check_vif_up(%struct.brcmf_cfg80211_vif* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %3
  %29 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %9, align 8
  %30 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @brcmf_fil_iovar_int_get(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @bphy_err(%struct.brcmf_pub* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @WL_TXPWR_OVERRIDE, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = sdiv i32 %43, 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i32, i32* @TRACE, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %25
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_cfg80211_vif* @wdev_to_vif(%struct.wireless_dev*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @check_vif_up(%struct.brcmf_cfg80211_vif*) #1

declare dso_local i32 @brcmf_fil_iovar_int_get(i32, i8*, i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
