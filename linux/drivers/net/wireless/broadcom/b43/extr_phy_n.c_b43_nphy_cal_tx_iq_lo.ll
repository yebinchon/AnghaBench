; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_cal_tx_iq_lo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_cal_tx_iq_lo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32 }
%struct.b43_phy = type { i32, %struct.TYPE_6__*, %struct.b43_phy_n* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.b43_phy_n = type { i32, i32, i64*, i32, i64*, i64, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nphy_txgains = type { i32 }
%struct.nphy_iqcal_params = type { i64, i32* }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@tbl_tx_iqlo_cal_loft_ladder_40 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_iqimb_ladder_40 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_loft_ladder_20 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_iqimb_ladder_20 = common dso_local global i64* null, align 8
@B43_NPHY_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@tbl_tx_iqlo_cal_startcoefs_nphyrev3 = common dso_local global i64* null, align 8
@B43_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3 = common dso_local global i32 0, align 4
@tbl_tx_iqlo_cal_startcoefs = common dso_local global i64* null, align 8
@B43_NTAB_TX_IQLO_CAL_STARTCOEFS = common dso_local global i32 0, align 4
@B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3 = common dso_local global i64 0, align 8
@B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL = common dso_local global i64 0, align 8
@B43_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3 = common dso_local global i64 0, align 8
@B43_NTAB_TX_IQLO_CAL_CMDS_RECAL = common dso_local global i64 0, align 8
@tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_fullcal = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_recal_nphyrev3 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_recal = common dso_local global i64* null, align 8
@B43_NPHY_IQLOCAL_CMDNNUM = common dso_local global i32 0, align 4
@B43_NPHY_IQLOCAL_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32, i32)* @b43_nphy_cal_tx_iq_lo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_cal_tx_iq_lo(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nphy_txgains, align 4
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_phy*, align 8
  %10 = alloca %struct.b43_phy_n*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [11 x i64], align 16
  %27 = alloca i64, align 8
  %28 = alloca [2 x i64], align 16
  %29 = alloca [2 x i64], align 16
  %30 = alloca [2 x %struct.nphy_iqcal_params], align 16
  %31 = alloca [2 x i32], align 4
  %32 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %5, i32 0, i32 0
  store i32 %1, i32* %32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %34 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %33, i32 0, i32 0
  store %struct.b43_phy* %34, %struct.b43_phy** %9, align 8
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %36, i32 0, i32 2
  %38 = load %struct.b43_phy_n*, %struct.b43_phy_n** %37, align 8
  store %struct.b43_phy_n* %38, %struct.b43_phy_n** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %22, align 8
  store i64 0, i64* %27, align 8
  %39 = bitcast [2 x i32]* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 8, i1 false)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %41 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %40, i32 1)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %43 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 4
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %49 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %14, align 4
  %51 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %52 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %4
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %55 = call i32 @B43_NTAB16(i32 7, i32 272)
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 0
  %57 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %54, i32 %55, i32 2, i64* %56)
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %78, %53
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %30, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @b43_nphy_iq_cal_gain_params(%struct.b43_wldev* %62, i32 %63, i32 %68, %struct.nphy_iqcal_params* %66)
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %30, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 16
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %29, i64 0, i64 %76
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %83 = call i32 @B43_NTAB16(i32 7, i32 272)
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %29, i64 0, i64 0
  %85 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %82, i32 %83, i32 2, i64* %84)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %87 = call i32 @b43_nphy_tx_cal_radio_setup(%struct.b43_wldev* %86)
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %89 = call i32 @b43_nphy_tx_cal_phy_setup(%struct.b43_wldev* %88)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %91 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %93, 6
  br i1 %94, label %115, label %95

95:                                               ; preds = %81
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %97 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 5
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %103 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %108 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @b43_current_band(i32 %109)
  %111 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %112 = icmp eq i64 %110, %111
  br label %113

113:                                              ; preds = %106, %101, %95
  %114 = phi i1 [ false, %101 ], [ false, %95 ], [ %112, %106 ]
  br label %115

