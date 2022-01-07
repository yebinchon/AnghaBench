; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Enter %d %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"TX_POWER_FIXED - dbm is negative\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WL_TXPWR_OVERRIDE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Unsupported type %d\0A\00", align 1
@WL_RADIO_SW_DISABLE = common dso_local global i32 0, align 4
@BRCMF_C_SET_RADIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"WLC_SET_RADIO error (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"qtxpower\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"qtxpower error (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Exit %d (qdbm)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i32, i32)* @brcmf_cfg80211_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_set_tx_power(%struct.wiphy* %0, %struct.wireless_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcmf_cfg80211_info*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.brcmf_if*, align 8
  %13 = alloca %struct.brcmf_pub*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %18 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %17)
  store %struct.brcmf_cfg80211_info* %18, %struct.brcmf_cfg80211_info** %10, align 8
  %19 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %20 = call %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info* %19)
  store %struct.net_device* %20, %struct.net_device** %11, align 8
  %21 = load %struct.net_device*, %struct.net_device** %11, align 8
  %22 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %21)
  store %struct.brcmf_if* %22, %struct.brcmf_if** %12, align 8
  %23 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %10, align 8
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %23, i32 0, i32 0
  %25 = load %struct.brcmf_pub*, %struct.brcmf_pub** %24, align 8
  store %struct.brcmf_pub* %25, %struct.brcmf_pub** %13, align 8
  store i32 127, i32* %16, align 4
  %26 = load i32, i32* @TRACE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %31 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @check_vif_up(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %98

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %60 [
    i32 130, label %40
    i32 128, label %41
    i32 129, label %41
  ]

40:                                               ; preds = %38
  br label %66

41:                                               ; preds = %38, %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %46 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %14, align 4
  br label %90

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 4, %50
  %52 = call i32 @MBM_TO_DBM(i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp sgt i32 %53, 127
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 127, i32* %16, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* @WL_TXPWR_OVERRIDE, align 4
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %16, align 4
  br label %66

60:                                               ; preds = %38
  %61 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %14, align 4
  br label %90

66:                                               ; preds = %56, %40
  %67 = load i32, i32* @WL_RADIO_SW_DISABLE, align 4
  %68 = shl i32 %67, 16
  store i32 %68, i32* %15, align 4
  %69 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %70 = load i32, i32* @BRCMF_C_SET_RADIO, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %69, i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %66
  %80 = load %struct.brcmf_if*, %struct.brcmf_if** %12, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %60, %44
  %91 = load i32, i32* @TRACE, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @WL_TXPWR_OVERRIDE, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %90, %35
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @check_vif_up(i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @MBM_TO_DBM(i32) #1

declare dso_local i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
