; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rssi_cal_nphy_rev3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rssi_cal_nphy_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8**, i8**, i8**, i8** }
%struct.TYPE_3__ = type { i32, i32 }
%struct.brcms_phy_pub = type { i32 }

@__const.wlc_phy_rssi_cal_nphy_rev3.clip_off = private unnamed_addr constant [2 x i32] [i32 65535, i32 65535], align 4
@NPHY_RSSICAL_MAXD = common dso_local global i32 0, align 4
@NPHY_RfctrlIntc_override_OFF = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_ALLRXTX = common dso_local global i32 0, align 4
@NPHY_RfctrlIntc_override_TRSW = common dso_local global i32 0, align 4
@NPHY_REV7_RfctrlOverride_cmd_rxrf_pu = common dso_local global i32 0, align 4
@NPHY_REV7_RfctrlOverride_cmd_rx_pu = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE1 = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE2 = common dso_local global i32 0, align 4
@NPHY_RAIL_I = common dso_local global i32 0, align 4
@NPHY_RSSI_SEL_NB = common dso_local global i32 0, align 4
@NPHY_RAIL_Q = common dso_local global i32 0, align 4
@RADIO_2057_NB_MASTER_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_NB_MASTER_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_VCM_MASK = common dso_local global i32 0, align 4
@RADIO_2056_RX_RSSI_MISC = common dso_local global i32 0, align 4
@RADIO_2056_RX0 = common dso_local global i32 0, align 4
@RADIO_2056_RX1 = common dso_local global i32 0, align 4
@RADIO_2056_VCM_MASK = common dso_local global i32 0, align 4
@RADIO_2056_RSSI_VCM_SHIFT = common dso_local global i32 0, align 4
@NPHY_RSSICAL_NPOLL = common dso_local global i32 0, align 4
@NPHY_RSSICAL_MAXREAD = common dso_local global i32 0, align 4
@NPHY_RSSICAL_NB_TARGET = common dso_local global i32 0, align 4
@NPHY_RSSI_SEL_W1 = common dso_local global i32 0, align 4
@NPHY_RSSICAL_W1_TARGET_REV3 = common dso_local global i32 0, align 4
@NPHY_RSSI_SEL_W2 = common dso_local global i32 0, align 4
@NPHY_RSSICAL_W2_TARGET_REV3 = common dso_local global i32 0, align 4
@NPHY_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_rssi_cal_nphy_rev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rssi_cal_nphy_rev3(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x [4 x i32]], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %46 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast ([2 x i32]* @__const.wlc_phy_rssi_cal_nphy_rev3.clip_off to i8*), i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %47 = bitcast [8 x [4 x i32]]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %47, i8 0, i64 128, i1 false)
  %48 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %48, i8 0, i64 16, i1 false)
  %49 = load i32, i32* @NPHY_RSSICAL_MAXD, align 4
  store i32 %49, i32* %13, align 4
  %50 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 16, i1 false)
  store i32 0, i32* %45, align 4
  store i32 0, i32* %44, align 4
  store i32 0, i32* %43, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %38, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %51, i32 0, i32 0)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %53, i32 7, i32 4)
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %57 = call i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy* %55, i32 0, i32* %56)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %60 = call i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy* %58, i32 1, i32* %59)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = call i8* @read_phy_reg(%struct.brcms_phy* %61, i32 145)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %22, align 4
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = call i8* @read_phy_reg(%struct.brcms_phy* %64, i32 146)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %23, align 4
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %68 = call i8* @read_phy_reg(%struct.brcms_phy* %67, i32 143)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %24, align 4
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = call i8* @read_phy_reg(%struct.brcms_phy* %70, i32 165)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %25, align 4
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = call i8* @read_phy_reg(%struct.brcms_phy* %73, i32 166)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %26, align 4
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = call i8* @read_phy_reg(%struct.brcms_phy* %76, i32 167)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %27, align 4
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = call i8* @read_phy_reg(%struct.brcms_phy* %79, i32 231)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %28, align 4
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = call i8* @read_phy_reg(%struct.brcms_phy* %82, i32 236)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* %29, align 4
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @NREV_GE(i32 %88, i32 7)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %1
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = call i8* @read_phy_reg(%struct.brcms_phy* %92, i32 834)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %38, align 4
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = call i8* @read_phy_reg(%struct.brcms_phy* %95, i32 835)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %39, align 4
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = call i8* @read_phy_reg(%struct.brcms_phy* %98, i32 838)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %40, align 4
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = call i8* @read_phy_reg(%struct.brcms_phy* %101, i32 839)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %41, align 4
  br label %104

104:                                              ; preds = %91, %1
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %106 = call i8* @read_phy_reg(%struct.brcms_phy* %105, i32 229)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %30, align 4
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %109 = call i8* @read_phy_reg(%struct.brcms_phy* %108, i32 230)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %31, align 4
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %112 = call i8* @read_phy_reg(%struct.brcms_phy* %111, i32 120)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %32, align 4
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %115 = call i8* @read_phy_reg(%struct.brcms_phy* %114, i32 249)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %33, align 4
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = call i8* @read_phy_reg(%struct.brcms_phy* %117, i32 251)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %34, align 4
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %121 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @NREV_GE(i32 %123, i32 7)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %104
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = call i8* @read_phy_reg(%struct.brcms_phy* %127, i32 832)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %42, align 4
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %131 = call i8* @read_phy_reg(%struct.brcms_phy* %130, i32 833)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %43, align 4
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %134 = call i8* @read_phy_reg(%struct.brcms_phy* %133, i32 836)
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %44, align 4
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %137 = call i8* @read_phy_reg(%struct.brcms_phy* %136, i32 837)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %45, align 4
  br label %139

139:                                              ; preds = %126, %104
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %141 = call i8* @read_phy_reg(%struct.brcms_phy* %140, i32 122)
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %35, align 4
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %144 = call i8* @read_phy_reg(%struct.brcms_phy* %143, i32 125)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %36, align 4
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %147 = load i32, i32* @NPHY_RfctrlIntc_override_OFF, align 4
  %148 = load i32, i32* @RADIO_MIMO_CORESEL_ALLRXTX, align 4
  %149 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %146, i32 %147, i32 0, i32 %148)
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %151 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %152 = load i32, i32* @RADIO_MIMO_CORESEL_ALLRXTX, align 4
  %153 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %150, i32 %151, i32 1, i32 %152)
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %155 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @NREV_GE(i32 %157, i32 7)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %139
  %161 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %162 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_rxrf_pu, align 4
  %163 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %161, i32 %162, i32 0, i32 0, i32 0)
  br label %167