115:                                              ; preds = %113, %81
  %116 = phi i1 [ true, %81 ], [ %114, %113 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %25, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %115
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %122 = call i64 @b43_is_40mhz(%struct.b43_wldev* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %126 = call i32 @B43_NTAB16(i32 15, i32 0)
  %127 = load i64*, i64** @tbl_tx_iqlo_cal_loft_ladder_40, align 8
  %128 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %125, i32 %126, i32 18, i64* %127)
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %130 = call i32 @B43_NTAB16(i32 15, i32 32)
  %131 = load i64*, i64** @tbl_tx_iqlo_cal_iqimb_ladder_40, align 8
  %132 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %129, i32 %130, i32 18, i64* %131)
  br label %142

133:                                              ; preds = %120
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %135 = call i32 @B43_NTAB16(i32 15, i32 0)
  %136 = load i64*, i64** @tbl_tx_iqlo_cal_loft_ladder_20, align 8
  %137 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %134, i32 %135, i32 18, i64* %136)
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %139 = call i32 @B43_NTAB16(i32 15, i32 32)
  %140 = load i64*, i64** @tbl_tx_iqlo_cal_iqimb_ladder_20, align 8
  %141 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %138, i32 %139, i32 18, i64* %140)
  br label %142

142:                                              ; preds = %133, %124
  br label %143

143:                                              ; preds = %142, %115
  %144 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %145 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %146, 19
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %163

149:                                              ; preds = %143
  %150 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %151 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sge i32 %152, 7
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %156 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %157 = call i32 @b43_phy_write(%struct.b43_wldev* %155, i32 %156, i64 35545)
  br label %162

158:                                              ; preds = %149
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %160 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %161 = call i32 @b43_phy_write(%struct.b43_wldev* %159, i32 %160, i64 35497)
  br label %162

162:                                              ; preds = %158, %154
  br label %163

163:                                              ; preds = %162, %148
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %165 = call i64 @b43_is_40mhz(%struct.b43_wldev* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  store i32 2500, i32* %13, align 4
  br label %169

168:                                              ; preds = %163
  store i32 5000, i32* %13, align 4
  br label %169

169:                                              ; preds = %168, %167
  %170 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %171 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 2
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %177 = call i64 @b43_is_40mhz(%struct.b43_wldev* %176)
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 40, i32 20
  %181 = mul nsw i32 %180, 8
  %182 = call i32 @b43_nphy_run_samples(%struct.b43_wldev* %175, i32 %181, i32 65535, i32 0, i32 1, i32 0, i32 0)
  br label %187

183:                                              ; preds = %169
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @b43_nphy_tx_tone(%struct.b43_wldev* %184, i32 %185, i32 250, i32 1, i32 0, i32 0)
  store i32 %186, i32* %12, align 4
  br label %187

187:                                              ; preds = %183, %174
  %188 = load i32, i32* %12, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %564

190:                                              ; preds = %187
  %191 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %192 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 2
  br i1 %194, label %195, label %208

195:                                              ; preds = %190
  %196 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %197 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %196, i32 0, i32 2
  %198 = load i64*, i64** %197, align 8
  store i64* %198, i64** %24, align 8
  store i32 11, i32* %15, align 4
  %199 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %200 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %202, 3
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = load i32, i32* %15, align 4
  %206 = sub nsw i32 %205, 2
  store i32 %206, i32* %15, align 4
  br label %207

207:                                              ; preds = %204, %195
  br label %243

208:                                              ; preds = %190
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %229, label %211

211:                                              ; preds = %208
  %212 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %213 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %211
  %217 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %218 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %217, i32 0, i32 4
  %219 = load i64*, i64** %218, align 8
  store i64* %219, i64** %24, align 8
  store i32 11, i32* %15, align 4
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %221 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %228

225:                                              ; preds = %216
  %226 = load i32, i32* %15, align 4
  %227 = sub nsw i32 %226, 2
  store i32 %227, i32* %15, align 4
  br label %228

228:                                              ; preds = %225, %216
  br label %242

229:                                              ; preds = %211, %208
  store i32 1, i32* %7, align 4
  %230 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %231 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp sge i32 %233, 3
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i64*, i64** @tbl_tx_iqlo_cal_startcoefs_nphyrev3, align 8
  store i64* %236, i64** %24, align 8
  %237 = load i32, i32* @B43_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3, align 4
  store i32 %237, i32* %15, align 4
  br label %241

238:                                              ; preds = %229
  %239 = load i64*, i64** @tbl_tx_iqlo_cal_startcoefs, align 8
  store i64* %239, i64** %24, align 8
  %240 = load i32, i32* @B43_NTAB_TX_IQLO_CAL_STARTCOEFS, align 4
  store i32 %240, i32* %15, align 4
  br label %241

241:                                              ; preds = %238, %235
  br label %242

242:                                              ; preds = %241, %228
  br label %243

243:                                              ; preds = %242, %207
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %245 = call i32 @B43_NTAB16(i32 15, i32 64)
  %246 = load i32, i32* %15, align 4
  %247 = load i64*, i64** %24, align 8
  %248 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %244, i32 %245, i32 %246, i64* %247)
  %249 = load i32, i32* %7, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %243
  %252 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %253 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp sge i32 %255, 3
  br i1 %256, label %257, label %259

