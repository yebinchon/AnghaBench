; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_chanspec_tweaks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_chanspec_tweaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32 }

@BCMA_CC_PMU_CTL = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL_PLL_UPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_set_chanspec_tweaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_chanspec_tweaks(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @CHSPEC_CHANNEL(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %11, align 8
  store %struct.brcms_phy_lcnphy* %12, %struct.brcms_phy_lcnphy** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 14
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = call i32 @mod_phy_reg(%struct.brcms_phy* %16, i32 1096, i32 768, i32 512)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = call i32 @mod_phy_reg(%struct.brcms_phy* %19, i32 1096, i32 768, i32 256)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %23 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %28 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %27, i32 0, i32 0
  store i32 4, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 11
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %53, label %94

53:                                               ; preds = %50, %47, %44, %41, %38, %35, %32, %29
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @bcma_chipco_pll_write(i32* %59, i32 2, i32 50334724)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = call i32 @bcma_chipco_pll_maskset(i32* %66, i32 3, i32 -16777216, i32 0)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = call i32 @bcma_chipco_pll_write(i32* %73, i32 4, i32 536872384)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %82 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  %83 = call i32 @bcma_cc_set32(i32* %80, i32 %81, i32 %82)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %85 = call i32 @write_phy_reg(%struct.brcms_phy* %84, i32 2370, i32 0)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = call i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy* %86, i32 0)
  %88 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %89 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %91 = call i32 @mod_phy_reg(%struct.brcms_phy* %90, i32 1060, i32 65280, i32 6912)
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %93 = call i32 @write_phy_reg(%struct.brcms_phy* %92, i32 1061, i32 22791)
  br label %135

94:                                               ; preds = %50
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @bcma_chipco_pll_write(i32* %100, i32 2, i32 51645444)
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %103 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = call i32 @bcma_chipco_pll_maskset(i32* %107, i32 3, i32 -16777216, i32 3355443)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i32 @bcma_chipco_pll_write(i32* %114, i32 4, i32 539764768)
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %117 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %123 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  %124 = call i32 @bcma_cc_set32(i32* %121, i32 %122, i32 %123)
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %126 = call i32 @write_phy_reg(%struct.brcms_phy* %125, i32 2370, i32 0)
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %128 = call i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy* %127, i32 1)
  %129 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %130 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %132 = call i32 @mod_phy_reg(%struct.brcms_phy* %131, i32 1060, i32 65280, i32 7936)
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %134 = call i32 @write_phy_reg(%struct.brcms_phy* %133, i32 1061, i32 22794)
  br label %135

135:                                              ; preds = %94, %53
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %137 = call i32 @or_phy_reg(%struct.brcms_phy* %136, i32 1098, i32 68)
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %139 = call i32 @write_phy_reg(%struct.brcms_phy* %138, i32 1098, i32 128)
  ret void
}

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @bcma_chipco_pll_write(i32*, i32, i32) #1

declare dso_local i32 @bcma_chipco_pll_maskset(i32*, i32, i32, i32) #1

declare dso_local i32 @bcma_cc_set32(i32*, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_txrx_spur_avoidance_mode(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
