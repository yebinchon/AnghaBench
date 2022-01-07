; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.brcmf_cfg80211_profile }
%struct.brcmf_cfg80211_profile = type { i32 }
%struct.brcmf_scb_val_le = type { i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Enter. Reason code = %d\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@BRCMF_VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4
@BRCMF_VIF_STATUS_CONNECTING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BRCMF_C_DISASSOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"error (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wiphy*, %struct.net_device*, i32)* @brcmf_cfg80211_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_cfg80211_disconnect(%struct.wiphy* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_if*, align 8
  %10 = alloca %struct.brcmf_cfg80211_profile*, align 8
  %11 = alloca %struct.brcmf_pub*, align 8
  %12 = alloca %struct.brcmf_scb_val_le, align 4
  %13 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %15 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %14)
  store %struct.brcmf_cfg80211_info* %15, %struct.brcmf_cfg80211_info** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %16)
  store %struct.brcmf_if* %17, %struct.brcmf_if** %9, align 8
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %19 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.brcmf_cfg80211_profile* %21, %struct.brcmf_cfg80211_profile** %10, align 8
  %22 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %22, i32 0, i32 0
  %24 = load %struct.brcmf_pub*, %struct.brcmf_pub** %23, align 8
  store %struct.brcmf_pub* %24, %struct.brcmf_pub** %11, align 8
  store i64 0, i64* %13, align 8
  %25 = load i32, i32* @TRACE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %29 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @check_vif_up(%struct.TYPE_2__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i64, i64* @EIO, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %74

36:                                               ; preds = %3
  %37 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTED, align 4
  %38 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %39 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 %37, i32* %41)
  %43 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTING, align 4
  %44 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %45 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %43, i32* %47)
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @cfg80211_disconnected(%struct.net_device* %49, i32 %50, i32* null, i32 0, i32 1, i32 %51)
  %53 = getelementptr inbounds %struct.brcmf_scb_val_le, %struct.brcmf_scb_val_le* %12, i32 0, i32 1
  %54 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %10, align 8
  %55 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %54, i32 0, i32 0
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32* %53, i32* %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = getelementptr inbounds %struct.brcmf_scb_val_le, %struct.brcmf_scb_val_le* %12, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %62 = load i32, i32* @BRCMF_C_DISASSOC, align 4
  %63 = call i64 @brcmf_fil_cmd_data_set(%struct.brcmf_if* %61, i32 %62, %struct.brcmf_scb_val_le* %12, i32 8)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %36
  %67 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @bphy_err(%struct.brcmf_pub* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %66, %36
  %71 = load i32, i32* @TRACE, align 4
  %72 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i64, i64* %13, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %70, %33
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @check_vif_up(%struct.TYPE_2__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cfg80211_disconnected(%struct.net_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @brcmf_fil_cmd_data_set(%struct.brcmf_if*, i32, %struct.brcmf_scb_val_le*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
