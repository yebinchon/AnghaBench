; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_read_lpf_bw_ctl_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_read_lpf_bw_ctl_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i32)* @wlc_phy_read_lpf_bw_ctl_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_phy_read_lpf_bw_ctl_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @CHSPEC_IS40(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 345, i32* %6, align 4
  br label %17

16:                                               ; preds = %9
  store i32 340, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %15
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %21, i32 %22, i32 1, i32 %23, i32 16, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 7
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
