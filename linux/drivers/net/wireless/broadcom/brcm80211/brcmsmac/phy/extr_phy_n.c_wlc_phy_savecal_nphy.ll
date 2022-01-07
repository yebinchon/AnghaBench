; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_savecal_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_savecal_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8**, i32, i8*, i8**, i32 }

@RADIO_2056_TX_LOFT_FINE_I = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX_LOFT_FINE_Q = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@RADIO_2056_TX_LOFT_COARSE_I = common dso_local global i32 0, align 4
@RADIO_2056_TX_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TX_VOS_CNCL = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TX_VOS_CNCL = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TX_BB_MXGM = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TX_BB_MXGM = common dso_local global i32 0, align 4
@RADIO_2057 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@LOFT_FINE_I = common dso_local global i32 0, align 4
@LOFT_FINE_Q = common dso_local global i32 0, align 4
@LOFT_COARSE_I = common dso_local global i32 0, align 4
@LOFT_COARSE_Q = common dso_local global i32 0, align 4
@NPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_savecal_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_savecal_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i8** null, i8*** %5, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %11, i32 1)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @CHSPEC_IS2G(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %168

19:                                               ; preds = %13
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %20, i32 0, i32* %23)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @NREV_GE(i32 %28, i32 7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i8**, i8*** %34, align 8
  store i8** %35, i8*** %5, align 8
  br label %158

36:                                               ; preds = %19
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @NREV_GE(i32 %40, i32 3)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %124

43:                                               ; preds = %36
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %45 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_I, align 4
  %46 = load i32, i32* @RADIO_2056_TX0, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @read_radio_reg(%struct.brcms_phy* %44, i32 %47)
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %50 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  store i8* %48, i8** %53, align 8
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_Q, align 4
  %56 = load i32, i32* @RADIO_2056_TX0, align 4
  %57 = or i32 %55, %56
  %58 = call i8* @read_radio_reg(%struct.brcms_phy* %54, i32 %57)
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* %58, i8** %63, align 8
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_I, align 4
  %66 = load i32, i32* @RADIO_2056_TX1, align 4
  %67 = or i32 %65, %66
  %68 = call i8* @read_radio_reg(%struct.brcms_phy* %64, i32 %67)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 2
  store i8* %68, i8** %73, align 8
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_Q, align 4
  %76 = load i32, i32* @RADIO_2056_TX1, align 4
  %77 = or i32 %75, %76
  %78 = call i8* @read_radio_reg(%struct.brcms_phy* %74, i32 %77)
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 3
  store i8* %78, i8** %83, align 8
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_I, align 4
  %86 = load i32, i32* @RADIO_2056_TX0, align 4
  %87 = or i32 %85, %86
  %88 = call i8* @read_radio_reg(%struct.brcms_phy* %84, i32 %87)
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %90 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 4
  store i8* %88, i8** %93, align 8
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_Q, align 4
  %96 = load i32, i32* @RADIO_2056_TX0, align 4
  %97 = or i32 %95, %96
  %98 = call i8* @read_radio_reg(%struct.brcms_phy* %94, i32 %97)
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %100 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 5
  store i8* %98, i8** %103, align 8
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_I, align 4
  %106 = load i32, i32* @RADIO_2056_TX1, align 4
  %107 = or i32 %105, %106
  %108 = call i8* @read_radio_reg(%struct.brcms_phy* %104, i32 %107)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 6
  store i8* %108, i8** %113, align 8
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %115 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_Q, align 4
  %116 = load i32, i32* @RADIO_2056_TX1, align 4
  %117 = or i32 %115, %116
  %118 = call i8* @read_radio_reg(%struct.brcms_phy* %114, i32 %117)
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %120 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 7
  store i8* %118, i8** %123, align 8
  br label %157

124:                                              ; preds = %36
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = load i32, i32* @RADIO_2055_CORE1_TX_VOS_CNCL, align 4
  %127 = call i8* @read_radio_reg(%struct.brcms_phy* %125, i32 %126)
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %129 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  store i8* %127, i8** %132, align 8
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %134 = load i32, i32* @RADIO_2055_CORE2_TX_VOS_CNCL, align 4
  %135 = call i8* @read_radio_reg(%struct.brcms_phy* %133, i32 %134)
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %137 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  store i8* %135, i8** %140, align 8
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = load i32, i32* @RADIO_2055_CORE1_TX_BB_MXGM, align 4
  %143 = call i8* @read_radio_reg(%struct.brcms_phy* %141, i32 %142)
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %145 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 2
  store i8* %143, i8** %148, align 8
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %150 = load i32, i32* @RADIO_2055_CORE2_TX_BB_MXGM, align 4
  %151 = call i8* @read_radio_reg(%struct.brcms_phy* %149, i32 %150)
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 3
  store i8* %151, i8** %156, align 8
  br label %157

157:                                              ; preds = %124, %43
  br label %158

158:                                              ; preds = %157, %31
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %160 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %163 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 8
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %165 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %3, align 8
  br label %317

168:                                              ; preds = %13
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %170 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %171 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %169, i32 0, i32* %172)
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %175 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @NREV_GE(i32 %177, i32 7)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %168
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %182 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i8**, i8*** %183, align 8
  store i8** %184, i8*** %5, align 8
  br label %307

