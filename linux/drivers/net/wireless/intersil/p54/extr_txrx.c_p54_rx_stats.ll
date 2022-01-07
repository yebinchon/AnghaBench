; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_rx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i64, i64, i32, i32, %struct.TYPE_4__, i32, %struct.survey_info*, %struct.ieee80211_channel*, i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.survey_info = type { i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.p54_hdr = type { i32, i64 }
%struct.p54_statistics = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54_common*, %struct.sk_buff*)* @p54_rx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_rx_stats(%struct.p54_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_hdr*, align 8
  %6 = alloca %struct.p54_statistics*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.survey_info*, align 8
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.p54_hdr*
  store %struct.p54_hdr* %24, %struct.p54_hdr** %5, align 8
  %25 = load %struct.p54_hdr*, %struct.p54_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.p54_statistics*
  store %struct.p54_statistics* %28, %struct.p54_statistics** %6, align 8
  %29 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %30 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %316

38:                                               ; preds = %2
  %39 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %40 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = zext i32 %42 to i64
  store i64 %43, i64* %19, align 8
  %44 = load i64, i64* %19, align 8
  %45 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %46 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %51 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %38
  %55 = load i64, i64* %19, align 8
  %56 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %57 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %59 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %63 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %62, i32 0, i32 10
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %66 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %70 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %69, i32 0, i32 10
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %73 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %77 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %80 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %81 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = call i32 @p54_rssi_to_dbm(%struct.p54_common* %79, i32 %83)
  %85 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %86 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %19, align 8
  %88 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %89 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %87, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %95 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %99 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @le32_to_cpu(i32 %100)
  store i32 %101, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %120, %54
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %105 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @ARRAY_SIZE(i32* %106)
  %108 = icmp ult i32 %103, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %102
  %110 = load %struct.p54_statistics*, %struct.p54_statistics** %6, align 8
  %111 = getelementptr inbounds %struct.p54_statistics, %struct.p54_statistics* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le32_to_cpu(i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %102

123:                                              ; preds = %102
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %126 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = sub i32 %124, %128
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %132 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = sub i32 %130, %134
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %138 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = sub i32 %136, %140
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %17, align 4
  %144 = add i32 %142, %143
  %145 = load i32, i32* %16, align 4
  %146 = add i32 %144, %145
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %250

149:                                              ; preds = %123
  %150 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %151 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @USEC_PER_SEC, align 4
  %157 = icmp uge i32 %155, %156
  br i1 %157, label %158, label %250

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp uge i32 %159, %160
  br i1 %161, label %162, label %250

162:                                              ; preds = %158
  %163 = load i64, i64* %19, align 8
  %164 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %165 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i64 %163, i64* %166, align 8
  %167 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %168 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %167, i32 0, i32 2
  store i32 0, i32* %168, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %14, align 4
  %171 = udiv i32 %169, %170
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %162
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %18, align 4
  %177 = mul i32 %175, %176
  %178 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %179 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = add i32 %181, %177
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %185 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 8
  br label %187

187:                                              ; preds = %174, %162
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %187
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %18, align 4
  %193 = mul i32 %191, %192
  %194 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %195 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = add i32 %197, %193
  store i32 %198, i32* %196, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %201 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  store i32 %199, i32* %202, align 8
  br label %203

203:                                              ; preds = %190, %187
  %204 = load i32, i32* %17, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %203
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %18, align 4
  %209 = mul i32 %207, %208
  %210 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %211 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = add i32 %213, %209
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %217 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %206, %203
  %220 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %221 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %220, i32 0, i32 9
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %238, label %224

224:                                              ; preds = %219
  %225 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %226 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %225, i32 0, i32 8
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %224
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %18, align 4
  %232 = mul i32 %230, %231
  %233 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %234 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = add i32 %236, %232
  store i32 %237, i32* %235, align 8
  br label %249

238:                                              ; preds = %224, %219
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %16, align 4
  %241 = add i32 %239, %240
  %242 = load i32, i32* %18, align 4
  %243 = mul i32 %241, %242
  %244 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %245 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = add i32 %247, %243
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %238, %229
  br label %250

250:                                              ; preds = %249, %158, %154, %123
  %251 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %252 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %251, i32 0, i32 7
  %253 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %252, align 8
  store %struct.ieee80211_channel* %253, %struct.ieee80211_channel** %8, align 8
  %254 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %255 = icmp ne %struct.ieee80211_channel* %254, null
  br i1 %255, label %256, label %305

256:                                              ; preds = %250
  %257 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %258 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %257, i32 0, i32 6
  %259 = load %struct.survey_info*, %struct.survey_info** %258, align 8
  %260 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %261 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %259, i64 %262
  store %struct.survey_info* %263, %struct.survey_info** %20, align 8
  %264 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %265 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @clamp(i32 %266, i32 -128, i32 127)
  %268 = load %struct.survey_info*, %struct.survey_info** %20, align 8
  %269 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 4
  %270 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %271 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.survey_info*, %struct.survey_info** %20, align 8
  %275 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 4
  %276 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %277 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.survey_info*, %struct.survey_info** %20, align 8
  %281 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  %282 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %283 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %287 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = add i32 %285, %289
  %291 = load %struct.survey_info*, %struct.survey_info** %20, align 8
  %292 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 4
  %293 = load %struct.survey_info*, %struct.survey_info** %20, align 8
  %294 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @do_div(i32 %295, i32 1024)
  %297 = load %struct.survey_info*, %struct.survey_info** %20, align 8
  %298 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @do_div(i32 %299, i32 1024)
  %301 = load %struct.survey_info*, %struct.survey_info** %20, align 8
  %302 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @do_div(i32 %303, i32 1024)
  br label %305

305:                                              ; preds = %256, %250
  %306 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %307 = load %struct.p54_hdr*, %struct.p54_hdr** %5, align 8
  %308 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call %struct.sk_buff* @p54_find_and_unlink_skb(%struct.p54_common* %306, i32 %309)
  store %struct.sk_buff* %310, %struct.sk_buff** %7, align 8
  %311 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %312 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %311)
  %313 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %314 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %313, i32 0, i32 3
  %315 = call i32 @complete(i32* %314)
  br label %316

316:                                              ; preds = %305, %37
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @p54_rssi_to_dbm(%struct.p54_common*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local %struct.sk_buff* @p54_find_and_unlink_skb(%struct.p54_common*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
