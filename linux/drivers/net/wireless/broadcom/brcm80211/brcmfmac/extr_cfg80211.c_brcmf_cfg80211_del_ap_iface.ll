; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_del_ap_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_del_ap_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"interface_remove\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"interface_remove failed %d\0A\00", align 1
@BRCMF_E_IF_DEL = common dso_local global i32 0, align 4
@BRCMF_VIF_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"timeout occurred\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*)* @brcmf_cfg80211_del_ap_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_del_ap_iface(%struct.wiphy* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.brcmf_cfg80211_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.brcmf_if*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %4, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %12 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %11)
  store %struct.brcmf_cfg80211_info* %12, %struct.brcmf_cfg80211_info** %5, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %16)
  store %struct.brcmf_if* %17, %struct.brcmf_if** %7, align 8
  %18 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %18, i32 0, i32 0
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %19, align 8
  store %struct.brcmf_pub* %20, %struct.brcmf_pub** %8, align 8
  %21 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %22 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %23 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %21, i32* %24)
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %27 = call i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %36 = load i32, i32* @BRCMF_E_IF_DEL, align 4
  %37 = load i32, i32* @BRCMF_VIF_EVENT_TIMEOUT, align 4
  %38 = call i32 @brcmf_cfg80211_wait_vif_event(%struct.brcmf_cfg80211_info* %35, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %43 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %48 = call i32 @brcmf_remove_interface(%struct.brcmf_if* %47, i32 1)
  br label %49

49:                                               ; preds = %46, %41, %30
  %50 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %51 = call i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info* %50, i32* null)
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_cfg80211_arm_vif_event(%struct.brcmf_cfg80211_info*, i32*) #1

declare dso_local i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if*, i8*, i32*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @brcmf_cfg80211_wait_vif_event(%struct.brcmf_cfg80211_info*, i32, i32) #1

declare dso_local i32 @brcmf_remove_interface(%struct.brcmf_if*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
