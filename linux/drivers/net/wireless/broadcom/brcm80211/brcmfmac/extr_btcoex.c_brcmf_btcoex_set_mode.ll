; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_cfg80211_info = type { i32, %struct.brcmf_btcoex_info* }
%struct.brcmf_btcoex_info = type { %struct.brcmf_cfg80211_vif*, i32, i32 }
%struct.brcmf_if = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DHCP session starts\0A\00", align 1
@BRCMF_BT_DHCP_IDLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DHCP session ends\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown mode, ignored\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_btcoex_set_mode(%struct.brcmf_cfg80211_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_btcoex_info*, align 8
  %10 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_cfg80211_vif* %0, %struct.brcmf_cfg80211_vif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(i32 %14)
  store %struct.brcmf_cfg80211_info* %15, %struct.brcmf_cfg80211_info** %8, align 8
  %16 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %17 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %16, i32 0, i32 1
  %18 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %17, align 8
  store %struct.brcmf_btcoex_info* %18, %struct.brcmf_btcoex_info** %9, align 8
  %19 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.brcmf_if* @brcmf_get_ifp(i32 %21, i32 0)
  store %struct.brcmf_if* %22, %struct.brcmf_if** %10, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %68 [
    i32 129, label %24
    i32 128, label %50
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @INFO, align 4
  %26 = call i32 @brcmf_dbg(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %9, align 8
  %28 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BRCMF_BT_DHCP_IDLE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %72

35:                                               ; preds = %24
  %36 = load %struct.brcmf_if*, %struct.brcmf_if** %10, align 8
  %37 = call i32 @brcmf_btcoex_is_sco_active(%struct.brcmf_if* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @msecs_to_jiffies(i32 %40)
  %42 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %9, align 8
  %43 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %5, align 8
  %45 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %9, align 8
  %46 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %45, i32 0, i32 0
  store %struct.brcmf_cfg80211_vif* %44, %struct.brcmf_cfg80211_vif** %46, align 8
  %47 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %9, align 8
  %48 = call i32 @brcmf_btcoex_dhcp_start(%struct.brcmf_btcoex_info* %47)
  br label %49

49:                                               ; preds = %39, %35
  br label %71

50:                                               ; preds = %3
  %51 = load i32, i32* @INFO, align 4
  %52 = call i32 @brcmf_dbg(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %9, align 8
  %54 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BRCMF_BT_DHCP_IDLE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %5, align 8
  %60 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %9, align 8
  %61 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %60, i32 0, i32 0
  %62 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %61, align 8
  %63 = icmp eq %struct.brcmf_cfg80211_vif* %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %9, align 8
  %66 = call i32 @brcmf_btcoex_dhcp_end(%struct.brcmf_btcoex_info* %65)
  br label %67

67:                                               ; preds = %64, %58, %50
  br label %71

68:                                               ; preds = %3
  %69 = load i32, i32* @INFO, align 4
  %70 = call i32 @brcmf_dbg(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %67, %49
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %32
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(i32) #1

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(i32, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_btcoex_is_sco_active(%struct.brcmf_if*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @brcmf_btcoex_dhcp_start(%struct.brcmf_btcoex_info*) #1

declare dso_local i32 @brcmf_btcoex_dhcp_end(%struct.brcmf_btcoex_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
