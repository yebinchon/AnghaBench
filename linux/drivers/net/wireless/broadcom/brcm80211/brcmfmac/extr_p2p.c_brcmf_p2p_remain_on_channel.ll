; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.brcmf_cfg80211_info = type { %struct.brcmf_p2p_info }
%struct.brcmf_p2p_info = type { i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Enter, channel: %d, duration ms (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_p2p_remain_on_channel(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.ieee80211_channel* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.brcmf_cfg80211_info*, align 8
  %12 = alloca %struct.brcmf_p2p_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %16 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %15)
  store %struct.brcmf_cfg80211_info* %16, %struct.brcmf_cfg80211_info** %11, align 8
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %11, align 8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %17, i32 0, i32 0
  store %struct.brcmf_p2p_info* %18, %struct.brcmf_p2p_info** %12, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ieee80211_frequency_to_channel(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @TRACE, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @brcmf_dbg(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %12, align 8
  %28 = call i32 @brcmf_p2p_enable_discovery(%struct.brcmf_p2p_info* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %56

32:                                               ; preds = %5
  %33 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %12, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @brcmf_p2p_discover_listen(%struct.brcmf_p2p_info* %33, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %56

40:                                               ; preds = %32
  %41 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %12, align 8
  %42 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %41, i32 0, i32 1
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %44 = call i32 @memcpy(i32* %42, %struct.ieee80211_channel* %43, i32 4)
  %45 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %12, align 8
  %46 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @cfg80211_ready_on_channel(%struct.wireless_dev* %49, i32 %51, %struct.ieee80211_channel* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %40, %39, %31
  %57 = load i32, i32* %13, align 4
  ret i32 %57
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @brcmf_p2p_enable_discovery(%struct.brcmf_p2p_info*) #1

declare dso_local i32 @brcmf_p2p_discover_listen(%struct.brcmf_p2p_info*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @cfg80211_ready_on_channel(%struct.wireless_dev*, i32, %struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