164:                                              ; preds = %139
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %166 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %165, i32 1, i32 0, i32 0, i32 0)
  br label %167

167:                                              ; preds = %164, %160
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @NREV_GE(i32 %171, i32 7)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %176 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_rx_pu, align 4
  %177 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %175, i32 %176, i32 1, i32 0, i32 0)
  br label %181

178:                                              ; preds = %167
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %180 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %179, i32 2, i32 1, i32 0, i32 0)
  br label %181

181:                                              ; preds = %178, %174
  %182 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %183 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @NREV_GE(i32 %185, i32 7)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %190 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %191 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %189, i32 128, i32 1, i32 0, i32 0, i32 %190)
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %193 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %194 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %192, i32 64, i32 1, i32 0, i32 0, i32 %193)
  br label %200

195:                                              ; preds = %181
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %197 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %196, i32 128, i32 1, i32 0, i32 0)
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %199 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %198, i32 64, i32 1, i32 0, i32 0)
  br label %200

200:                                              ; preds = %195, %188
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %202 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @CHSPEC_IS5G(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %226

206:                                              ; preds = %200
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %208 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @NREV_GE(i32 %210, i32 7)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %215 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %216 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %214, i32 32, i32 0, i32 0, i32 0, i32 %215)
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %218 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %219 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %217, i32 16, i32 1, i32 0, i32 0, i32 %218)
  br label %225

220:                                              ; preds = %206
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %222 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %221, i32 32, i32 0, i32 0, i32 0)
  %223 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %224 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %223, i32 16, i32 1, i32 0, i32 0)
  br label %225

225:                                              ; preds = %220, %213
  br label %246

226:                                              ; preds = %200
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %228 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @NREV_GE(i32 %230, i32 7)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %226
  %234 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %235 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %236 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %234, i32 16, i32 0, i32 0, i32 0, i32 %235)
  %237 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %238 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %239 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %237, i32 32, i32 1, i32 0, i32 0, i32 %238)
  br label %245

240:                                              ; preds = %226
  %241 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %242 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %241, i32 16, i32 0, i32 0, i32 0)
  %243 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %244 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %243, i32 32, i32 1, i32 0, i32 0)
  br label %245

245:                                              ; preds = %240, %233
  br label %246

246:                                              ; preds = %245, %225
  %247 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %248 = bitcast %struct.brcms_phy* %247 to %struct.brcms_phy_pub*
  %249 = call i32 @wlc_phy_rxcore_getstate_nphy(%struct.brcms_phy_pub* %248)
  store i32 %249, i32* %37, align 4
  store i32 8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %250

250:                                              ; preds = %601, %246
  %251 = load i32, i32* %19, align 4
  %252 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %253 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %251, %255
  br i1 %256, label %257, label %604

257:                                              ; preds = %250
  %258 = load i32, i32* %37, align 4
  %259 = load i32, i32* %19, align 4
  %260 = shl i32 1, %259
  %261 = and i32 %258, %260
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %601

264:                                              ; preds = %257
  %265 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* @PHY_CORE_0, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  br label %273

271:                                              ; preds = %264
  %272 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  br label %273

273:                                              ; preds = %271, %269
  %274 = phi i32 [ %270, %269 ], [ %272, %271 ]
  %275 = load i32, i32* @NPHY_RAIL_I, align 4
  %276 = load i32, i32* @NPHY_RSSI_SEL_NB, align 4
  %277 = call i32 @wlc_phy_scale_offset_rssi_nphy(%struct.brcms_phy* %265, i32 0, i32 0, i32 %274, i32 %275, i32 %276)
  %278 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %279 = load i32, i32* %19, align 4
  %280 = load i32, i32* @PHY_CORE_0, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %273
  %283 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  br label %286

284:                                              ; preds = %273
  %285 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %283, %282 ], [ %285, %284 ]
  %288 = load i32, i32* @NPHY_RAIL_Q, align 4
  %289 = load i32, i32* @NPHY_RSSI_SEL_NB, align 4
  %290 = call i32 @wlc_phy_scale_offset_rssi_nphy(%struct.brcms_phy* %278, i32 0, i32 0, i32 %287, i32 %288, i32 %289)
  store i32 0, i32* %7, align 4
  br label %291

291:                                              ; preds = %343, %286
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* %18, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %346

295:                                              ; preds = %291
  %296 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %297 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i64 @NREV_GE(i32 %299, i32 7)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %316

302:                                              ; preds = %295
  %303 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %304 = load i32, i32* %19, align 4
  %305 = load i32, i32* @PHY_CORE_0, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %302
  %308 = load i32, i32* @RADIO_2057_NB_MASTER_CORE0, align 4
  br label %311

309:                                              ; preds = %302
  %310 = load i32, i32* @RADIO_2057_NB_MASTER_CORE1, align 4
  br label %311

311:                                              ; preds = %309, %307
  %312 = phi i32 [ %308, %307 ], [ %310, %309 ]
  %313 = load i32, i32* @RADIO_2057_VCM_MASK, align 4
  %314 = load i32, i32* %7, align 4
  %315 = call i32 @mod_radio_reg(%struct.brcms_phy* %303, i32 %312, i32 %313, i32 %314)
  br label %334

316:                                              ; preds = %295
  %317 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %318 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %319 = load i32, i32* %19, align 4
  %320 = load i32, i32* @PHY_CORE_0, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = load i32, i32* @RADIO_2056_RX0, align 4
  br label %326

324:                                              ; preds = %316
  %325 = load i32, i32* @RADIO_2056_RX1, align 4
  br label %326

326:                                              ; preds = %324, %322
  %327 = phi i32 [ %323, %322 ], [ %325, %324 ]
  %328 = or i32 %318, %327
  %329 = load i32, i32* @RADIO_2056_VCM_MASK, align 4
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* @RADIO_2056_RSSI_VCM_SHIFT, align 4
  %332 = shl i32 %330, %331
  %333 = call i32 @mod_radio_reg(%struct.brcms_phy* %317, i32 %328, i32 %329, i32 %332)
  br label %334

334:                                              ; preds = %326, %311
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %336 = load i32, i32* @NPHY_RSSI_SEL_NB, align 4
  %337 = load i32, i32* %7, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %11, i64 0, i64 %338
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %339, i64 0, i64 0
  %341 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %342 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %335, i32 %336, i32* %340, i32 %341)
  br label %343

