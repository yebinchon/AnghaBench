; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wowl_clear\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"clr\00", align 1
@BRCMF_FEAT_WOWL_ARP_ND = common dso_local global i32 0, align 4
@BRCMF_C_SET_PM = common dso_local global i32 0, align 4
@BRCMF_E_PFN_NET_FOUND = common dso_local global i32 0, align 4
@brcmf_notify_sched_scan_results = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*)* @brcmf_cfg80211_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_cfg80211_resume(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %6)
  store %struct.brcmf_cfg80211_info* %7, %struct.brcmf_cfg80211_info** %3, align 8
  %8 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %9 = call %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info* %8)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %10)
  store %struct.brcmf_if* %11, %struct.brcmf_if** %5, align 8
  %12 = load i32, i32* @TRACE, align 4
  %13 = call i32 @brcmf_dbg(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %1
  %20 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %22 = call i32 @brcmf_report_wowl_wakeind(%struct.wiphy* %20, %struct.brcmf_if* %21)
  %23 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %24 = call i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %25 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %26 = call i32 @brcmf_config_wowl_pattern(%struct.brcmf_if* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32* null, i32 0)
  %27 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %28 = load i32, i32* @BRCMF_FEAT_WOWL_ARP_ND, align 4
  %29 = call i32 @brcmf_feat_is_enabled(%struct.brcmf_if* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %33 = call i32 @brcmf_configure_arp_nd_offload(%struct.brcmf_if* %32, i32 1)
  br label %34

34:                                               ; preds = %31, %19
  %35 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %36 = load i32, i32* @BRCMF_C_SET_PM, align 4
  %37 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %35, i32 %36, i32 %40)
  %42 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %43 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %46 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %34
  %51 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %55 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @brcmf_cfg80211_sched_scan_stop(i32 %53, i32 %56, i32 0)
  %58 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BRCMF_E_PFN_NET_FOUND, align 4
  %62 = call i32 @brcmf_fweh_unregister(i32 %60, i32 %61)
  %63 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %64 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BRCMF_E_PFN_NET_FOUND, align 4
  %67 = load i32, i32* @brcmf_notify_sched_scan_results, align 4
  %68 = call i32 @brcmf_fweh_register(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %70 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %50, %34
  br label %73

73:                                               ; preds = %72, %1
  ret i32 0
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_report_wowl_wakeind(%struct.wiphy*, %struct.brcmf_if*) #1

declare dso_local i32 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #1

declare dso_local i32 @brcmf_config_wowl_pattern(%struct.brcmf_if*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @brcmf_feat_is_enabled(%struct.brcmf_if*, i32) #1

declare dso_local i32 @brcmf_configure_arp_nd_offload(%struct.brcmf_if*, i32) #1

declare dso_local i32 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_cfg80211_sched_scan_stop(i32, i32, i32) #1

declare dso_local i32 @brcmf_fweh_unregister(i32, i32) #1

declare dso_local i32 @brcmf_fweh_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
