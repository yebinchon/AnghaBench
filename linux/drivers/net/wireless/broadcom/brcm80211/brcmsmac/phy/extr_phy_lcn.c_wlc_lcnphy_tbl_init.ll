; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tbl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phytbl_info = type { i32, i32*, i32, i32, i8* }
%struct.brcms_phy = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@dot11lcnphytbl_info_sz_rev0 = common dso_local global i64 0, align 8
@dot11lcnphytbl_info_rev0 = common dso_local global %struct.phytbl_info* null, align 8
@BFL_FEM_BT = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_RFSEQ = common dso_local global i8* null, align 8
@BFL_FEM = common dso_local global i32 0, align 4
@dot11lcnphy_2GHz_extPA_gaintable_rev0 = common dso_local global i32 0, align 4
@dot11lcnphy_2GHz_gaintable_rev0 = common dso_local global i32 0, align 4
@dot11lcnphytbl_rx_gain_info_2G_rev2_sz = common dso_local global i32 0, align 4
@BFL_EXTLNA = common dso_local global i32 0, align 4
@dot11lcnphytbl_rx_gain_info_extlna_2G_rev2 = common dso_local global %struct.phytbl_info* null, align 8
@dot11lcnphytbl_rx_gain_info_2G_rev2 = common dso_local global %struct.phytbl_info* null, align 8
@dot11lcnphytbl_rx_gain_info_5G_rev2_sz = common dso_local global i32 0, align 4
@BFL_EXTLNA_5GHz = common dso_local global i32 0, align 4
@dot11lcnphytbl_rx_gain_info_extlna_5G_rev2 = common dso_local global %struct.phytbl_info* null, align 8
@dot11lcnphytbl_rx_gain_info_5G_rev2 = common dso_local global %struct.phytbl_info* null, align 8
@dot11lcn_sw_ctrl_tbl_info_4313_bt_epa = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@dot11lcn_sw_ctrl_tbl_info_4313_bt_epa_p250 = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@dot11lcn_sw_ctrl_tbl_info_4313_epa = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@dot11lcn_sw_ctrl_tbl_info_4313_bt_ipa = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@dot11lcn_sw_ctrl_tbl_info_4313 = common dso_local global %struct.phytbl_info zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_tbl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tbl_init(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.phytbl_info, align 8
  %5 = alloca %struct.phytbl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %18, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @dot11lcnphytbl_info_sz_rev0, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_info_rev0, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %14, i64 %15
  %17 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %13, %struct.phytbl_info* %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BFL_FEM_BT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load i8*, i8** @LCNPHY_TBL_ID_RFSEQ, align 8
  %32 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 0
  store i32 16, i32* %33, align 8
  %34 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 1
  store i32* %6, i32** %34, align 8
  %35 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 2
  store i32 1, i32* %35, align 8
  store i32 100, i32* %6, align 4
  %36 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 3
  store i32 4, i32* %36, align 4
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %38 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %37, %struct.phytbl_info* %4)
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BFL_FEM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** @LCNPHY_TBL_ID_RFSEQ, align 8
  %50 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 4
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 0
  store i32 16, i32* %51, align 8
  %52 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 1
  store i32* %6, i32** %52, align 8
  %53 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 2
  store i32 1, i32* %53, align 8
  store i32 150, i32* %6, align 4
  %54 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 3
  store i32 0, i32* %54, align 4
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %56 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %55, %struct.phytbl_info* %4)
  store i32 220, i32* %6, align 4
  %57 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 3
  store i32 1, i32* %57, align 4
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %58, %struct.phytbl_info* %4)
  br label %60