257:                                              ; preds = %251
  %258 = load i64, i64* @B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3, align 8
  store i64 %258, i64* %20, align 8
  br label %261

259:                                              ; preds = %251
  %260 = load i64, i64* @B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL, align 8
  store i64 %260, i64* %20, align 8
  br label %261

261:                                              ; preds = %259, %257
  br label %273

262:                                              ; preds = %243
  %263 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %264 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp sge i32 %266, 3
  br i1 %267, label %268, label %270

268:                                              ; preds = %262
  %269 = load i64, i64* @B43_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3, align 8
  store i64 %269, i64* %20, align 8
  br label %272

270:                                              ; preds = %262
  %271 = load i64, i64* @B43_NTAB_TX_IQLO_CAL_CMDS_RECAL, align 8
  store i64 %271, i64* %20, align 8
  br label %272

272:                                              ; preds = %270, %268
  br label %273

273:                                              ; preds = %272, %261
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %273
  %277 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %278 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %277, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %19, align 8
  %280 = load i64, i64* %20, align 8
  %281 = load i64, i64* %19, align 8
  %282 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %283 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %282, i32 0, i32 7
  %284 = load i64, i64* %283, align 8
  %285 = add i64 %281, %284
  %286 = call i64 @min(i64 %280, i64 %285)
  store i64 %286, i64* %21, align 8
  br label %289

287:                                              ; preds = %273
  store i64 0, i64* %19, align 8
  %288 = load i64, i64* %20, align 8
  store i64 %288, i64* %21, align 8
  br label %289

289:                                              ; preds = %287, %276
  br label %290

290:                                              ; preds = %435, %289
  %291 = load i64, i64* %19, align 8
  %292 = load i64, i64* %21, align 8
  %293 = icmp ult i64 %291, %292
  br i1 %293, label %294, label %438

294:                                              ; preds = %290
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %314

297:                                              ; preds = %294
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %299 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp sge i32 %301, 3
  br i1 %302, label %303, label %308

303:                                              ; preds = %297
  %304 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3, align 8
  %305 = load i64, i64* %19, align 8
  %306 = getelementptr inbounds i64, i64* %304, i64 %305
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %23, align 8
  br label %313

308:                                              ; preds = %297
  %309 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_fullcal, align 8
  %310 = load i64, i64* %19, align 8
  %311 = getelementptr inbounds i64, i64* %309, i64 %310
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %23, align 8
  br label %313

313:                                              ; preds = %308, %303
  br label %331

314:                                              ; preds = %294
  %315 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %316 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp sge i32 %318, 3
  br i1 %319, label %320, label %325

320:                                              ; preds = %314
  %321 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_recal_nphyrev3, align 8
  %322 = load i64, i64* %19, align 8
  %323 = getelementptr inbounds i64, i64* %321, i64 %322
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %23, align 8
  br label %330

325:                                              ; preds = %314
  %326 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_recal, align 8
  %327 = load i64, i64* %19, align 8
  %328 = getelementptr inbounds i64, i64* %326, i64 %327
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* %23, align 8
  br label %330

330:                                              ; preds = %325, %320
  br label %331