343:                                              ; preds = %334
  %344 = load i32, i32* %7, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %7, align 4
  br label %291

346:                                              ; preds = %291
  store i32 0, i32* %10, align 4
  br label %347

347:                                              ; preds = %438, %346
  %348 = load i32, i32* %10, align 4
  %349 = icmp slt i32 %348, 4
  br i1 %349, label %350, label %441

350:                                              ; preds = %347
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* %10, align 4
  %353 = sdiv i32 %352, 2
  %354 = icmp eq i32 %351, %353
  br i1 %354, label %355, label %437

355:                                              ; preds = %350
  %356 = load i32, i32* %10, align 4
  %357 = srem i32 %356, 2
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %437

359:                                              ; preds = %355
  %360 = load i32, i32* @NPHY_RSSICAL_MAXD, align 4
  store i32 %360, i32* %13, align 4
  store i32 0, i32* %8, align 4
  %361 = load i32, i32* @NPHY_RSSICAL_MAXREAD, align 4
  %362 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %363 = mul nsw i32 %361, %362
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %17, align 4
  store i32 0, i32* %7, align 4
  br label %365

365:                                              ; preds = %428, %359
  %366 = load i32, i32* %7, align 4
  %367 = load i32, i32* %18, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %431

369:                                              ; preds = %365
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %11, i64 0, i64 %371
  %373 = load i32, i32* %10, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %372, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %7, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %11, i64 0, i64 %378
  %380 = load i32, i32* %10, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [4 x i32], [4 x i32]* %379, i64 0, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = mul nsw i32 %376, %383
  %385 = load i32, i32* %7, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %11, i64 0, i64 %386
  %388 = load i32, i32* %10, align 4
  %389 = add nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %387, i64 0, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* %7, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %11, i64 0, i64 %394
  %396 = load i32, i32* %10, align 4
  %397 = add nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [4 x i32], [4 x i32]* %395, i64 0, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = mul nsw i32 %392, %400
  %402 = add nsw i32 %384, %401
  store i32 %402, i32* %14, align 4
  %403 = load i32, i32* %14, align 4
  %404 = load i32, i32* %13, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %369
  %407 = load i32, i32* %14, align 4
  store i32 %407, i32* %13, align 4
  %408 = load i32, i32* %7, align 4
  store i32 %408, i32* %8, align 4
  br label %409

409:                                              ; preds = %406, %369
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %11, i64 0, i64 %411
  %413 = load i32, i32* %10, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %412, i64 0, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %17, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %427

419:                                              ; preds = %409
  %420 = load i32, i32* %7, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %11, i64 0, i64 %421
  %423 = load i32, i32* %10, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [4 x i32], [4 x i32]* %422, i64 0, i64 %424
  %426 = load i32, i32* %425, align 4
  store i32 %426, i32* %17, align 4
  br label %427

427:                                              ; preds = %419, %409
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %7, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %7, align 4
  br label %365

431:                                              ; preds = %365
  %432 = load i32, i32* %8, align 4
  store i32 %432, i32* %9, align 4
  %433 = load i32, i32* %17, align 4
  %434 = load i32, i32* %10, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %435
  store i32 %433, i32* %436, align 4
  br label %437

437:                                              ; preds = %431, %355, %350
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %10, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %10, align 4
  br label %347

441:                                              ; preds = %347
  %442 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %443 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %442, i32 0, i32 3
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = call i64 @NREV_GE(i32 %445, i32 7)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %462

448:                                              ; preds = %441
  %449 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %450 = load i32, i32* %19, align 4
  %451 = load i32, i32* @PHY_CORE_0, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %455

453:                                              ; preds = %448
  %454 = load i32, i32* @RADIO_2057_NB_MASTER_CORE0, align 4
  br label %457

455:                                              ; preds = %448
  %456 = load i32, i32* @RADIO_2057_NB_MASTER_CORE1, align 4
  br label %457

457:                                              ; preds = %455, %453
  %458 = phi i32 [ %454, %453 ], [ %456, %455 ]
  %459 = load i32, i32* @RADIO_2057_VCM_MASK, align 4
  %460 = load i32, i32* %9, align 4
  %461 = call i32 @mod_radio_reg(%struct.brcms_phy* %449, i32 %458, i32 %459, i32 %460)
  br label %480

462:                                              ; preds = %441
  %463 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %464 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %465 = load i32, i32* %19, align 4
  %466 = load i32, i32* @PHY_CORE_0, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %470

468:                                              ; preds = %462
  %469 = load i32, i32* @RADIO_2056_RX0, align 4
  br label %472

470:                                              ; preds = %462
  %471 = load i32, i32* @RADIO_2056_RX1, align 4
  br label %472

472:                                              ; preds = %470, %468
  %473 = phi i32 [ %469, %468 ], [ %471, %470 ]
  %474 = or i32 %464, %473
  %475 = load i32, i32* @RADIO_2056_VCM_MASK, align 4
  %476 = load i32, i32* %9, align 4
  %477 = load i32, i32* @RADIO_2056_RSSI_VCM_SHIFT, align 4
  %478 = shl i32 %476, %477
  %479 = call i32 @mod_radio_reg(%struct.brcms_phy* %463, i32 %474, i32 %475, i32 %478)
  br label %480

480:                                              ; preds = %472, %457
  store i32 0, i32* %10, align 4
  br label %481

481:                                              ; preds = %597, %480
  %482 = load i32, i32* %10, align 4
  %483 = icmp slt i32 %482, 4
  br i1 %483, label %484, label %600

484:                                              ; preds = %481
  %485 = load i32, i32* %19, align 4
  %486 = load i32, i32* %10, align 4
  %487 = sdiv i32 %486, 2
  %488 = icmp eq i32 %485, %487
  br i1 %488, label %489, label %596

489:                                              ; preds = %484
  %490 = load i32, i32* @NPHY_RSSICAL_NB_TARGET, align 4
  %491 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %492 = mul nsw i32 %490, %491
  %493 = load i32, i32* %9, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %11, i64 0, i64 %494
  %496 = load i32, i32* %10, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [4 x i32], [4 x i32]* %495, i64 0, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = sub nsw i32 %492, %499
  %501 = load i32, i32* %10, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %502
  store i32 %500, i32* %503, align 4
  %504 = load i32, i32* %10, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = icmp slt i32 %507, 0
  br i1 %508, label %509, label %539