185:                                              ; preds = %168
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %187 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @NREV_GE(i32 %189, i32 3)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %273

192:                                              ; preds = %185
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %194 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_I, align 4
  %195 = load i32, i32* @RADIO_2056_TX0, align 4
  %196 = or i32 %194, %195
  %197 = call i8* @read_radio_reg(%struct.brcms_phy* %193, i32 %196)
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %199 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 0
  store i8* %197, i8** %202, align 8
  %203 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %204 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_Q, align 4
  %205 = load i32, i32* @RADIO_2056_TX0, align 4
  %206 = or i32 %204, %205
  %207 = call i8* @read_radio_reg(%struct.brcms_phy* %203, i32 %206)
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %209 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i8**, i8*** %210, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 1
  store i8* %207, i8** %212, align 8
  %213 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %214 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_I, align 4
  %215 = load i32, i32* @RADIO_2056_TX1, align 4
  %216 = or i32 %214, %215
  %217 = call i8* @read_radio_reg(%struct.brcms_phy* %213, i32 %216)
  %218 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %219 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i8**, i8*** %220, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 2
  store i8* %217, i8** %222, align 8
  %223 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %224 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_Q, align 4
  %225 = load i32, i32* @RADIO_2056_TX1, align 4
  %226 = or i32 %224, %225
  %227 = call i8* @read_radio_reg(%struct.brcms_phy* %223, i32 %226)
  %228 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %229 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i8**, i8*** %230, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 3
  store i8* %227, i8** %232, align 8
  %233 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %234 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_I, align 4
  %235 = load i32, i32* @RADIO_2056_TX0, align 4
  %236 = or i32 %234, %235
  %237 = call i8* @read_radio_reg(%struct.brcms_phy* %233, i32 %236)
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %239 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  %241 = load i8**, i8*** %240, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 4
  store i8* %237, i8** %242, align 8
  %243 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %244 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_Q, align 4
  %245 = load i32, i32* @RADIO_2056_TX0, align 4
  %246 = or i32 %244, %245
  %247 = call i8* @read_radio_reg(%struct.brcms_phy* %243, i32 %246)
  %248 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %249 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i8**, i8*** %250, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 5
  store i8* %247, i8** %252, align 8
  %253 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %254 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_I, align 4
  %255 = load i32, i32* @RADIO_2056_TX1, align 4
  %256 = or i32 %254, %255
  %257 = call i8* @read_radio_reg(%struct.brcms_phy* %253, i32 %256)
  %258 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %259 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  %261 = load i8**, i8*** %260, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 6
  store i8* %257, i8** %262, align 8
  %263 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %264 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_Q, align 4
  %265 = load i32, i32* @RADIO_2056_TX1, align 4
  %266 = or i32 %264, %265
  %267 = call i8* @read_radio_reg(%struct.brcms_phy* %263, i32 %266)
  %268 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %269 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i8**, i8*** %270, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 7
  store i8* %267, i8** %272, align 8
  br label %306