331:                                              ; preds = %330, %313
  %332 = load i64, i64* %23, align 8
  %333 = and i64 %332, 12288
  %334 = lshr i64 %333, 12
  store i64 %334, i64* %17, align 8
  %335 = load i64, i64* %23, align 8
  %336 = and i64 %335, 3840
  %337 = lshr i64 %336, 8
  store i64 %337, i64* %18, align 8
  %338 = load i32, i32* %25, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %331
  %341 = load i64, i64* %17, align 8
  %342 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %340
  %346 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %347 = load i64, i64* %17, align 8
  %348 = call i32 @b43_nphy_update_tx_cal_ladder(%struct.b43_wldev* %346, i64 %347)
  %349 = load i64, i64* %17, align 8
  %350 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %349
  store i32 1, i32* %350, align 4
  br label %351

351:                                              ; preds = %345, %340, %331
  %352 = load i64, i64* %17, align 8
  %353 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %30, i64 0, i64 %352
  %354 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = load i64, i64* %18, align 8
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = shl i32 %358, 8
  %360 = or i32 %359, 102
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %16, align 8
  %362 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %363 = load i32, i32* @B43_NPHY_IQLOCAL_CMDNNUM, align 4
  %364 = load i64, i64* %16, align 8
  %365 = call i32 @b43_phy_write(%struct.b43_wldev* %362, i32 %363, i64 %364)
  %366 = load i64, i64* %18, align 8
  %367 = icmp eq i64 %366, 1
  br i1 %367, label %374, label %368

368:                                              ; preds = %351
  %369 = load i64, i64* %18, align 8
  %370 = icmp eq i64 %369, 3
  br i1 %370, label %374, label %371

371:                                              ; preds = %368
  %372 = load i64, i64* %18, align 8
  %373 = icmp eq i64 %372, 4
  br i1 %373, label %374, label %391

374:                                              ; preds = %371, %368, %351
  %375 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %376 = load i64, i64* %17, align 8
  %377 = add i64 69, %376
  %378 = trunc i64 %377 to i32
  %379 = call i32 @B43_NTAB16(i32 15, i32 %378)
  %380 = call i64 @b43_ntab_read(%struct.b43_wldev* %375, i32 %379)
  %381 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  store i64 %380, i64* %381, align 16
  %382 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %383 = load i64, i64* %382, align 16
  store i64 %383, i64* %27, align 8
  %384 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  store i64 0, i64* %384, align 16
  %385 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %386 = load i64, i64* %17, align 8
  %387 = add i64 69, %386
  %388 = trunc i64 %387 to i32
  %389 = call i32 @B43_NTAB16(i32 15, i32 %388)
  %390 = call i32 @b43_ntab_write(%struct.b43_wldev* %385, i32 %389, i32 0)
  br label %391

391:                                              ; preds = %374, %371
  %392 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %393 = load i32, i32* @B43_NPHY_IQLOCAL_CMD, align 4
  %394 = load i64, i64* %23, align 8
  %395 = call i32 @b43_phy_write(%struct.b43_wldev* %392, i32 %393, i64 %394)
  store i32 0, i32* %11, align 4
  br label %396

396:                                              ; preds = %409, %391
  %397 = load i32, i32* %11, align 4
  %398 = icmp slt i32 %397, 2000
  br i1 %398, label %399, label %412

399:                                              ; preds = %396
  %400 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %401 = load i32, i32* @B43_NPHY_IQLOCAL_CMD, align 4
  %402 = call i64 @b43_phy_read(%struct.b43_wldev* %400, i32 %401)
  store i64 %402, i64* %16, align 8
  %403 = load i64, i64* %16, align 8
  %404 = and i64 %403, 49152
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %399
  br label %412

407:                                              ; preds = %399
  %408 = call i32 @udelay(i32 10)
  br label %409

409:                                              ; preds = %407
  %410 = load i32, i32* %11, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %11, align 4
  br label %396

412:                                              ; preds = %406, %396
  %413 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %414 = call i32 @B43_NTAB16(i32 15, i32 96)
  %415 = load i32, i32* %15, align 4
  %416 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %417 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %413, i32 %414, i32 %415, i64* %416)
  %418 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %419 = call i32 @B43_NTAB16(i32 15, i32 64)
  %420 = load i32, i32* %15, align 4
  %421 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %422 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %418, i32 %419, i32 %420, i64* %421)
  %423 = load i64, i64* %18, align 8
  %424 = icmp eq i64 %423, 1
  br i1 %424, label %431, label %425

