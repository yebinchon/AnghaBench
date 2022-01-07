; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_del_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_del_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BRCMF_SCAN_STATUS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mpc\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*)* @brcmf_cfg80211_del_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_del_iface(%struct.wiphy* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.brcmf_cfg80211_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %9 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %8)
  store %struct.brcmf_cfg80211_info* %9, %struct.brcmf_cfg80211_info** %6, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %11 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %18 = call %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info* %17)
  %19 = icmp eq %struct.net_device* %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %75

23:                                               ; preds = %15, %2
  %24 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %25 = call i64 @brcmf_cfg80211_vif_event_armed(%struct.brcmf_cfg80211_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %75

30:                                               ; preds = %23
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* @BRCMF_SCAN_STATUS_BUSY, align 4
  %35 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %36 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %35, i32 0, i32 1
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %41 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = call i64 @netdev_priv(%struct.net_device* %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = call i64 @netdev_priv(%struct.net_device* %49)
  %51 = call i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info* %48, i64 %50, i32 1, i32 1)
  br label %52

52:                                               ; preds = %47, %39, %33
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = call i64 @netdev_priv(%struct.net_device* %53)
  %55 = call i32 @brcmf_fil_iovar_int_set(i64 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %56

56:                                               ; preds = %52, %30
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %58 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %72 [
    i32 138, label %60
    i32 130, label %60
    i32 136, label %60
    i32 128, label %60
    i32 134, label %60
    i32 135, label %60
    i32 137, label %63
    i32 133, label %67
    i32 131, label %67
    i32 132, label %67
    i32 129, label %71
  ]

60:                                               ; preds = %56, %56, %56, %56, %56, %56
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %56
  %64 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %66 = call i32 @brcmf_cfg80211_del_ap_iface(%struct.wiphy* %64, %struct.wireless_dev* %65)
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %56, %56, %56
  %68 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %70 = call i32 @brcmf_p2p_del_vif(%struct.wiphy* %68, %struct.wireless_dev* %69)
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %56, %71
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %67, %63, %60, %27, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local i64 @brcmf_cfg80211_vif_event_armed(%struct.brcmf_cfg80211_info*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_notify_escan_complete(%struct.brcmf_cfg80211_info*, i64, i32, i32) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(i64, i8*, i32) #1

declare dso_local i32 @brcmf_cfg80211_del_ap_iface(%struct.wiphy*, %struct.wireless_dev*) #1

declare dso_local i32 @brcmf_p2p_del_vif(%struct.wiphy*, %struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