509:                                              ; preds = %489
  %510 = load i32, i32* %10, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @abs(i32 %513) #4
  %515 = load i32, i32* %10, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %516
  store i32 %514, i32* %517, align 4
  %518 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %519 = sdiv i32 %518, 2
  %520 = load i32, i32* %10, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = add nsw i32 %523, %519
  store i32 %524, i32* %522, align 4
  %525 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %526 = load i32, i32* %10, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = sdiv i32 %529, %525
  store i32 %530, i32* %528, align 4
  %531 = load i32, i32* %10, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = sub nsw i32 0, %534
  %536 = load i32, i32* %10, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %537
  store i32 %535, i32* %538, align 4
  br label %553

539:                                              ; preds = %489
  %540 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %541 = sdiv i32 %540, 2
  %542 = load i32, i32* %10, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = add nsw i32 %545, %541
  store i32 %546, i32* %544, align 4
  %547 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %548 = load i32, i32* %10, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = sdiv i32 %551, %547
  store i32 %552, i32* %550, align 4
  br label %553

553:                                              ; preds = %539, %509
  %554 = load i32, i32* %10, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = load i32, i32* @NPHY_RSSICAL_MAXREAD, align 4
  %559 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %560 = mul nsw i32 %558, %559
  %561 = icmp eq i32 %557, %560
  br i1 %561, label %562, label %570

562:                                              ; preds = %553
  %563 = load i32, i32* @NPHY_RSSICAL_NB_TARGET, align 4
  %564 = load i32, i32* @NPHY_RSSICAL_MAXREAD, align 4
  %565 = sub nsw i32 %563, %564
  %566 = sub nsw i32 %565, 1
  %567 = load i32, i32* %10, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %568
  store i32 %566, i32* %569, align 4
  br label %570

570:                                              ; preds = %562, %553
  %571 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %572 = load i32, i32* %10, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %573
  %575 = load i32, i32* %574, align 4
  %576 = load i32, i32* %10, align 4
  %577 = sdiv i32 %576, 2
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %581

579:                                              ; preds = %570
  %580 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  br label %583

581:                                              ; preds = %570
  %582 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  br label %583

583:                                              ; preds = %581, %579
  %584 = phi i32 [ %580, %579 ], [ %582, %581 ]
  %585 = load i32, i32* %10, align 4
  %586 = srem i32 %585, 2
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %590

588:                                              ; preds = %583
  %589 = load i32, i32* @NPHY_RAIL_I, align 4
  br label %592

590:                                              ; preds = %583
  %591 = load i32, i32* @NPHY_RAIL_Q, align 4
  br label %592

592:                                              ; preds = %590, %588
  %593 = phi i32 [ %589, %588 ], [ %591, %590 ]
  %594 = load i32, i32* @NPHY_RSSI_SEL_NB, align 4
  %595 = call i32 @wlc_phy_scale_offset_rssi_nphy(%struct.brcms_phy* %571, i32 0, i32 %575, i32 %584, i32 %593, i32 %594)
  br label %596

596:                                              ; preds = %592, %484
  br label %597

597:                                              ; preds = %596
  %598 = load i32, i32* %10, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %10, align 4
  br label %481

600:                                              ; preds = %481
  br label %601

601:                                              ; preds = %600, %263
  %602 = load i32, i32* %19, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %19, align 4
  br label %250

604:                                              ; preds = %250
  store i32 0, i32* %19, align 4
  br label %605

605:                                              ; preds = %769, %604
  %606 = load i32, i32* %19, align 4
  %607 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %608 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %607, i32 0, i32 3
  %609 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = icmp slt i32 %606, %610
  br i1 %611, label %612, label %772

612:                                              ; preds = %605
  %613 = load i32, i32* %37, align 4
  %614 = load i32, i32* %19, align 4
  %615 = shl i32 1, %614
  %616 = and i32 %613, %615
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %612
  br label %769

619:                                              ; preds = %612
  store i32 0, i32* %20, align 4
  br label %620

620:                                              ; preds = %765, %619
  %621 = load i32, i32* %20, align 4
  %622 = icmp slt i32 %621, 2
  br i1 %622, label %623, label %768

623:                                              ; preds = %620
  %624 = load i32, i32* %20, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %629

626:                                              ; preds = %623
  %627 = load i32, i32* @NPHY_RSSI_SEL_W1, align 4
  store i32 %627, i32* %21, align 4
  %628 = load i32, i32* @NPHY_RSSICAL_W1_TARGET_REV3, align 4
  store i32 %628, i32* %6, align 4
  br label %632

629:                                              ; preds = %623
  %630 = load i32, i32* @NPHY_RSSI_SEL_W2, align 4
  store i32 %630, i32* %21, align 4
  %631 = load i32, i32* @NPHY_RSSICAL_W2_TARGET_REV3, align 4
  store i32 %631, i32* %6, align 4
  br label %632

632:                                              ; preds = %629, %626
  %633 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %634 = load i32, i32* %19, align 4
  %635 = load i32, i32* @PHY_CORE_0, align 4
  %636 = icmp eq i32 %634, %635
  br i1 %636, label %637, label %639

637:                                              ; preds = %632
  %638 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  br label %641

639:                                              ; preds = %632
  %640 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  br label %641

641:                                              ; preds = %639, %637
  %642 = phi i32 [ %638, %637 ], [ %640, %639 ]
  %643 = load i32, i32* @NPHY_RAIL_I, align 4
  %644 = load i32, i32* %21, align 4
  %645 = call i32 @wlc_phy_scale_offset_rssi_nphy(%struct.brcms_phy* %633, i32 0, i32 0, i32 %642, i32 %643, i32 %644)
  %646 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %647 = load i32, i32* %19, align 4
  %648 = load i32, i32* @PHY_CORE_0, align 4
  %649 = icmp eq i32 %647, %648
  br i1 %649, label %650, label %652

650:                                              ; preds = %641
  %651 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  br label %654

652:                                              ; preds = %641
  %653 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  br label %654

654:                                              ; preds = %652, %650
  %655 = phi i32 [ %651, %650 ], [ %653, %652 ]
  %656 = load i32, i32* @NPHY_RAIL_Q, align 4
  %657 = load i32, i32* %21, align 4
  %658 = call i32 @wlc_phy_scale_offset_rssi_nphy(%struct.brcms_phy* %646, i32 0, i32 0, i32 %655, i32 %656, i32 %657)
  %659 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %660 = load i32, i32* %21, align 4
  %661 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %662 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %663 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %659, i32 %660, i32* %661, i32 %662)
  store i32 0, i32* %10, align 4
  br label %664