425:                                              ; preds = %412
  %426 = load i64, i64* %18, align 8
  %427 = icmp eq i64 %426, 3
  br i1 %427, label %431, label %428

428:                                              ; preds = %425
  %429 = load i64, i64* %18, align 8
  %430 = icmp eq i64 %429, 4
  br i1 %430, label %431, label %434

431:                                              ; preds = %428, %425, %412
  %432 = load i64, i64* %27, align 8
  %433 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  store i64 %432, i64* %433, align 16
  br label %434

434:                                              ; preds = %431, %428
  br label %435

435:                                              ; preds = %434
  %436 = load i64, i64* %19, align 8
  %437 = add i64 %436, 1
  store i64 %437, i64* %19, align 8
  br label %290

438:                                              ; preds = %290
  %439 = load i32, i32* %8, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %438
  %442 = load i64, i64* %21, align 8
  %443 = load i64, i64* %20, align 8
  %444 = icmp uge i64 %442, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %441
  br label %448

446:                                              ; preds = %441
  %447 = load i64, i64* %21, align 8
  br label %448

448:                                              ; preds = %446, %445
  %449 = phi i64 [ 0, %445 ], [ %447, %446 ]
  %450 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %451 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %450, i32 0, i32 5
  store i64 %449, i64* %451, align 8
  br label %452

452:                                              ; preds = %448, %438
  %453 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %454 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = icmp slt i32 %456, 3
  %458 = zext i1 %457 to i64
  %459 = select i1 %457, i32 6, i32 7
  %460 = sext i32 %459 to i64
  store i64 %460, i64* %22, align 8
  %461 = load i32, i32* %8, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %470

463:                                              ; preds = %452
  %464 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %465 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  %468 = load i64, i64* %22, align 8
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %541

470:                                              ; preds = %463, %452
  %471 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %472 = call i32 @B43_NTAB16(i32 15, i32 96)
  %473 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %474 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %471, i32 %472, i32 4, i64* %473)
  %475 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %476 = call i32 @B43_NTAB16(i32 15, i32 80)
  %477 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %478 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %475, i32 %476, i32 4, i64* %477)
  %479 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %480 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = icmp slt i32 %482, 3
  br i1 %483, label %484, label %489

484:                                              ; preds = %470
  %485 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  store i64 0, i64* %485, align 16
  %486 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 1
  store i64 0, i64* %486, align 8
  %487 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 2
  store i64 0, i64* %487, align 16
  %488 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 3
  store i64 0, i64* %488, align 8
  br label %489

489:                                              ; preds = %484, %470
  %490 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %491 = call i32 @B43_NTAB16(i32 15, i32 88)
  %492 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %493 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %490, i32 %491, i32 4, i64* %492)
  %494 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %495 = call i32 @B43_NTAB16(i32 15, i32 101)
  %496 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %497 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %494, i32 %495, i32 2, i64* %496)
  %498 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %499 = call i32 @B43_NTAB16(i32 15, i32 85)
  %500 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %501 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %498, i32 %499, i32 2, i64* %500)
  %502 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %503 = call i32 @B43_NTAB16(i32 15, i32 93)
  %504 = getelementptr inbounds [11 x i64], [11 x i64]* %26, i64 0, i64 0
  %505 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %502, i32 %503, i32 2, i64* %504)
  store i32 11, i32* %15, align 4
  %506 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %507 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = icmp slt i32 %509, 3
  br i1 %510, label %511, label %514

511:                                              ; preds = %489
  %512 = load i32, i32* %15, align 4
  %513 = sub nsw i32 %512, 2
  store i32 %513, i32* %15, align 4
  br label %514

