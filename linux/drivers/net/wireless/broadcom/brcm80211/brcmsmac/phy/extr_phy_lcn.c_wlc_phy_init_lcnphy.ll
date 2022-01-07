; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_init_lcnphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_init_lcnphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32, i32, i64 }
%struct.brcms_phy_pub = type { i32 }

@AFE_CLK_INIT_MODE_TXRX2X = common dso_local global i32 0, align 4
@BFL_FEM = common dso_local global i32 0, align 4
@FIXED_TXPWR = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_HW = common dso_local global i32 0, align 4
@LCNPHY_NOISE_SAMPLES_DEFAULT = common dso_local global i32 0, align 4
@PHY_PERICAL_PHYINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_init_lcnphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  store %struct.brcms_phy_lcnphy* %7, %struct.brcms_phy_lcnphy** %3, align 8
  %8 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = call i32 @or_phy_reg(%struct.brcms_phy* %15, i32 1098, i32 128)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = call i32 @and_phy_reg(%struct.brcms_phy* %17, i32 1098, i32 127)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = load i32, i32* @AFE_CLK_INIT_MODE_TXRX2X, align 4
  %21 = call i32 @wlc_lcnphy_afe_clk_init(%struct.brcms_phy* %19, i32 %20)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i32 @write_phy_reg(%struct.brcms_phy* %22, i32 1546, i32 160)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = call i32 @write_phy_reg(%struct.brcms_phy* %24, i32 1130, i32 25)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = call i32 @wlc_lcnphy_baseband_init(%struct.brcms_phy* %26)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = call i32 @wlc_lcnphy_radio_init(%struct.brcms_phy* %28)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @CHSPEC_IS2G(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = bitcast %struct.brcms_phy* %36 to %struct.brcms_phy_pub*
  %38 = call i32 @wlc_lcnphy_tx_pwr_ctrl_init(%struct.brcms_phy_pub* %37)
  br label %39

39:                                               ; preds = %35, %1
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = bitcast %struct.brcms_phy* %40 to %struct.brcms_phy_pub*
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub* %41, i32 %44)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @bcma_chipco_regctl_maskset(i32* %51, i32 0, i32 -16, i32 9)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @bcma_chipco_chipctl_maskset(i32* %58, i32 0, i32 0, i32 63823325)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @BFL_FEM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %39
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = call i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = load i32, i32* @FIXED_TXPWR, align 4
  %75 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68, %39
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = call i32 @wlc_lcnphy_agc_temp_init(%struct.brcms_phy* %77)
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = call i32 @wlc_lcnphy_temp_adj(%struct.brcms_phy* %79)
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %82 = call i32 @mod_phy_reg(%struct.brcms_phy* %81, i32 1096, i32 16384, i32 16384)
  %83 = call i32 @udelay(i32 100)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = call i32 @mod_phy_reg(%struct.brcms_phy* %84, i32 1096, i32 16384, i32 0)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %87 = load i32, i32* @LCNPHY_TX_PWR_CTRL_HW, align 4
  %88 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %86, i32 %87)
  %89 = load i32, i32* @LCNPHY_NOISE_SAMPLES_DEFAULT, align 4
  %90 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %3, align 8
  %91 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = load i32, i32* @PHY_PERICAL_PHYINIT, align 4
  %94 = call i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy* %92, i32 %93)
  ret void
}

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_afe_clk_init(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_baseband_init(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_radio_init(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_lcnphy_tx_pwr_ctrl_init(%struct.brcms_phy_pub*) #1

declare dso_local i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub*, i32) #1

declare dso_local i32 @bcma_chipco_regctl_maskset(i32*, i32, i32, i32) #1

declare dso_local i32 @bcma_chipco_chipctl_maskset(i32*, i32, i32, i32) #1

declare dso_local i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_agc_temp_init(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_temp_adj(%struct.brcms_phy*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_calib_modes(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
