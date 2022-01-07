; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_comb_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_antenna.c_ath_ant_comb_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_ant_comb }
%struct.ath_ant_comb = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.ath_rx_status = type { i32*, i64 }
%struct.ath_hw_antcomb_conf = type { i32, i32, i32 }

@ATH_ANT_RX_CURRENT_SHIFT = common dso_local global i32 0, align 4
@ATH_ANT_RX_MASK = common dso_local global i32 0, align 4
@ATH_ANT_RX_MAIN_SHIFT = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO2 = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO_LOW_RSSI = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_ALT_ANT_RATIO2_LOW_RSSI = common dso_local global i32 0, align 4
@ANT_MAIN = common dso_local global i32 0, align 4
@recv_cnt = common dso_local global i32 0, align 4
@ANT_ALT = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_MAX_PKTCOUNT = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_MAX_COUNT = common dso_local global i64 0, align 8
@ATH_ANT_DIV_COMB_LNA2 = common dso_local global i32 0, align 4
@ATH_ANT_DIV_COMB_LNA1 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_ant_comb_scan(%struct.ath_softc* %0, %struct.ath_rx_status* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_rx_status*, align 8
  %5 = alloca %struct.ath_hw_antcomb_conf, align 4
  %6 = alloca %struct.ath_ant_comb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca { i64, i32 }, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %4, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 1
  store %struct.ath_ant_comb* %20, %struct.ath_ant_comb** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %22 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %27 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %31 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %32 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATH_ANT_RX_CURRENT_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @ATH_ANT_RX_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %41 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ATH_ANT_RX_MAIN_SHIFT, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* @ATH_ANT_RX_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %51 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %2
  %55 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO, align 4
  %56 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %57 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO2, align 4
  %59 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %60 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 8
  br label %68

61:                                               ; preds = %2
  %62 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO_LOW_RSSI, align 4
  %63 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %64 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ATH_ANT_DIV_COMB_ALT_ANT_RATIO2_LOW_RSSI, align 4
  %66 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %67 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %54
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  %75 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %76 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %81 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %86 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %74
  %93 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %94 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %102

97:                                               ; preds = %74
  %98 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %99 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %71, %68
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %109 = load i32, i32* @ANT_MAIN, align 4
  %110 = load i32, i32* @recv_cnt, align 4
  %111 = call i32 @ANT_STAT_INC(%struct.ath_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %113 = load i32, i32* @ANT_MAIN, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @ANT_LNA_INC(%struct.ath_softc* %112, i32 %113, i32 %114)
  br label %125

116:                                              ; preds = %103
  %117 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %118 = load i32, i32* @ANT_ALT, align 4
  %119 = load i32, i32* @recv_cnt, align 4
  %120 = call i32 @ANT_STAT_INC(%struct.ath_softc* %117, i32 %118, i32 %119)
  %121 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %122 = load i32, i32* @ANT_ALT, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @ANT_LNA_INC(%struct.ath_softc* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %116, %107
  %126 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %127 = call i32 @ath_ant_short_scan_check(%struct.ath_ant_comb* %126)
  store i32 %127, i32* %16, align 4
  %128 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %129 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ATH_ANT_DIV_COMB_MAX_PKTCOUNT, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %125
  %134 = load %struct.ath_rx_status*, %struct.ath_rx_status** %4, align 8
  %135 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133, %125
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  br label %320

142:                                              ; preds = %138, %133
  %143 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %144 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %142
  %148 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %149 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 100
  %152 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %153 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sdiv i32 %151, %154
  store i32 %155, i32* %7, align 4
  %156 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %157 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %160 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sdiv i32 %158, %161
  store i32 %162, i32* %9, align 4
  %163 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %164 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %167 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %165, %168
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %147, %142
  %171 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %172 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ath9k_hw_antdiv_comb_conf_get(i32 %173, %struct.ath_hw_antcomb_conf* %5)
  %175 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %10, align 4
  %177 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %11, align 4
  %179 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %180 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %180, align 8
  %183 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %184 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ATH_ANT_DIV_COMB_MAX_COUNT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %216

188:                                              ; preds = %170
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %191 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %189, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %188
  %195 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %196 = load i32, i32* %9, align 4
  %197 = bitcast { i64, i32 }* %18 to i8*
  %198 = bitcast %struct.ath_hw_antcomb_conf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %197, i8* align 4 %198, i64 12, i1 false)
  %199 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %200 = load i64, i64* %199, align 4
  %201 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @ath_lnaconf_alt_good_scan(%struct.ath_ant_comb* %195, i64 %200, i32 %202, i32 %196)
  %204 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %205 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %204, i32 0, i32 7
  store i32 1, i32* %205, align 8
  br label %209

206:                                              ; preds = %188
  %207 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %208 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %207, i32 0, i32 7
  store i32 0, i32* %208, align 8
  br label %209

209:                                              ; preds = %206, %194
  %210 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %211 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %210, i32 0, i32 6
  store i64 0, i64* %211, align 8
  %212 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %213 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %212, i32 0, i32 8
  store i32 1, i32* %213, align 4
  %214 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %215 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %214, i32 0, i32 9
  store i32 1, i32* %215, align 8
  br label %216

216:                                              ; preds = %209, %170
  %217 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %218 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %216
  %222 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @ath_ant_try_switch(%struct.ath_hw_antcomb_conf* %5, %struct.ath_ant_comb* %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  br label %295

232:                                              ; preds = %221
  br label %233

233:                                              ; preds = %232, %216
  %234 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %235 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %9, align 4
  %241 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %240, %242
  %244 = icmp slt i32 %239, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %295

246:                                              ; preds = %238, %233
  %247 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %248 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %246
  %252 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @ath_ant_try_scan(%struct.ath_ant_comb* %252, %struct.ath_hw_antcomb_conf* %5, i32 %253, i32 %254, i32 %255)
  br label %294

257:                                              ; preds = %246
  %258 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %259 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %284, label %262

262:                                              ; preds = %257
  %263 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %264 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %263, i32 0, i32 9
  store i32 0, i32* %264, align 8
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %262
  %269 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %270 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 %269, i32* %270, align 4
  %271 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %272 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 %271, i32* %272, align 4
  br label %283

273:                                              ; preds = %262
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = load i32, i32* @ATH_ANT_DIV_COMB_LNA1, align 4
  %279 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 1
  store i32 %278, i32* %279, align 4
  %280 = load i32, i32* @ATH_ANT_DIV_COMB_LNA2, align 4
  %281 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %5, i32 0, i32 0
  store i32 %280, i32* %281, align 4
  br label %282

282:                                              ; preds = %277, %273
  br label %283

283:                                              ; preds = %282, %268
  br label %295

284:                                              ; preds = %257
  %285 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %7, align 4
  %289 = call i32 @ath_select_ant_div_from_quick_scan(%struct.ath_ant_comb* %285, %struct.ath_hw_antcomb_conf* %5, i32 %286, i32 %287, i32 %288)
  %290 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %291 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %284, %251
  br label %295

295:                                              ; preds = %294, %283, %245, %231
  %296 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @ath_ant_div_conf_fast_divbias(%struct.ath_hw_antcomb_conf* %5, %struct.ath_ant_comb* %296, i32 %297)
  %299 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %300 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @ath9k_hw_antdiv_comb_conf_set(i32 %301, %struct.ath_hw_antcomb_conf* %5)
  %303 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* %8, align 4
  %306 = call i32 @ath9k_debug_stat_ant(%struct.ath_softc* %303, %struct.ath_hw_antcomb_conf* %5, i32 %304, i32 %305)
  %307 = load i32, i32* @jiffies, align 4
  %308 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %309 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %308, i32 0, i32 11
  store i32 %307, i32* %309, align 8
  %310 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %311 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %310, i32 0, i32 2
  store i32 0, i32* %311, align 8
  %312 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %313 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %312, i32 0, i32 3
  store i32 0, i32* %313, align 4
  %314 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %315 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %314, i32 0, i32 4
  store i32 0, i32* %315, align 8
  %316 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %317 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %316, i32 0, i32 10
  store i64 0, i64* %317, align 8
  %318 = load %struct.ath_ant_comb*, %struct.ath_ant_comb** %6, align 8
  %319 = getelementptr inbounds %struct.ath_ant_comb, %struct.ath_ant_comb* %318, i32 0, i32 5
  store i32 0, i32* %319, align 4
  br label %320

320:                                              ; preds = %295, %141
  ret void
}

declare dso_local i32 @ANT_STAT_INC(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ANT_LNA_INC(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath_ant_short_scan_check(%struct.ath_ant_comb*) #1

declare dso_local i32 @ath9k_hw_antdiv_comb_conf_get(i32, %struct.ath_hw_antcomb_conf*) #1

declare dso_local i32 @ath_lnaconf_alt_good_scan(%struct.ath_ant_comb*, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ath_ant_try_switch(%struct.ath_hw_antcomb_conf*, %struct.ath_ant_comb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath_ant_try_scan(%struct.ath_ant_comb*, %struct.ath_hw_antcomb_conf*, i32, i32, i32) #1

declare dso_local i32 @ath_select_ant_div_from_quick_scan(%struct.ath_ant_comb*, %struct.ath_hw_antcomb_conf*, i32, i32, i32) #1

declare dso_local i32 @ath_ant_div_conf_fast_divbias(%struct.ath_hw_antcomb_conf*, %struct.ath_ant_comb*, i32) #1

declare dso_local i32 @ath9k_hw_antdiv_comb_conf_set(i32, %struct.ath_hw_antcomb_conf*) #1

declare dso_local i32 @ath9k_debug_stat_ant(%struct.ath_softc*, %struct.ath_hw_antcomb_conf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
