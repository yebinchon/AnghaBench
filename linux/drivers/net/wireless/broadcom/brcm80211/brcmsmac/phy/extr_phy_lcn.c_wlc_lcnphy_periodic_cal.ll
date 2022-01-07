; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_periodic_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_periodic_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcnphy_rx_iqcomp = type { i32 }
%struct.brcms_phy = type { i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64, i32 }
%struct.phytbl_info = type { i32, i32*, i32, i64, i32 }
%struct.brcms_phy_pub = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@M_CTS_DURATION = common dso_local global i32 0, align 4
@lcnphy_rx_iqcomp_table_rev0 = common dso_local global %struct.lcnphy_rx_iqcomp* null, align 8
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_periodic_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_periodic_cal(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcnphy_rx_iqcomp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.phytbl_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %21, align 8
  store %struct.brcms_phy_lcnphy* %22, %struct.brcms_phy_lcnphy** %16, align 8
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %16, align 8
  %33 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @CHSPEC_CHANNEL(i32 %37)
  %39 = icmp ne i64 %34, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @CHSPEC_CHANNEL(i32 %43)
  %45 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %16, align 8
  %46 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %16, align 8
  %48 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @maccontrol, align 4
  %54 = call i32 @D11REGOFFS(i32 %53)
  %55 = call i32 @bcma_read32(i32 %52, i32 %54)
  %56 = load i32, i32* @MCTL_EN_MAC, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 0, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %1
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @M_CTS_DURATION, align 4
  %69 = call i32 @wlapi_bmac_write_shm(i32 %67, i32 %68, i32 10000)
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wlapi_suspend_mac_and_wait(i32 %74)
  br label %76

76:                                               ; preds = %62, %1
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = call i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy* %77, i32 1)
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = call i32 @wlc_lcnphy_txpwrtbl_iqlo_cal(%struct.brcms_phy* %79)
  %81 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** @lcnphy_rx_iqcomp_table_rev0, align 8
  store %struct.lcnphy_rx_iqcomp* %81, %struct.lcnphy_rx_iqcomp** %5, align 8
  %82 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** @lcnphy_rx_iqcomp_table_rev0, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.lcnphy_rx_iqcomp* %82)
  store i32 %83, i32* %6, align 4
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @LCNREV_IS(i32 %87, i32 1)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %92 = call i32 @wlc_lcnphy_rx_iq_cal(%struct.brcms_phy* %91, i32* null, i32 0, i32 1, i32 0, i32 1, i32 40)
  br label %96

93:                                               ; preds = %76
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = call i32 @wlc_lcnphy_rx_iq_cal(%struct.brcms_phy* %94, i32* null, i32 0, i32 1, i32 0, i32 1, i32 127)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %98 = call i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %156

100:                                              ; preds = %96
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = bitcast %struct.brcms_phy* %101 to %struct.brcms_phy_pub*
  %103 = call i32 @wlc_lcnphy_idle_tssi_est(%struct.brcms_phy_pub* %102)
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %11, align 4
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %12, align 4
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @wlc_lcnphy_tssi2dbm(i32 125, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %124 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 4
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 0
  store i32 32, i32* %125, align 8
  %126 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 1
  store i32* %14, i32** %126, align 8
  %127 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 3
  store i64 0, i64* %128, align 8
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %152, %100
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %130, 128
  br i1 %131, label %132, label %155

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @wlc_lcnphy_tssi2dbm(i32 %133, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i32, i32* %15, align 4
  br label %145

143:                                              ; preds = %132
  %144 = load i32, i32* %14, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %14, align 4
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %148 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %147, %struct.phytbl_info* %9)
  %149 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %9, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %129

155:                                              ; preds = %129
  br label %156

156:                                              ; preds = %155, %96
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %157, i32 %158)
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %160, i32 %161)
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %164 = call i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy* %163, i32 0)
  %165 = load i32, i32* %3, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %156
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %168, i32 0, i32 2
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @wlapi_enable_mac(i32 %172)
  br label %174

174:                                              ; preds = %167, %156
  ret void
}

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_bmac_write_shm(i32, i32, i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_lcnphy_deaf_mode(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_txpwrtbl_iqlo_cal(%struct.brcms_phy*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lcnphy_rx_iqcomp*) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @wlc_lcnphy_rx_iq_cal(%struct.brcms_phy*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_idle_tssi_est(%struct.brcms_phy_pub*) #1

declare dso_local i32 @wlc_lcnphy_tssi2dbm(i32, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