664:                                              ; preds = %761, %654
  %665 = load i32, i32* %10, align 4
  %666 = icmp slt i32 %665, 4
  br i1 %666, label %667, label %764

667:                                              ; preds = %664
  %668 = load i32, i32* %19, align 4
  %669 = load i32, i32* %10, align 4
  %670 = sdiv i32 %669, 2
  %671 = icmp eq i32 %668, %670
  br i1 %671, label %672, label %760

672:                                              ; preds = %667
  %673 = load i32, i32* %6, align 4
  %674 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %675 = mul nsw i32 %673, %674
  %676 = load i32, i32* %10, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %677
  %679 = load i32, i32* %678, align 4
  %680 = sub nsw i32 %675, %679
  %681 = load i32, i32* %10, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %682
  store i32 %680, i32* %683, align 4
  %684 = load i32, i32* %10, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %685
  %687 = load i32, i32* %686, align 4
  %688 = icmp slt i32 %687, 0
  br i1 %688, label %689, label %719

689:                                              ; preds = %672
  %690 = load i32, i32* %10, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = call i32 @abs(i32 %693) #4
  %695 = load i32, i32* %10, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %696
  store i32 %694, i32* %697, align 4
  %698 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %699 = sdiv i32 %698, 2
  %700 = load i32, i32* %10, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = add nsw i32 %703, %699
  store i32 %704, i32* %702, align 4
  %705 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %706 = load i32, i32* %10, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %707
  %709 = load i32, i32* %708, align 4
  %710 = sdiv i32 %709, %705
  store i32 %710, i32* %708, align 4
  %711 = load i32, i32* %10, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %712
  %714 = load i32, i32* %713, align 4
  %715 = sub nsw i32 0, %714
  %716 = load i32, i32* %10, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %717
  store i32 %715, i32* %718, align 4
  br label %733

719:                                              ; preds = %672
  %720 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %721 = sdiv i32 %720, 2
  %722 = load i32, i32* %10, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %723
  %725 = load i32, i32* %724, align 4
  %726 = add nsw i32 %725, %721
  store i32 %726, i32* %724, align 4
  %727 = load i32, i32* @NPHY_RSSICAL_NPOLL, align 4
  %728 = load i32, i32* %10, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %729
  %731 = load i32, i32* %730, align 4
  %732 = sdiv i32 %731, %727
  store i32 %732, i32* %730, align 4
  br label %733

733:                                              ; preds = %719, %689
  %734 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %735 = load i32, i32* %19, align 4
  %736 = mul nsw i32 %735, 2
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %737
  %739 = load i32, i32* %738, align 4
  %740 = load i32, i32* %19, align 4
  %741 = load i32, i32* @PHY_CORE_0, align 4
  %742 = icmp eq i32 %740, %741
  br i1 %742, label %743, label %745

743:                                              ; preds = %733
  %744 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  br label %747

745:                                              ; preds = %733
  %746 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  br label %747

747:                                              ; preds = %745, %743
  %748 = phi i32 [ %744, %743 ], [ %746, %745 ]
  %749 = load i32, i32* %10, align 4
  %750 = srem i32 %749, 2
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %754

752:                                              ; preds = %747
  %753 = load i32, i32* @NPHY_RAIL_I, align 4
  br label %756

754:                                              ; preds = %747
  %755 = load i32, i32* @NPHY_RAIL_Q, align 4
  br label %756

756:                                              ; preds = %754, %752
  %757 = phi i32 [ %753, %752 ], [ %755, %754 ]
  %758 = load i32, i32* %21, align 4
  %759 = call i32 @wlc_phy_scale_offset_rssi_nphy(%struct.brcms_phy* %734, i32 0, i32 %739, i32 %748, i32 %757, i32 %758)
  br label %760

760:                                              ; preds = %756, %667
  br label %761

761:                                              ; preds = %760
  %762 = load i32, i32* %10, align 4
  %763 = add nsw i32 %762, 1
  store i32 %763, i32* %10, align 4
  br label %664

764:                                              ; preds = %664
  br label %765

765:                                              ; preds = %764
  %766 = load i32, i32* %20, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %20, align 4
  br label %620

768:                                              ; preds = %620
  br label %769

769:                                              ; preds = %768, %618
  %770 = load i32, i32* %19, align 4
  %771 = add nsw i32 %770, 1
  store i32 %771, i32* %19, align 4
  br label %605

772:                                              ; preds = %605
  %773 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %774 = load i32, i32* %22, align 4
  %775 = call i32 @write_phy_reg(%struct.brcms_phy* %773, i32 145, i32 %774)
  %776 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %777 = load i32, i32* %23, align 4
  %778 = call i32 @write_phy_reg(%struct.brcms_phy* %776, i32 146, i32 %777)
  %779 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %780 = load i32, i32* @NPHY_RFSEQ_RESET2RX, align 4
  %781 = call i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy* %779, i32 %780)
  %782 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %783 = call i32 @mod_phy_reg(%struct.brcms_phy* %782, i32 231, i32 1, i32 1)
  %784 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %785 = call i32 @mod_phy_reg(%struct.brcms_phy* %784, i32 120, i32 1, i32 1)
  %786 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %787 = call i32 @mod_phy_reg(%struct.brcms_phy* %786, i32 231, i32 1, i32 0)
  %788 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %789 = call i32 @mod_phy_reg(%struct.brcms_phy* %788, i32 236, i32 1, i32 1)
  %790 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %791 = call i32 @mod_phy_reg(%struct.brcms_phy* %790, i32 120, i32 2, i32 2)
  %792 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %793 = call i32 @mod_phy_reg(%struct.brcms_phy* %792, i32 236, i32 1, i32 0)
  %794 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %795 = load i32, i32* %24, align 4
  %796 = call i32 @write_phy_reg(%struct.brcms_phy* %794, i32 143, i32 %795)
  %797 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %798 = load i32, i32* %25, align 4
  %799 = call i32 @write_phy_reg(%struct.brcms_phy* %797, i32 165, i32 %798)
  %800 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %801 = load i32, i32* %26, align 4
  %802 = call i32 @write_phy_reg(%struct.brcms_phy* %800, i32 166, i32 %801)
  %803 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %804 = load i32, i32* %27, align 4
  %805 = call i32 @write_phy_reg(%struct.brcms_phy* %803, i32 167, i32 %804)
  %806 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %807 = load i32, i32* %28, align 4
  %808 = call i32 @write_phy_reg(%struct.brcms_phy* %806, i32 231, i32 %807)
  %809 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %810 = load i32, i32* %29, align 4
  %811 = call i32 @write_phy_reg(%struct.brcms_phy* %809, i32 236, i32 %810)
  %812 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %813 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %812, i32 0, i32 3
  %814 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %813, i32 0, i32 1
  %815 = load i32, i32* %814, align 4
  %816 = call i64 @NREV_GE(i32 %815, i32 7)
  %817 = icmp ne i64 %816, 0
  br i1 %817, label %818, label %831