273:                                              ; preds = %185
  %274 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %275 = load i32, i32* @RADIO_2055_CORE1_TX_VOS_CNCL, align 4
  %276 = call i8* @read_radio_reg(%struct.brcms_phy* %274, i32 %275)
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %278 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  %280 = load i8**, i8*** %279, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 0
  store i8* %276, i8** %281, align 8
  %282 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %283 = load i32, i32* @RADIO_2055_CORE2_TX_VOS_CNCL, align 4
  %284 = call i8* @read_radio_reg(%struct.brcms_phy* %282, i32 %283)
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  %288 = load i8**, i8*** %287, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 1
  store i8* %284, i8** %289, align 8
  %290 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %291 = load i32, i32* @RADIO_2055_CORE1_TX_BB_MXGM, align 4
  %292 = call i8* @read_radio_reg(%struct.brcms_phy* %290, i32 %291)
  %293 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %294 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  %296 = load i8**, i8*** %295, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 2
  store i8* %292, i8** %297, align 8
  %298 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %299 = load i32, i32* @RADIO_2055_CORE2_TX_BB_MXGM, align 4
  %300 = call i8* @read_radio_reg(%struct.brcms_phy* %298, i32 %299)
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %302 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  %304 = load i8**, i8*** %303, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 3
  store i8* %300, i8** %305, align 8
  br label %306

306:                                              ; preds = %273, %192
  br label %307

307:                                              ; preds = %306, %180
  %308 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %309 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %312 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %311, i32 0, i32 4
  store i32 %310, i32* %312, align 4
  %313 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %314 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  store i8* %316, i8** %3, align 8
  br label %317

317:                                              ; preds = %307, %158
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %319 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i64 @NREV_GE(i32 %321, i32 7)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %380

324:                                              ; preds = %317
  store i32 0, i32* %4, align 4
  br label %325

325:                                              ; preds = %376, %324
  %326 = load i32, i32* %4, align 4
  %327 = icmp sle i32 %326, 1
  br i1 %327, label %328, label %379

328:                                              ; preds = %325
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %330 = load i32, i32* @RADIO_2057, align 4
  %331 = load i32, i32* @TX, align 4
  %332 = load i32, i32* %4, align 4
  %333 = load i32, i32* @LOFT_FINE_I, align 4
  %334 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %329, i32 %330, i32 %331, i32 %332, i32 %333)
  %335 = load i8**, i8*** %5, align 8
  %336 = load i32, i32* %4, align 4
  %337 = mul nsw i32 2, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %335, i64 %338
  store i8* %334, i8** %339, align 8
  %340 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %341 = load i32, i32* @RADIO_2057, align 4
  %342 = load i32, i32* @TX, align 4
  %343 = load i32, i32* %4, align 4
  %344 = load i32, i32* @LOFT_FINE_Q, align 4
  %345 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %340, i32 %341, i32 %342, i32 %343, i32 %344)
  %346 = load i8**, i8*** %5, align 8
  %347 = load i32, i32* %4, align 4
  %348 = mul nsw i32 2, %347
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %346, i64 %350
  store i8* %345, i8** %351, align 8
  %352 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %353 = load i32, i32* @RADIO_2057, align 4
  %354 = load i32, i32* @TX, align 4
  %355 = load i32, i32* %4, align 4
  %356 = load i32, i32* @LOFT_COARSE_I, align 4
  %357 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %352, i32 %353, i32 %354, i32 %355, i32 %356)
  %358 = load i8**, i8*** %5, align 8
  %359 = load i32, i32* %4, align 4
  %360 = mul nsw i32 2, %359
  %361 = add nsw i32 %360, 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %358, i64 %362
  store i8* %357, i8** %363, align 8
  %364 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %365 = load i32, i32* @RADIO_2057, align 4
  %366 = load i32, i32* @TX, align 4
  %367 = load i32, i32* %4, align 4
  %368 = load i32, i32* @LOFT_COARSE_Q, align 4
  %369 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %364, i32 %365, i32 %366, i32 %367, i32 %368)
  %370 = load i8**, i8*** %5, align 8
  %371 = load i32, i32* %4, align 4
  %372 = mul nsw i32 2, %371
  %373 = add nsw i32 %372, 5
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %370, i64 %374
  store i8* %369, i8** %375, align 8
  br label %376

376:                                              ; preds = %328
  %377 = load i32, i32* %4, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %4, align 4
  br label %325

379:                                              ; preds = %325
  br label %380

380:                                              ; preds = %379, %317
  %381 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %382 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %383 = load i8*, i8** %3, align 8
  %384 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %381, i32 %382, i32 8, i32 80, i32 16, i8* %383)
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %386 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %380
  %390 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %391 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %390, i32 0)
  br label %392

392:                                              ; preds = %389, %380
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy*, i32, i32*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i8* @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i8* @READ_RADIO_REG3(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
