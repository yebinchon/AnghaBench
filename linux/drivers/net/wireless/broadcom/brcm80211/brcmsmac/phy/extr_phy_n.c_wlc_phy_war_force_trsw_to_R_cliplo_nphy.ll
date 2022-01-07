; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_war_force_trsw_to_R_cliplo_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_war_force_trsw_to_R_cliplo_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@PHY_CORE_0 = common dso_local global i64 0, align 8
@PHY_CORE_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @wlc_phy_war_force_trsw_to_R_cliplo_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_war_force_trsw_to_R_cliplo_nphy(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PHY_CORE_0, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = call i32 @write_phy_reg(%struct.brcms_phy* %9, i32 56, i32 4)
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @CHSPEC_IS2G(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = call i32 @write_phy_reg(%struct.brcms_phy* %17, i32 55, i32 96)
  br label %22

19:                                               ; preds = %8
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @write_phy_reg(%struct.brcms_phy* %20, i32 55, i32 4224)
  br label %22

22:                                               ; preds = %19, %16
  br label %43

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @PHY_CORE_1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = call i32 @write_phy_reg(%struct.brcms_phy* %28, i32 686, i32 4)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @CHSPEC_IS2G(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = call i32 @write_phy_reg(%struct.brcms_phy* %36, i32 685, i32 96)
  br label %41

38:                                               ; preds = %27
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = call i32 @write_phy_reg(%struct.brcms_phy* %39, i32 685, i32 4224)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %23
  br label %43

43:                                               ; preds = %42, %22
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