818:                                              ; preds = %772
  %819 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %820 = load i32, i32* %38, align 4
  %821 = call i32 @write_phy_reg(%struct.brcms_phy* %819, i32 834, i32 %820)
  %822 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %823 = load i32, i32* %39, align 4
  %824 = call i32 @write_phy_reg(%struct.brcms_phy* %822, i32 835, i32 %823)
  %825 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %826 = load i32, i32* %40, align 4
  %827 = call i32 @write_phy_reg(%struct.brcms_phy* %825, i32 838, i32 %826)
  %828 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %829 = load i32, i32* %41, align 4
  %830 = call i32 @write_phy_reg(%struct.brcms_phy* %828, i32 839, i32 %829)
  br label %831

831:                                              ; preds = %818, %772
  %832 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %833 = load i32, i32* %30, align 4
  %834 = call i32 @write_phy_reg(%struct.brcms_phy* %832, i32 229, i32 %833)
  %835 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %836 = load i32, i32* %31, align 4
  %837 = call i32 @write_phy_reg(%struct.brcms_phy* %835, i32 230, i32 %836)
  %838 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %839 = load i32, i32* %32, align 4
  %840 = call i32 @write_phy_reg(%struct.brcms_phy* %838, i32 120, i32 %839)
  %841 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %842 = load i32, i32* %33, align 4
  %843 = call i32 @write_phy_reg(%struct.brcms_phy* %841, i32 249, i32 %842)
  %844 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %845 = load i32, i32* %34, align 4
  %846 = call i32 @write_phy_reg(%struct.brcms_phy* %844, i32 251, i32 %845)
  %847 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %848 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %847, i32 0, i32 3
  %849 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %848, i32 0, i32 1
  %850 = load i32, i32* %849, align 4
  %851 = call i64 @NREV_GE(i32 %850, i32 7)
  %852 = icmp ne i64 %851, 0
  br i1 %852, label %853, label %866

853:                                              ; preds = %831
  %854 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %855 = load i32, i32* %42, align 4
  %856 = call i32 @write_phy_reg(%struct.brcms_phy* %854, i32 832, i32 %855)
  %857 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %858 = load i32, i32* %43, align 4
  %859 = call i32 @write_phy_reg(%struct.brcms_phy* %857, i32 833, i32 %858)
  %860 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %861 = load i32, i32* %44, align 4
  %862 = call i32 @write_phy_reg(%struct.brcms_phy* %860, i32 836, i32 %861)
  %863 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %864 = load i32, i32* %45, align 4
  %865 = call i32 @write_phy_reg(%struct.brcms_phy* %863, i32 837, i32 %864)
  br label %866

866:                                              ; preds = %853, %831
  %867 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %868 = load i32, i32* %35, align 4
  %869 = call i32 @write_phy_reg(%struct.brcms_phy* %867, i32 122, i32 %868)
  %870 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %871 = load i32, i32* %36, align 4
  %872 = call i32 @write_phy_reg(%struct.brcms_phy* %870, i32 125, i32 %871)
  %873 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %874 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %873, i32 0, i32 0
  %875 = load i32, i32* %874, align 8
  %876 = call i64 @CHSPEC_IS2G(i32 %875)
  %877 = icmp ne i64 %876, 0
  br i1 %877, label %878, label %1013

878:                                              ; preds = %866
  %879 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %880 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %879, i32 0, i32 3
  %881 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %880, i32 0, i32 1
  %882 = load i32, i32* %881, align 4
  %883 = call i64 @NREV_GE(i32 %882, i32 7)
  %884 = icmp ne i64 %883, 0
  br i1 %884, label %885, label %902

885:                                              ; preds = %878
  %886 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %887 = load i32, i32* @RADIO_2057_NB_MASTER_CORE0, align 4
  %888 = call i8* @read_radio_reg(%struct.brcms_phy* %886, i32 %887)
  %889 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %890 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %889, i32 0, i32 2
  %891 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %890, i32 0, i32 3
  %892 = load i8**, i8*** %891, align 8
  %893 = getelementptr inbounds i8*, i8** %892, i64 0
  store i8* %888, i8** %893, align 8
  %894 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %895 = load i32, i32* @RADIO_2057_NB_MASTER_CORE1, align 4
  %896 = call i8* @read_radio_reg(%struct.brcms_phy* %894, i32 %895)
  %897 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %898 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %897, i32 0, i32 2
  %899 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %898, i32 0, i32 3
  %900 = load i8**, i8*** %899, align 8
  %901 = getelementptr inbounds i8*, i8** %900, i64 1
  store i8* %896, i8** %901, align 8
  br label %923

902:                                              ; preds = %878
  %903 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %904 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %905 = load i32, i32* @RADIO_2056_RX0, align 4
  %906 = or i32 %904, %905
  %907 = call i8* @read_radio_reg(%struct.brcms_phy* %903, i32 %906)
  %908 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %909 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %908, i32 0, i32 2
  %910 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %909, i32 0, i32 3
  %911 = load i8**, i8*** %910, align 8
  %912 = getelementptr inbounds i8*, i8** %911, i64 0
  store i8* %907, i8** %912, align 8
  %913 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %914 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %915 = load i32, i32* @RADIO_2056_RX1, align 4
  %916 = or i32 %914, %915
  %917 = call i8* @read_radio_reg(%struct.brcms_phy* %913, i32 %916)
  %918 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %919 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %918, i32 0, i32 2
  %920 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %919, i32 0, i32 3
  %921 = load i8**, i8*** %920, align 8
  %922 = getelementptr inbounds i8*, i8** %921, i64 1
  store i8* %917, i8** %922, align 8
  br label %923

