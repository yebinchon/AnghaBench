; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rc_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rc_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_rc_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_rc_cal(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32 7, i32* %3, align 4
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @LCNREV_IS(i32 %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 11, i32* %3, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 10
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 %15, 5
  %17 = or i32 %14, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @write_phy_reg(%struct.brcms_phy* %20, i32 2355, i32 %21)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @write_phy_reg(%struct.brcms_phy* %23, i32 2356, i32 %24)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @write_phy_reg(%struct.brcms_phy* %26, i32 2357, i32 %27)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @write_phy_reg(%struct.brcms_phy* %29, i32 2358, i32 %30)
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 511
  %35 = call i32 @write_phy_reg(%struct.brcms_phy* %32, i32 2359, i32 %34)
  ret void
}

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
