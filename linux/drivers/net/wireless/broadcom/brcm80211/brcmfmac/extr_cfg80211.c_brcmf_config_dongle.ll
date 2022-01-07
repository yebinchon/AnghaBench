; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_config_dongle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_config_dongle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32, i64, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.brcmf_if = type { i32 }

@BRCMF_C_UP = common dso_local global i32 0, align 4
@PM_FAST = common dso_local global i32 0, align 4
@PM_OFF = common dso_local global i32 0, align 4
@BRCMF_C_SET_PM = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"power save set to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@BRCMF_C_SET_FAKEFRAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to set frameburst mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*)* @brcmf_config_dongle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_config_dongle(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.brcmf_if*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %3, align 8
  %10 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %10, i32 0, i32 2
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  store %struct.brcmf_pub* %12, %struct.brcmf_pub** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %2, align 4
  br label %89

19:                                               ; preds = %1
  %20 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %21 = call %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info* %20)
  store %struct.net_device* %21, %struct.net_device** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %23, align 8
  store %struct.wireless_dev* %24, %struct.wireless_dev** %6, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %25)
  store %struct.brcmf_if* %26, %struct.brcmf_if** %7, align 8
  %27 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %28 = load i32, i32* @BRCMF_C_UP, align 4
  %29 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %27, i32 %28, i32 0)
  %30 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %31 = call i32 @brcmf_dongle_scantime(%struct.brcmf_if* %30)
  %32 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %33 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* @PM_FAST, align 4
  br label %40

38:                                               ; preds = %19
  %39 = load i32, i32* @PM_OFF, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %8, align 4
  %42 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %43 = load i32, i32* @BRCMF_C_SET_PM, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %87

49:                                               ; preds = %40
  %50 = load i32, i32* @INFO, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %55 = call i32 @brcmf_dbg(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %57 = call i32 @brcmf_dongle_roam(%struct.brcmf_if* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %87

61:                                               ; preds = %49
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %63 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @brcmf_cfg80211_change_iface(i32 %64, %struct.net_device* %65, i32 %68, i32* null)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %87

73:                                               ; preds = %61
  %74 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %75 = call i32 @brcmf_configure_arp_nd_offload(%struct.brcmf_if* %74, i32 1)
  %76 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %77 = load i32, i32* @BRCMF_C_SET_FAKEFRAG, align 4
  %78 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %76, i32 %77, i32 1)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %83 = call i32 @bphy_err(%struct.brcmf_pub* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %87

84:                                               ; preds = %73
  %85 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %86 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %81, %72, %60, %48
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %17
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_dongle_scantime(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*) #1

declare dso_local i32 @brcmf_dongle_roam(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_cfg80211_change_iface(i32, %struct.net_device*, i32, i32*) #1

declare dso_local i32 @brcmf_configure_arp_nd_offload(%struct.brcmf_if*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
