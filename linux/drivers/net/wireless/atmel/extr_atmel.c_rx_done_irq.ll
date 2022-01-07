; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_rx_done_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_rx_done_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, %struct.TYPE_9__, %struct.TYPE_10__*, i32*, i8*, i32, i32, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@RX_DESC_FLAGS_OFFSET = common dso_local global i32 0, align 4
@RX_DESC_FLAG_VALID = common dso_local global i64 0, align 8
@RX_DESC_STATUS_OFFSET = common dso_local global i32 0, align 4
@RX_STATUS_SUCCESS = common dso_local global i32 0, align 4
@RX_DESC_MSDU_SIZE_OFFSET = common dso_local global i32 0, align 4
@RX_DESC_MSDU_POS_OFFSET = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PROTECTED = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREFRAGS = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@RX_DESC_RSSI_OFFSET = common dso_local global i32 0, align 4
@RX_DESC_FLAG_CONSUMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*)* @rx_done_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_done_irq(%struct.atmel_private* %0) #0 {
  %2 = alloca %struct.atmel_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hdr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %314, %1
  %15 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %16 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %17 = load i32, i32* @RX_DESC_FLAGS_OFFSET, align 4
  %18 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %19 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @atmel_rx(%struct.atmel_private* %16, i32 %17, i32 %20)
  %22 = call i64 @atmel_rmem8(%struct.atmel_private* %15, i32 %21)
  %23 = load i64, i64* @RX_DESC_FLAG_VALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %28 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br label %32

32:                                               ; preds = %25, %14
  %33 = phi i1 [ false, %14 ], [ %31, %25 ]
  br i1 %33, label %34, label %317