923:                                              ; preds = %902, %885
  %924 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %925 = call i8* @read_phy_reg(%struct.brcms_phy* %924, i32 422)
  %926 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %927 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %926, i32 0, i32 2
  %928 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %927, i32 0, i32 2
  %929 = load i8**, i8*** %928, align 8
  %930 = getelementptr inbounds i8*, i8** %929, i64 0
  store i8* %925, i8** %930, align 8
  %931 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %932 = call i8* @read_phy_reg(%struct.brcms_phy* %931, i32 428)
  %933 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %934 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %933, i32 0, i32 2
  %935 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %934, i32 0, i32 2
  %936 = load i8**, i8*** %935, align 8
  %937 = getelementptr inbounds i8*, i8** %936, i64 1
  store i8* %932, i8** %937, align 8
  %938 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %939 = call i8* @read_phy_reg(%struct.brcms_phy* %938, i32 434)
  %940 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %941 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %940, i32 0, i32 2
  %942 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %941, i32 0, i32 2
  %943 = load i8**, i8*** %942, align 8
  %944 = getelementptr inbounds i8*, i8** %943, i64 2
  store i8* %939, i8** %944, align 8
  %945 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %946 = call i8* @read_phy_reg(%struct.brcms_phy* %945, i32 440)
  %947 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %948 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %947, i32 0, i32 2
  %949 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %948, i32 0, i32 2
  %950 = load i8**, i8*** %949, align 8
  %951 = getelementptr inbounds i8*, i8** %950, i64 3
  store i8* %946, i8** %951, align 8
  %952 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %953 = call i8* @read_phy_reg(%struct.brcms_phy* %952, i32 420)
  %954 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %955 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %954, i32 0, i32 2
  %956 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %955, i32 0, i32 2
  %957 = load i8**, i8*** %956, align 8
  %958 = getelementptr inbounds i8*, i8** %957, i64 4
  store i8* %953, i8** %958, align 8
  %959 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %960 = call i8* @read_phy_reg(%struct.brcms_phy* %959, i32 426)
  %961 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %962 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %961, i32 0, i32 2
  %963 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %962, i32 0, i32 2
  %964 = load i8**, i8*** %963, align 8
  %965 = getelementptr inbounds i8*, i8** %964, i64 5
  store i8* %960, i8** %965, align 8
  %966 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %967 = call i8* @read_phy_reg(%struct.brcms_phy* %966, i32 432)
  %968 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %969 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %968, i32 0, i32 2
  %970 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %969, i32 0, i32 2
  %971 = load i8**, i8*** %970, align 8
  %972 = getelementptr inbounds i8*, i8** %971, i64 6
  store i8* %967, i8** %972, align 8
  %973 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %974 = call i8* @read_phy_reg(%struct.brcms_phy* %973, i32 438)
  %975 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %976 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %975, i32 0, i32 2
  %977 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %976, i32 0, i32 2
  %978 = load i8**, i8*** %977, align 8
  %979 = getelementptr inbounds i8*, i8** %978, i64 7
  store i8* %974, i8** %979, align 8
  %980 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %981 = call i8* @read_phy_reg(%struct.brcms_phy* %980, i32 421)
  %982 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %983 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %982, i32 0, i32 2
  %984 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %983, i32 0, i32 2
  %985 = load i8**, i8*** %984, align 8
  %986 = getelementptr inbounds i8*, i8** %985, i64 8
  store i8* %981, i8** %986, align 8
  %987 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %988 = call i8* @read_phy_reg(%struct.brcms_phy* %987, i32 427)
  %989 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %990 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %989, i32 0, i32 2
  %991 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %990, i32 0, i32 2
  %992 = load i8**, i8*** %991, align 8
  %993 = getelementptr inbounds i8*, i8** %992, i64 9
  store i8* %988, i8** %993, align 8
  %994 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %995 = call i8* @read_phy_reg(%struct.brcms_phy* %994, i32 433)
  %996 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %997 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %996, i32 0, i32 2
  %998 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %997, i32 0, i32 2
  %999 = load i8**, i8*** %998, align 8
  %1000 = getelementptr inbounds i8*, i8** %999, i64 10
  store i8* %995, i8** %1000, align 8
  %1001 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1002 = call i8* @read_phy_reg(%struct.brcms_phy* %1001, i32 439)
  %1003 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1004 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1003, i32 0, i32 2
  %1005 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1004, i32 0, i32 2
  %1006 = load i8**, i8*** %1005, align 8
  %1007 = getelementptr inbounds i8*, i8** %1006, i64 11
  store i8* %1002, i8** %1007, align 8
  %1008 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1009 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1008, i32 0, i32 0
  %1010 = load i32, i32* %1009, align 8
  %1011 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1012 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1011, i32 0, i32 4
  store i32 %1010, i32* %1012, align 8
  br label %1148

1013:                                             ; preds = %866
  %1014 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1015 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1014, i32 0, i32 3
  %1016 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1015, i32 0, i32 1
  %1017 = load i32, i32* %1016, align 4
  %1018 = call i64 @NREV_GE(i32 %1017, i32 7)
  %1019 = icmp ne i64 %1018, 0
  br i1 %1019, label %1020, label %1037

1020:                                             ; preds = %1013
  %1021 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1022 = load i32, i32* @RADIO_2057_NB_MASTER_CORE0, align 4
  %1023 = call i8* @read_radio_reg(%struct.brcms_phy* %1021, i32 %1022)
  %1024 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1025 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1024, i32 0, i32 2
  %1026 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1025, i32 0, i32 1
  %1027 = load i8**, i8*** %1026, align 8
  %1028 = getelementptr inbounds i8*, i8** %1027, i64 0
  store i8* %1023, i8** %1028, align 8
  %1029 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1030 = load i32, i32* @RADIO_2057_NB_MASTER_CORE1, align 4
  %1031 = call i8* @read_radio_reg(%struct.brcms_phy* %1029, i32 %1030)
  %1032 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1033 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1032, i32 0, i32 2
  %1034 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1033, i32 0, i32 1
  %1035 = load i8**, i8*** %1034, align 8
  %1036 = getelementptr inbounds i8*, i8** %1035, i64 1
  store i8* %1031, i8** %1036, align 8
  br label %1058

