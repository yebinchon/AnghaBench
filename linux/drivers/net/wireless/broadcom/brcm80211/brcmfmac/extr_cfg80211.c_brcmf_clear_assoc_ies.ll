; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_clear_assoc_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_clear_assoc_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32 }
%struct.brcmf_cfg80211_connect_info = type { i64, i32*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_cfg80211_info*)* @brcmf_clear_assoc_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_clear_assoc_ies(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca %struct.brcmf_cfg80211_info*, align 8
  %3 = alloca %struct.brcmf_cfg80211_connect_info*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %2, align 8
  %4 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %5 = call %struct.brcmf_cfg80211_connect_info* @cfg_to_conn(%struct.brcmf_cfg80211_info* %4)
  store %struct.brcmf_cfg80211_connect_info* %5, %struct.brcmf_cfg80211_connect_info** %3, align 8
  %6 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @kfree(i32* %8)
  %10 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %10, i32 0, i32 3
  store i32* null, i32** %11, align 8
  %12 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %3, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %3, align 8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %3, align 8
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  ret void
}

declare dso_local %struct.brcmf_cfg80211_connect_info* @cfg_to_conn(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