34:                                               ; preds = %32
  %35 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %36 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %37 = load i32, i32* @RX_DESC_STATUS_OFFSET, align 4
  %38 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @atmel_rx(%struct.atmel_private* %36, i32 %37, i32 %40)
  %42 = call i64 @atmel_rmem8(%struct.atmel_private* %35, i32 %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @RX_STATUS_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 193
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %52 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %51, i32 0, i32 10
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %65

57:                                               ; preds = %47
  %58 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %59 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %50
  br label %286

66:                                               ; preds = %34
  %67 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %68 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %69 = load i32, i32* @RX_DESC_MSDU_SIZE_OFFSET, align 4
  %70 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %71 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @atmel_rx(%struct.atmel_private* %68, i32 %69, i32 %72)
  %74 = call i32 @atmel_rmem16(%struct.atmel_private* %67, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %76 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %77 = load i32, i32* @RX_DESC_MSDU_POS_OFFSET, align 4
  %78 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %79 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @atmel_rx(%struct.atmel_private* %76, i32 %77, i32 %80)
  %82 = call i32 @atmel_rmem16(%struct.atmel_private* %75, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 30
  br i1 %84, label %85, label %93

85:                                               ; preds = %66
  %86 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %87 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %286

93:                                               ; preds = %66
  %94 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %95 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = bitcast %struct.ieee80211_hdr* %4 to i8*
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (%struct.TYPE_10__*, ...) @atmel_copy_to_host(%struct.TYPE_10__* %96, i8* %97, i32 %98, i32 24)
  %100 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %4, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le16_to_cpu(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %107 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %162

110:                                              ; preds = %93
  %111 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %112 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @IEEE80211_FCTL_PROTECTED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i8* @probe_crc(%struct.atmel_private* %121, i32 %122, i32 %123)
  %125 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %126 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  br label %136

127:                                              ; preds = %115
  %128 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 24
  %131 = load i32, i32* %5, align 4
  %132 = sub nsw i32 %131, 24
  %133 = call i8* @probe_crc(%struct.atmel_private* %128, i32 %130, i32 %132)
  %134 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %135 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %127, %120
  %137 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %138 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %143 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = icmp sgt i32 %144, 5
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %149 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %148, i32 0, i32 7
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %147, %141
  br label %161

151:                                              ; preds = %136
  %152 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %153 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = icmp sgt i32 %154, 5
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %159 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %158, i32 0, i32 7
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %157, %151
  br label %161

161:                                              ; preds = %160, %150
  br label %162

162:                                              ; preds = %161, %93
  %163 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %164 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %180

167:                                              ; preds = %162
  %168 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %169 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @IEEE80211_FCTL_PROTECTED, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %172, %167
  %178 = bitcast %struct.ieee80211_hdr* %4 to i8*
  %179 = call i32 @crc32_le(i32 -1, i8* %178, i32 24)
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %177, %172, %162
  %181 = load i32, i32* %5, align 4
  %182 = sub nsw i32 %181, 24
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %220

188:                                              ; preds = %180
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %191 = and i32 %189, %190
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %194 = and i32 %192, %193
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %197 = and i32 %195, %196
  %198 = ashr i32 %197, 4
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %188
  %202 = load i32, i32* %12, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @fast_rx_path(%struct.atmel_private* %205, %struct.ieee80211_hdr* %4, i32 %206, i32 %207, i32 %208)
  br label %219

210:                                              ; preds = %201, %188
  %211 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %212 = load i32, i32* %5, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @frag_rx_path(%struct.atmel_private* %211, %struct.ieee80211_hdr* %4, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %210, %204
  br label %220

220:                                              ; preds = %219, %180
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %285

226:                                              ; preds = %220
  %227 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %228 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %227, i32 0, i32 2
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %231 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %230, i32 0, i32 3
  %232 = bitcast i32** %231 to i8*
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 24
  %235 = load i32, i32* %5, align 4
  %236 = call i32 (%struct.TYPE_10__*, ...) @atmel_copy_to_host(%struct.TYPE_10__* %229, i8* %232, i32 %234, i32 %235)
  %237 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %238 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @eth_broadcast_addr(i32 %239)
  %241 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %242 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %241, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %273

245:                                              ; preds = %226
  %246 = load i32, i32* %5, align 4
  %247 = sub nsw i32 %246, 4
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %250 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %249, i32 0, i32 3
  %251 = bitcast i32** %250 to i8*
  %252 = load i32, i32* %5, align 4
  %253 = call i32 @crc32_le(i32 %248, i8* %251, i32 %252)
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %10, align 4
  %255 = xor i32 %254, -1
  %256 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %257 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %5, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %255, %262
  br i1 %263, label %264, label %272

264:                                              ; preds = %245
  %265 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %266 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %265, i32 0, i32 2
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  br label %286

272:                                              ; preds = %245
  br label %273

273:                                              ; preds = %272, %226
  %274 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %275 = load i32, i32* %5, align 4
  %276 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %277 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %278 = load i32, i32* @RX_DESC_RSSI_OFFSET, align 4
  %279 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %280 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @atmel_rx(%struct.atmel_private* %277, i32 %278, i32 %281)
  %283 = call i64 @atmel_rmem8(%struct.atmel_private* %276, i32 %282)
  %284 = call i32 @atmel_management_frame(%struct.atmel_private* %274, %struct.ieee80211_hdr* %4, i32 %275, i64 %283)
  br label %285

285:                                              ; preds = %273, %220
  br label %286

286:                                              ; preds = %285, %264, %85, %65
  %287 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %288 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %289 = load i32, i32* @RX_DESC_FLAGS_OFFSET, align 4
  %290 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %291 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @atmel_rx(%struct.atmel_private* %288, i32 %289, i32 %292)
  %294 = load i32, i32* @RX_DESC_FLAG_CONSUMED, align 4
  %295 = call i32 @atmel_wmem8(%struct.atmel_private* %287, i32 %293, i32 %294)
  %296 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %297 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %300 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %302, 1
  %304 = icmp slt i32 %298, %303
  br i1 %304, label %305, label %310

305:                                              ; preds = %286
  %306 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %307 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 8
  br label %313

310:                                              ; preds = %286
  %311 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %312 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %311, i32 0, i32 0
  store i32 0, i32* %312, align 8
  br label %313

313:                                              ; preds = %310, %305
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %3, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %3, align 4
  br label %14

317:                                              ; preds = %32
  ret void
}

declare dso_local i64 @atmel_rmem8(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_rx(%struct.atmel_private*, i32, i32) #1

declare dso_local i32 @atmel_rmem16(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_copy_to_host(%struct.TYPE_10__*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @probe_crc(%struct.atmel_private*, i32, i32) #1

declare dso_local i32 @crc32_le(i32, i8*, i32) #1

declare dso_local i32 @fast_rx_path(%struct.atmel_private*, %struct.ieee80211_hdr*, i32, i32, i32) #1

declare dso_local i32 @frag_rx_path(%struct.atmel_private*, %struct.ieee80211_hdr*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @atmel_management_frame(%struct.atmel_private*, %struct.ieee80211_hdr*, i32, i64) #1

declare dso_local i32 @atmel_wmem8(%struct.atmel_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
