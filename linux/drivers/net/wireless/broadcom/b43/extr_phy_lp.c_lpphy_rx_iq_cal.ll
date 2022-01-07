; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_rx_iq_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_rx_iq_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpphy_rx_iq_comp = type { i64, i32, i32 }
%struct.b43_wldev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.lpphy_tx_gains = type { i32 }

@lpphy_5354_iq_table = common dso_local global %struct.lpphy_rx_iq_comp* null, align 8
@lpphy_rev2plus_iq_comp = common dso_local global %struct.lpphy_rx_iq_comp zeroinitializer, align 8
@lpphy_rev0_1_iq_table = common dso_local global %struct.lpphy_rx_iq_comp* null, align 8
@B43_LPPHY_RX_COMP_COEFF_S = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL_OVRVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32, i32, i32, %struct.lpphy_tx_gains*)* @lpphy_rx_iq_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpphy_rx_iq_cal(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.lpphy_tx_gains* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43_wldev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpphy_tx_gains*, align 8
  %14 = alloca %struct.b43_phy_lp*, align 8
  %15 = alloca %struct.lpphy_rx_iq_comp*, align 8
  %16 = alloca %struct.lpphy_tx_gains, align 4
  %17 = alloca %struct.lpphy_tx_gains, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.lpphy_tx_gains, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.lpphy_tx_gains* %5, %struct.lpphy_tx_gains** %13, align 8
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %24, align 8
  store %struct.b43_phy_lp* %25, %struct.b43_phy_lp** %14, align 8
  store %struct.lpphy_rx_iq_comp* null, %struct.lpphy_rx_iq_comp** %15, align 8
  %26 = call i32 @memset(%struct.lpphy_tx_gains* %16, i32 0, i32 4)
  %27 = call i32 @memset(%struct.lpphy_tx_gains* %17, i32 0, i32 4)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 21332
  br i1 %33, label %34, label %61

34:                                               ; preds = %6
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* %19, align 4
  %37 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** @lpphy_5354_iq_table, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.lpphy_rx_iq_comp* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** @lpphy_5354_iq_table, align 8
  %42 = load i32, i32* %19, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.lpphy_rx_iq_comp, %struct.lpphy_rx_iq_comp* %41, i64 %43
  %45 = getelementptr inbounds %struct.lpphy_rx_iq_comp, %struct.lpphy_rx_iq_comp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %14, align 8
  %48 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** @lpphy_5354_iq_table, align 8
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.lpphy_rx_iq_comp, %struct.lpphy_rx_iq_comp* %52, i64 %54
  store %struct.lpphy_rx_iq_comp* %55, %struct.lpphy_rx_iq_comp** %15, align 8
  br label %56

56:                                               ; preds = %51, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %19, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %19, align 4
  br label %35

60:                                               ; preds = %35
  br label %96

61:                                               ; preds = %6
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %63 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store %struct.lpphy_rx_iq_comp* @lpphy_rev2plus_iq_comp, %struct.lpphy_rx_iq_comp** %15, align 8
  br label %95

68:                                               ; preds = %61
  store i32 0, i32* %19, align 4
  br label %69

69:                                               ; preds = %91, %68
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** @lpphy_rev0_1_iq_table, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.lpphy_rx_iq_comp* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** @lpphy_rev0_1_iq_table, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.lpphy_rx_iq_comp, %struct.lpphy_rx_iq_comp* %75, i64 %77
  %79 = getelementptr inbounds %struct.lpphy_rx_iq_comp, %struct.lpphy_rx_iq_comp* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %14, align 8
  %82 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** @lpphy_rev0_1_iq_table, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.lpphy_rx_iq_comp, %struct.lpphy_rx_iq_comp* %86, i64 %88
  store %struct.lpphy_rx_iq_comp* %89, %struct.lpphy_rx_iq_comp** %15, align 8
  br label %90

90:                                               ; preds = %85, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  br label %69

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94, %67
  br label %96

96:                                               ; preds = %95, %60
  %97 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** %15, align 8
  %98 = icmp ne %struct.lpphy_rx_iq_comp* %97, null
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @B43_WARN_ON(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %242

104:                                              ; preds = %96
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %106 = load i32, i32* @B43_LPPHY_RX_COMP_COEFF_S, align 4
  %107 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** %15, align 8
  %108 = getelementptr inbounds %struct.lpphy_rx_iq_comp, %struct.lpphy_rx_iq_comp* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @b43_phy_maskset(%struct.b43_wldev* %105, i32 %106, i32 65280, i32 %109)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %112 = load i32, i32* @B43_LPPHY_RX_COMP_COEFF_S, align 4
  %113 = load %struct.lpphy_rx_iq_comp*, %struct.lpphy_rx_iq_comp** %15, align 8
  %114 = getelementptr inbounds %struct.lpphy_rx_iq_comp, %struct.lpphy_rx_iq_comp* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 8
  %117 = call i32 @b43_phy_maskset(%struct.b43_wldev* %111, i32 %112, i32 255, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %120, %104
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @lpphy_set_trsw_over(%struct.b43_wldev* %122, i32 %123, i32 %124)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %127 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @b43_current_band(i32 %128)
  %130 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %121
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %134 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %135 = call i32 @b43_phy_set(%struct.b43_wldev* %133, i32 %134, i32 8)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %137 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %138 = load i32, i32* %12, align 4
  %139 = shl i32 %138, 3
  %140 = call i32 @b43_phy_maskset(%struct.b43_wldev* %136, i32 %137, i32 65527, i32 %139)
  br label %150

141:                                              ; preds = %121
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %143 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %144 = call i32 @b43_phy_set(%struct.b43_wldev* %142, i32 %143, i32 32)
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %146 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %147 = load i32, i32* %12, align 4
  %148 = shl i32 %147, 5
  %149 = call i32 @b43_phy_maskset(%struct.b43_wldev* %145, i32 %146, i32 65503, i32 %148)
  br label %150

150:                                              ; preds = %141, %132
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %152 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %153 = call i32 @b43_phy_read(%struct.b43_wldev* %151, i32 %152)
  %154 = and i32 %153, 64
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %159 = call i32 @lpphy_set_rx_gain(%struct.b43_wldev* %158, i32 11613)
  br label %179

160:                                              ; preds = %150
  %161 = load i32, i32* %18, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %165 = call i32 @lpphy_get_tx_gains(%struct.b43_wldev* %164)
  %166 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %21, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  %167 = bitcast %struct.lpphy_tx_gains* %17 to i8*
  %168 = bitcast %struct.lpphy_tx_gains* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 4, i1 false)
  br label %169

169:                                              ; preds = %163, %160
  %170 = load %struct.lpphy_tx_gains*, %struct.lpphy_tx_gains** %13, align 8
  %171 = icmp ne %struct.lpphy_tx_gains* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store %struct.lpphy_tx_gains* %16, %struct.lpphy_tx_gains** %13, align 8
  br label %173

173:                                              ; preds = %172, %169
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %175 = load %struct.lpphy_tx_gains*, %struct.lpphy_tx_gains** %13, align 8
  %176 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @lpphy_set_tx_gains(%struct.b43_wldev* %174, i32 %177)
  br label %179

179:                                              ; preds = %173, %157
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %181 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %182 = call i32 @b43_phy_mask(%struct.b43_wldev* %180, i32 %181, i32 65534)
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %184 = load i32, i32* @B43_LPPHY_AFE_CTL_OVRVAL, align 4
  %185 = call i32 @b43_phy_mask(%struct.b43_wldev* %183, i32 %184, i32 65534)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %187 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %188 = call i32 @b43_phy_set(%struct.b43_wldev* %186, i32 %187, i32 2048)
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %190 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %191 = call i32 @b43_phy_set(%struct.b43_wldev* %189, i32 %190, i32 2048)
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %193 = call i32 @lpphy_set_deaf(%struct.b43_wldev* %192, i32 0)
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %179
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %198 = call i32 @lpphy_calc_rx_iq_comp(%struct.b43_wldev* %197, i32 65520)
  store i32 %198, i32* %20, align 4
  br label %206

199:                                              ; preds = %179
  %200 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %201 = call i32 @lpphy_start_tx_tone(%struct.b43_wldev* %200, i32 4000, i32 100)
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %203 = call i32 @lpphy_calc_rx_iq_comp(%struct.b43_wldev* %202, i32 16384)
  store i32 %203, i32* %20, align 4
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %205 = call i32 @lpphy_stop_tx_tone(%struct.b43_wldev* %204)
  br label %206

206:                                              ; preds = %199, %196
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %208 = call i32 @lpphy_clear_deaf(%struct.b43_wldev* %207, i32 0)
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %210 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %211 = call i32 @b43_phy_mask(%struct.b43_wldev* %209, i32 %210, i32 65532)
  %212 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %213 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %214 = call i32 @b43_phy_mask(%struct.b43_wldev* %212, i32 %213, i32 65527)
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %216 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %217 = call i32 @b43_phy_mask(%struct.b43_wldev* %215, i32 %216, i32 65503)
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %206
  %221 = load i32, i32* %18, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %225 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %17, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @lpphy_set_tx_gains(%struct.b43_wldev* %224, i32 %226)
  br label %231

228:                                              ; preds = %220
  %229 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %230 = call i32 @lpphy_disable_tx_gain_override(%struct.b43_wldev* %229)
  br label %231

231:                                              ; preds = %228, %223
  br label %232

232:                                              ; preds = %231, %206
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %234 = call i32 @lpphy_disable_rx_gain_override(%struct.b43_wldev* %233)
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %236 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %237 = call i32 @b43_phy_mask(%struct.b43_wldev* %235, i32 %236, i32 65534)
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %8, align 8
  %239 = load i32, i32* @B43_LPPHY_AFE_CTL_OVRVAL, align 4
  %240 = call i32 @b43_phy_mask(%struct.b43_wldev* %238, i32 %239, i32 63487)
  %241 = load i32, i32* %20, align 4
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %232, %103
  %243 = load i32, i32* %7, align 4
  ret i32 %243
}

declare dso_local i32 @memset(%struct.lpphy_tx_gains*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lpphy_rx_iq_comp*) #1

declare dso_local i64 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @lpphy_set_trsw_over(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_rx_gain(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_get_tx_gains(%struct.b43_wldev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lpphy_set_tx_gains(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_set_deaf(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_calc_rx_iq_comp(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_start_tx_tone(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_stop_tx_tone(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_clear_deaf(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_disable_tx_gain_override(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_disable_rx_gain_override(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
