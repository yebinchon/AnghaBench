; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txcal_phycleanup_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txcal_phycleanup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@NPHY_TBL_ID_AFECTRL = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4
@RADIO_2057_PAD2G_TUNE_PUS_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_PAD2G_TUNE_PUS_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_IPA5G_CASCOFFV_PU_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_IPA5G_CASCOFFV_PU_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_OVR_REG0 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txcal_phycleanup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txcal_phycleanup_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @NREV_GE(i32 %7, i32 3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %162

10:                                               ; preds = %1
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @write_phy_reg(%struct.brcms_phy* %11, i32 166, i32 %16)
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @write_phy_reg(%struct.brcms_phy* %18, i32 167, i32 %23)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @write_phy_reg(%struct.brcms_phy* %25, i32 143, i32 %30)
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @write_phy_reg(%struct.brcms_phy* %32, i32 165, i32 %37)
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @write_phy_reg(%struct.brcms_phy* %39, i32 1, i32 %44)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %46, i32 %47, i32 1, i32 3, i32 16, i32* %51)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %53, i32 %54, i32 1, i32 19, i32 16, i32* %58)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @write_phy_reg(%struct.brcms_phy* %60, i32 145, i32 %65)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @write_phy_reg(%struct.brcms_phy* %67, i32 146, i32 %72)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @write_phy_reg(%struct.brcms_phy* %74, i32 663, i32 %79)
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 10
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @write_phy_reg(%struct.brcms_phy* %81, i32 667, i32 %86)
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %89 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @NREV_IS(i32 %91, i32 7)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %10
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @NREV_GE(i32 %98, i32 8)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94, %10
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %103 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %104 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %102, i32 128, i32 0, i32 0, i32 1, i32 %103)
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %107 = call i32 @wlc_phy_resetcca_nphy(%struct.brcms_phy* %106)
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %161

112:                                              ; preds = %105
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %114 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %161, label %117

117:                                              ; preds = %112
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @NREV_IS(i32 %121, i32 7)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %117
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @CHSPEC_IS2G(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %132 = load i32, i32* @RADIO_2057_PAD2G_TUNE_PUS_CORE0, align 4
  %133 = call i32 @mod_radio_reg(%struct.brcms_phy* %131, i32 %132, i32 1, i32 1)
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %135 = load i32, i32* @RADIO_2057_PAD2G_TUNE_PUS_CORE1, align 4
  %136 = call i32 @mod_radio_reg(%struct.brcms_phy* %134, i32 %135, i32 1, i32 1)
  br label %144

137:                                              ; preds = %124
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %139 = load i32, i32* @RADIO_2057_IPA5G_CASCOFFV_PU_CORE0, align 4
  %140 = call i32 @mod_radio_reg(%struct.brcms_phy* %138, i32 %139, i32 1, i32 1)
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = load i32, i32* @RADIO_2057_IPA5G_CASCOFFV_PU_CORE1, align 4
  %143 = call i32 @mod_radio_reg(%struct.brcms_phy* %141, i32 %142, i32 1, i32 1)
  br label %144

144:                                              ; preds = %137, %130
  %145 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %146 = load i32, i32* @RADIO_2057_OVR_REG0, align 4
  %147 = call i32 @mod_radio_reg(%struct.brcms_phy* %145, i32 %146, i32 16, i32 0)
  br label %160

148:                                              ; preds = %117
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %150 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @NREV_GE(i32 %152, i32 8)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %157 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %158 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %156, i32 8, i32 0, i32 3, i32 1, i32 %157)
  br label %159

159:                                              ; preds = %155, %148
  br label %160

160:                                              ; preds = %159, %144
  br label %161

161:                                              ; preds = %160, %112, %105
  br label %214

162:                                              ; preds = %1
  store i32 61440, i32* %3, align 4
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %164 = load i32, i32* %3, align 4
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %166 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @mod_phy_reg(%struct.brcms_phy* %163, i32 166, i32 %164, i32 %169)
  %171 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %174 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @mod_phy_reg(%struct.brcms_phy* %171, i32 167, i32 %172, i32 %177)
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @write_phy_reg(%struct.brcms_phy* %179, i32 165, i32 %184)
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %187 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %188 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %189 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  %192 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %186, i32 %187, i32 1, i32 2, i32 16, i32* %191)
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %194 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %196 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 4
  %199 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %193, i32 %194, i32 1, i32 18, i32 16, i32* %198)
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %202 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 5
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @write_phy_reg(%struct.brcms_phy* %200, i32 145, i32 %205)
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %209 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 6
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @write_phy_reg(%struct.brcms_phy* %207, i32 146, i32 %212)
  br label %214

214:                                              ; preds = %162, %161
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_resetcca_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
