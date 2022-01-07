; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_papd_cal_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_papd_cal_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpwr_papd_cal_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = call i64 @PHY_IPA(%struct.brcms_phy* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = call i64 @wlc_phy_txpwr_ison_nphy(%struct.brcms_phy* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = call i64 @wlc_phy_txpwr_idx_cur_get_nphy(%struct.brcms_phy* %16, i32 0)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %17, %22
  %24 = call i64 @abs(i64 %23)
  %25 = trunc i64 %24 to i32
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %39, label %27

27:                                               ; preds = %15
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = call i64 @wlc_phy_txpwr_idx_cur_get_nphy(%struct.brcms_phy* %28, i32 1)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %29, %34
  %36 = call i64 @abs(i64 %35)
  %37 = trunc i64 %36 to i32
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %27, %15, %6
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = call i32 @wlc_phy_a4(%struct.brcms_phy* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %27, %11, %1
  ret void
}

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_phy_txpwr_ison_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @wlc_phy_txpwr_idx_cur_get_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_a4(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
