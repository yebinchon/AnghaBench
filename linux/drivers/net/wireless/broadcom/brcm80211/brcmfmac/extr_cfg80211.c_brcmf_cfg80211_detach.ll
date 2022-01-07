; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_cfg80211_detach(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca %struct.brcmf_cfg80211_info*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %2, align 8
  %3 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %4 = icmp ne %struct.brcmf_cfg80211_info* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %8 = call i32 @brcmf_pno_detach(%struct.brcmf_cfg80211_info* %7)
  %9 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %10 = call i32 @brcmf_btcoex_detach(%struct.brcmf_cfg80211_info* %9)
  %11 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wiphy_unregister(i32 %13)
  %15 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %16 = call i32 @wl_deinit_priv(%struct.brcmf_cfg80211_info* %15)
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @brcmf_free_wiphy(i32 %19)
  %21 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %22 = call i32 @kfree(%struct.brcmf_cfg80211_info* %21)
  br label %23

23:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @brcmf_pno_detach(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_btcoex_detach(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @wiphy_unregister(i32) #1

declare dso_local i32 @wl_deinit_priv(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_free_wiphy(i32) #1

declare dso_local i32 @kfree(%struct.brcmf_cfg80211_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