60:                                               ; preds = %48, %39
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @CHSPEC_IS2G(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %68 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BFL_FEM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = load i32, i32* @dot11lcnphy_2GHz_extPA_gaintable_rev0, align 4
  %78 = call i32 @wlc_lcnphy_load_tx_gain_table(%struct.brcms_phy* %76, i32 %77)
  br label %83

79:                                               ; preds = %66
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = load i32, i32* @dot11lcnphy_2GHz_gaintable_rev0, align 4
  %82 = call i32 @wlc_lcnphy_load_tx_gain_table(%struct.brcms_phy* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %60
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @LCNREV_IS(i32 %88, i32 2)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %143

91:                                               ; preds = %84
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @CHSPEC_IS2G(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load i32, i32* @dot11lcnphytbl_rx_gain_info_2G_rev2_sz, align 4
  store i32 %98, i32* %7, align 4
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %100 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @BFL_EXTLNA, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_rx_gain_info_extlna_2G_rev2, align 8
  store %struct.phytbl_info* %108, %struct.phytbl_info** %5, align 8
  br label %111

109:                                              ; preds = %97
  %110 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_rx_gain_info_2G_rev2, align 8
  store %struct.phytbl_info* %110, %struct.phytbl_info** %5, align 8
  br label %111

111:                                              ; preds = %109, %107
  br label %127

112:                                              ; preds = %91
  %113 = load i32, i32* @dot11lcnphytbl_rx_gain_info_5G_rev2_sz, align 4
  store i32 %113, i32* %7, align 4
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @BFL_EXTLNA_5GHz, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_rx_gain_info_extlna_5G_rev2, align 8
  store %struct.phytbl_info* %123, %struct.phytbl_info** %5, align 8
  br label %126

124:                                              ; preds = %112
  %125 = load %struct.phytbl_info*, %struct.phytbl_info** @dot11lcnphytbl_rx_gain_info_5G_rev2, align 8
  store %struct.phytbl_info* %125, %struct.phytbl_info** %5, align 8
  br label %126

126:                                              ; preds = %124, %122
  br label %127

127:                                              ; preds = %126, %111
  store i64 0, i64* %3, align 8
  br label %128

128:                                              ; preds = %139, %127
  %129 = load i64, i64* %3, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp ult i64 %129, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %135 = load %struct.phytbl_info*, %struct.phytbl_info** %5, align 8
  %136 = load i64, i64* %3, align 8
  %137 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %135, i64 %136
  %138 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %134, %struct.phytbl_info* %137)
  br label %139

139:                                              ; preds = %133
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %3, align 8
  br label %128

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %84
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %145 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @BFL_FEM, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %143
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %154 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @BFL_FEM_BT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %152
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %163 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %166, 4688
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313_bt_epa, %struct.phytbl_info** %5, align 8
  br label %170

169:                                              ; preds = %161
  store %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313_bt_epa_p250, %struct.phytbl_info** %5, align 8
  br label %170

170:                                              ; preds = %169, %168
  br label %172

171:                                              ; preds = %152
  store %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313_epa, %struct.phytbl_info** %5, align 8
  br label %172

172:                                              ; preds = %171, %170
  br label %185

173:                                              ; preds = %143
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %175 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @BFL_FEM_BT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  store %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313_bt_ipa, %struct.phytbl_info** %5, align 8
  br label %184

183:                                              ; preds = %173
  store %struct.phytbl_info* @dot11lcn_sw_ctrl_tbl_info_4313, %struct.phytbl_info** %5, align 8
  br label %184

184:                                              ; preds = %183, %182
  br label %185

185:                                              ; preds = %184, %172
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %187 = load %struct.phytbl_info*, %struct.phytbl_info** %5, align 8
  %188 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %186, %struct.phytbl_info* %187)
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %190 = call i32 @wlc_lcnphy_load_rfpower(%struct.brcms_phy* %189)
  %191 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %192 = call i32 @wlc_lcnphy_clear_papd_comptable(%struct.brcms_phy* %191)
  ret void
}

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_lcnphy_load_tx_gain_table(%struct.brcms_phy*, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @wlc_lcnphy_load_rfpower(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_clear_papd_comptable(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
