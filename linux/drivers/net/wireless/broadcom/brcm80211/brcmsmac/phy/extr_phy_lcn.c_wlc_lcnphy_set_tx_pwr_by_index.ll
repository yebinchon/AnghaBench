; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tx_pwr_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tx_pwr_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64, i64 }
%struct.phytbl_info = type { i32, i32, i32*, i64, i32 }
%struct.lcnphy_txgains = type { i32, i32, i32, i32 }

@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_OFF = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_IQ_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_GAIN_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_LO_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_PWR_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phytbl_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lcnphy_txgains, align 4
  %14 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %17, align 8
  store %struct.brcms_phy_lcnphy* %18, %struct.brcms_phy_lcnphy** %14, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %22 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %26 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %28 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 0
  store i32 32, i32* %29, align 8
  %30 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %32 = load i32, i32* @LCNPHY_TX_PWR_CTRL_OFF, align 4
  %33 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %31, i32 %32)
  %34 = load i64, i64* @LCNPHY_TX_PWR_CTRL_IQ_OFFSET, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 2
  store i32* %9, i32** %39, align 8
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %40, %struct.phytbl_info* %5)
  %42 = load i64, i64* @LCNPHY_TX_PWR_CTRL_GAIN_OFFSET, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 0
  store i32 32, i32* %47, align 8
  %48 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 2
  store i32* %10, i32** %48, align 8
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %50 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %49, %struct.phytbl_info* %5)
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %13, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 8
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %13, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %13, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 28
  %64 = and i32 %63, 7
  %65 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %13, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %67 = call i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy* %66, %struct.lcnphy_txgains* %13)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %69, 24
  %71 = and i32 %70, 127
  %72 = call i32 @wlc_lcnphy_set_pa_gain(%struct.brcms_phy* %68, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 20
  %75 = and i32 %74, 255
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %8, align 8
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @wlc_lcnphy_set_bbmult(%struct.brcms_phy* %77, i64 %78)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %81 = call i32 @wlc_lcnphy_enable_tx_gain_override(%struct.brcms_phy* %80)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = call i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %119, label %85

85:                                               ; preds = %2
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 10
  %88 = and i32 %87, 1023
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 1023
  store i32 %90, i32* %7, align 4
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @wlc_lcnphy_set_tx_iqcc(%struct.brcms_phy* %91, i32 %92, i32 %93)
  %95 = load i64, i64* @LCNPHY_TX_PWR_CTRL_LO_OFFSET, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 2
  store i32* %11, i32** %100, align 8
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %101, %struct.phytbl_info* %5)
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @wlc_lcnphy_set_tx_locc(%struct.brcms_phy* %103, i32 %104)
  %106 = load i64, i64* @LCNPHY_TX_PWR_CTRL_PWR_OFFSET, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 3
  store i64 %109, i64* %110, align 8
  %111 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %5, i32 0, i32 2
  store i32* %12, i32** %111, align 8
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %113 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %112, %struct.phytbl_info* %5)
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %115 = load i32, i32* %12, align 4
  %116 = mul nsw i32 %115, 8
  %117 = shl i32 %116, 0
  %118 = call i32 @mod_phy_reg(%struct.brcms_phy* %114, i32 1702, i32 8191, i32 %117)
  br label %119

119:                                              ; preds = %85, %2
  ret void
}

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_read_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #1

declare dso_local i32 @wlc_lcnphy_set_pa_gain(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_bbmult(%struct.brcms_phy*, i64) #1

declare dso_local i32 @wlc_lcnphy_enable_tx_gain_override(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_iqcc(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_locc(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