514:                                              ; preds = %511, %489
  %515 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %516 = call i32 @B43_NTAB16(i32 15, i32 96)
  %517 = load i32, i32* %15, align 4
  %518 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %519 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %518, i32 0, i32 4
  %520 = load i64*, i64** %519, align 8
  %521 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %515, i32 %516, i32 %517, i64* %520)
  %522 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %523 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %522, i32 0, i32 3
  store i32 1, i32* %523, align 8
  %524 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %525 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %524, i32 0, i32 1
  %526 = load %struct.TYPE_6__*, %struct.TYPE_6__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 0
  %528 = load %struct.TYPE_4__*, %struct.TYPE_4__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %532 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %531, i32 0, i32 6
  %533 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i32 0, i32 1
  store i32 %530, i32* %533, align 4
  %534 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %535 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %534, i32 0, i32 1
  %536 = load %struct.TYPE_6__*, %struct.TYPE_6__** %535, align 8
  %537 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_6__* %536)
  %538 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %539 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %538, i32 0, i32 6
  %540 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %539, i32 0, i32 0
  store i32 %537, i32* %540, align 8
  br label %558

541:                                              ; preds = %463
  store i32 11, i32* %15, align 4
  %542 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %543 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp slt i32 %545, 3
  br i1 %546, label %547, label %550

547:                                              ; preds = %541
  %548 = load i32, i32* %15, align 4
  %549 = sub nsw i32 %548, 2
  store i32 %549, i32* %15, align 4
  br label %550

550:                                              ; preds = %547, %541
  %551 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %552 = call i32 @B43_NTAB16(i32 15, i32 96)
  %553 = load i32, i32* %15, align 4
  %554 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %555 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %554, i32 0, i32 2
  %556 = load i64*, i64** %555, align 8
  %557 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %551, i32 %552, i32 %553, i64* %556)
  br label %558

558:                                              ; preds = %550, %514
  %559 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %560 = call i32 @b43_nphy_stop_playback(%struct.b43_wldev* %559)
  %561 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %562 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %563 = call i32 @b43_phy_write(%struct.b43_wldev* %561, i32 %562, i64 0)
  br label %564

564:                                              ; preds = %558, %187
  %565 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %566 = call i32 @b43_nphy_tx_cal_phy_cleanup(%struct.b43_wldev* %565)
  %567 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %568 = call i32 @B43_NTAB16(i32 7, i32 272)
  %569 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 0
  %570 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %567, i32 %568, i32 2, i64* %569)
  %571 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %572 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = icmp slt i32 %574, 2
  br i1 %575, label %576, label %589

576:                                              ; preds = %564
  %577 = load i32, i32* %8, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %586

579:                                              ; preds = %576
  %580 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %581 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %580, i32 0, i32 1
  %582 = load i32, i32* %581, align 4
  %583 = sext i32 %582 to i64
  %584 = load i64, i64* %22, align 8
  %585 = icmp eq i64 %583, %584
  br i1 %585, label %586, label %589

586:                                              ; preds = %579, %576
  %587 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %588 = call i32 @b43_nphy_tx_iq_workaround(%struct.b43_wldev* %587)
  br label %589

589:                                              ; preds = %586, %579, %564
  %590 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %591 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = icmp sge i32 %593, 4
  br i1 %594, label %595, label %599

595:                                              ; preds = %589
  %596 = load i32, i32* %14, align 4
  %597 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  %598 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %597, i32 0, i32 0
  store i32 %596, i32* %598, align 8
  br label %599

599:                                              ; preds = %595, %589
  %600 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %601 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %600, i32 0)
  %602 = load i32, i32* %12, align 4
  ret i32 %602
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_ntab_read_bulk(%struct.b43_wldev*, i32, i32, i64*) #2

declare dso_local i32 @B43_NTAB16(i32, i32) #2

declare dso_local i32 @b43_nphy_iq_cal_gain_params(%struct.b43_wldev*, i32, i32, %struct.nphy_iqcal_params*) #2

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i64*) #2

declare dso_local i32 @b43_nphy_tx_cal_radio_setup(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_tx_cal_phy_setup(%struct.b43_wldev*) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i64 @b43_is_40mhz(%struct.b43_wldev*) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i64) #2

declare dso_local i32 @b43_nphy_run_samples(%struct.b43_wldev*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_tx_tone(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @b43_nphy_update_tx_cal_ladder(%struct.b43_wldev*, i64) #2

declare dso_local i64 @b43_ntab_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i64 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_6__*) #2

declare dso_local i32 @b43_nphy_stop_playback(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_tx_cal_phy_cleanup(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_tx_iq_workaround(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