1037:                                             ; preds = %1013
  %1038 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1039 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %1040 = load i32, i32* @RADIO_2056_RX0, align 4
  %1041 = or i32 %1039, %1040
  %1042 = call i8* @read_radio_reg(%struct.brcms_phy* %1038, i32 %1041)
  %1043 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1044 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1043, i32 0, i32 2
  %1045 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1044, i32 0, i32 1
  %1046 = load i8**, i8*** %1045, align 8
  %1047 = getelementptr inbounds i8*, i8** %1046, i64 0
  store i8* %1042, i8** %1047, align 8
  %1048 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1049 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %1050 = load i32, i32* @RADIO_2056_RX1, align 4
  %1051 = or i32 %1049, %1050
  %1052 = call i8* @read_radio_reg(%struct.brcms_phy* %1048, i32 %1051)
  %1053 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1054 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1053, i32 0, i32 2
  %1055 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1054, i32 0, i32 1
  %1056 = load i8**, i8*** %1055, align 8
  %1057 = getelementptr inbounds i8*, i8** %1056, i64 1
  store i8* %1052, i8** %1057, align 8
  br label %1058

1058:                                             ; preds = %1037, %1020
  %1059 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1060 = call i8* @read_phy_reg(%struct.brcms_phy* %1059, i32 422)
  %1061 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1062 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1061, i32 0, i32 2
  %1063 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1062, i32 0, i32 0
  %1064 = load i8**, i8*** %1063, align 8
  %1065 = getelementptr inbounds i8*, i8** %1064, i64 0
  store i8* %1060, i8** %1065, align 8
  %1066 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1067 = call i8* @read_phy_reg(%struct.brcms_phy* %1066, i32 428)
  %1068 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1069 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1068, i32 0, i32 2
  %1070 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1069, i32 0, i32 0
  %1071 = load i8**, i8*** %1070, align 8
  %1072 = getelementptr inbounds i8*, i8** %1071, i64 1
  store i8* %1067, i8** %1072, align 8
  %1073 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1074 = call i8* @read_phy_reg(%struct.brcms_phy* %1073, i32 434)
  %1075 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1076 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1075, i32 0, i32 2
  %1077 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1076, i32 0, i32 0
  %1078 = load i8**, i8*** %1077, align 8
  %1079 = getelementptr inbounds i8*, i8** %1078, i64 2
  store i8* %1074, i8** %1079, align 8
  %1080 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1081 = call i8* @read_phy_reg(%struct.brcms_phy* %1080, i32 440)
  %1082 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1083 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1082, i32 0, i32 2
  %1084 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1083, i32 0, i32 0
  %1085 = load i8**, i8*** %1084, align 8
  %1086 = getelementptr inbounds i8*, i8** %1085, i64 3
  store i8* %1081, i8** %1086, align 8
  %1087 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1088 = call i8* @read_phy_reg(%struct.brcms_phy* %1087, i32 420)
  %1089 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1090 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1089, i32 0, i32 2
  %1091 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1090, i32 0, i32 0
  %1092 = load i8**, i8*** %1091, align 8
  %1093 = getelementptr inbounds i8*, i8** %1092, i64 4
  store i8* %1088, i8** %1093, align 8
  %1094 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1095 = call i8* @read_phy_reg(%struct.brcms_phy* %1094, i32 426)
  %1096 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1097 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1096, i32 0, i32 2
  %1098 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1097, i32 0, i32 0
  %1099 = load i8**, i8*** %1098, align 8
  %1100 = getelementptr inbounds i8*, i8** %1099, i64 5
  store i8* %1095, i8** %1100, align 8
  %1101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1102 = call i8* @read_phy_reg(%struct.brcms_phy* %1101, i32 432)
  %1103 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1104 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1103, i32 0, i32 2
  %1105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1104, i32 0, i32 0
  %1106 = load i8**, i8*** %1105, align 8
  %1107 = getelementptr inbounds i8*, i8** %1106, i64 6
  store i8* %1102, i8** %1107, align 8
  %1108 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1109 = call i8* @read_phy_reg(%struct.brcms_phy* %1108, i32 438)
  %1110 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1111 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1110, i32 0, i32 2
  %1112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1111, i32 0, i32 0
  %1113 = load i8**, i8*** %1112, align 8
  %1114 = getelementptr inbounds i8*, i8** %1113, i64 7
  store i8* %1109, i8** %1114, align 8
  %1115 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1116 = call i8* @read_phy_reg(%struct.brcms_phy* %1115, i32 421)
  %1117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1117, i32 0, i32 2
  %1119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1118, i32 0, i32 0
  %1120 = load i8**, i8*** %1119, align 8
  %1121 = getelementptr inbounds i8*, i8** %1120, i64 8
  store i8* %1116, i8** %1121, align 8
  %1122 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1123 = call i8* @read_phy_reg(%struct.brcms_phy* %1122, i32 427)
  %1124 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1125 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1124, i32 0, i32 2
  %1126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1125, i32 0, i32 0
  %1127 = load i8**, i8*** %1126, align 8
  %1128 = getelementptr inbounds i8*, i8** %1127, i64 9
  store i8* %1123, i8** %1128, align 8
  %1129 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1130 = call i8* @read_phy_reg(%struct.brcms_phy* %1129, i32 433)
  %1131 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1132 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1131, i32 0, i32 2
  %1133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1132, i32 0, i32 0
  %1134 = load i8**, i8*** %1133, align 8
  %1135 = getelementptr inbounds i8*, i8** %1134, i64 10
  store i8* %1130, i8** %1135, align 8
  %1136 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1137 = call i8* @read_phy_reg(%struct.brcms_phy* %1136, i32 439)
  %1138 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1139 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1138, i32 0, i32 2
  %1140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1139, i32 0, i32 0
  %1141 = load i8**, i8*** %1140, align 8
  %1142 = getelementptr inbounds i8*, i8** %1141, i64 11
  store i8* %1137, i8** %1142, align 8
  %1143 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1144 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1143, i32 0, i32 0
  %1145 = load i32, i32* %1144, align 8
  %1146 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1147 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %1146, i32 0, i32 1
  store i32 %1145, i32* %1147, align 4
  br label %1148

1148:                                             ; preds = %1058, %923
  %1149 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1150 = load i32, i32* %3, align 4
  %1151 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %1149, i32 7, i32 %1150)
  %1152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %1153 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %1154 = call i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy* %1152, i32 1, i32* %1153)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wlc_phy_classifier_nphy(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy*, i32, i32*) #2

declare dso_local i8* @read_phy_reg(%struct.brcms_phy*, i32) #2

declare dso_local i64 @NREV_GE(i32, i32) #2

declare dso_local i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #2

declare dso_local i32 @wlc_phy_rxcore_getstate_nphy(%struct.brcms_phy_pub*) #2

declare dso_local i32 @wlc_phy_scale_offset_rssi_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy*, i32, i32*, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i64 @CHSPEC_IS2G(i32) #2

declare dso_local i8* @read_radio_reg(%struct.brcms_phy*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
