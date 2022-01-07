; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_gain_override_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_gain_override_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_rx_gain_override_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 1, i32 0
  store i32 %9, i32* %5, align 4
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 8
  %13 = call i32 @mod_phy_reg(%struct.brcms_phy* %10, i32 1200, i32 256, i32 %12)
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 0
  %17 = call i32 @mod_phy_reg(%struct.brcms_phy* %14, i32 1100, i32 1, i32 %16)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @LCNREV_LT(i32 %21, i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 4
  %28 = call i32 @mod_phy_reg(%struct.brcms_phy* %25, i32 1100, i32 16, i32 %27)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 6
  %32 = call i32 @mod_phy_reg(%struct.brcms_phy* %29, i32 1100, i32 64, i32 %31)
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 5
  %36 = call i32 @mod_phy_reg(%struct.brcms_phy* %33, i32 1200, i32 32, i32 %35)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 6
  %40 = call i32 @mod_phy_reg(%struct.brcms_phy* %37, i32 1200, i32 64, i32 %39)
  br label %54

41:                                               ; preds = %2
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 12
  %45 = call i32 @mod_phy_reg(%struct.brcms_phy* %42, i32 1200, i32 4096, i32 %44)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 13
  %49 = call i32 @mod_phy_reg(%struct.brcms_phy* %46, i32 1200, i32 8192, i32 %48)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 %51, 5
  %53 = call i32 @mod_phy_reg(%struct.brcms_phy* %50, i32 1200, i32 32, i32 %52)
  br label %54

54:                                               ; preds = %41, %24
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @CHSPEC_IS2G(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 %62, 10
  %64 = call i32 @mod_phy_reg(%struct.brcms_phy* %61, i32 1200, i32 1024, i32 %63)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 %66, 3
  %68 = call i32 @mod_phy_reg(%struct.brcms_phy* %65, i32 1253, i32 8, i32 %67)
  br label %69

69:                                               ; preds = %60, %54
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @LCNREV_LT(i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
