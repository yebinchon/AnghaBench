; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_check_vif_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_check_vif_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_vif = type { i32 }

@BRCMF_VIF_STATUS_READY = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"device is not ready : status (%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_vif*)* @check_vif_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_vif_up(%struct.brcmf_cfg80211_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_cfg80211_vif*, align 8
  store %struct.brcmf_cfg80211_vif* %0, %struct.brcmf_cfg80211_vif** %3, align 8
  %4 = load i32, i32* @BRCMF_VIF_STATUS_READY, align 4
  %5 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %5, i32 0, i32 0
  %7 = call i32 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @INFO, align 4
  %11 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
