; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_txrx_spur_avoidance_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_txrx_spur_avoidance_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_txrx_spur_avoidance_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = call i32 @write_phy_reg(%struct.brcms_phy* %8, i32 2370, i32 7)
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = call i32 @write_phy_reg(%struct.brcms_phy* %10, i32 2363, i32 8215)
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = call i32 @write_phy_reg(%struct.brcms_phy* %12, i32 2364, i32 10181)
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = call i32 @write_phy_reg(%struct.brcms_phy* %14, i32 1098, i32 132)
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = call i32 @write_phy_reg(%struct.brcms_phy* %16, i32 1098, i32 128)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %19 = call i32 @write_phy_reg(%struct.brcms_phy* %18, i32 1747, i32 8738)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @write_phy_reg(%struct.brcms_phy* %20, i32 1747, i32 8736)
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = call i32 @write_phy_reg(%struct.brcms_phy* %23, i32 2370, i32 0)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = call i32 @write_phy_reg(%struct.brcms_phy* %25, i32 2363, i32 23)
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = call i32 @write_phy_reg(%struct.brcms_phy* %27, i32 2364, i32 1989)
  br label %29

29:                                               ; preds = %22, %7
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @wlapi_switch_macfreq(i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlapi_switch_macfreq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
