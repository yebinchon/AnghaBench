; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_rx_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_rx_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.sk_buff*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32* }

@MAX_PKT_NUM_IN_TRANSFER = common dso_local global i32 0, align 4
@ATH_USB_RX_STREAM_MODE_TAG = common dso_local global i64 0, align 8
@skb_dropped = common dso_local global i32 0, align 4
@MAX_RX_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ath9k_htc: RX memory allocation error\0A\00", align 1
@skb_allocated = common dso_local global i32 0, align 4
@skb_completed_bytes = common dso_local global i32 0, align 4
@USB_WLAN_RX_PIPE = common dso_local global i32 0, align 4
@skb_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hif_device_usb*, %struct.sk_buff*)* @ath9k_hif_usb_rx_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hif_usb_rx_stream(%struct.hif_device_usb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hif_device_usb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @MAX_PKT_NUM_IN_TRANSFER, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca %struct.sk_buff*, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  store i64 0, i64* %13, align 8
  %28 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %29 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %28, i32 0, i32 4
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %32 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %35 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %2
  %40 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %41 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %40, i32 0, i32 5
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %15, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %81

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %14, align 8
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %51 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 @memcpy(i32* %61, i32* %64, i64 %66)
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %72 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 @skb_put(%struct.sk_buff* %73, i64 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %78 = load i64, i64* %13, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %13, align 8
  %80 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %78
  store %struct.sk_buff* %77, %struct.sk_buff** %80, align 8
  br label %83

81:                                               ; preds = %39
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %45
  br label %84

84:                                               ; preds = %83, %2
  %85 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %86 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %85, i32 0, i32 4
  %87 = call i32 @spin_unlock(i32* %86)
  br label %88

88:                                               ; preds = %229, %84
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %230

92:                                               ; preds = %88
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i64 @get_unaligned_le16(i32* %99)
  store i64 %100, i64* %16, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = call i64 @get_unaligned_le16(i32* %105)
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @ATH_USB_RX_STREAM_MODE_TAG, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %92
  %111 = load i32, i32* @skb_dropped, align 4
  %112 = call i32 @RX_STAT_INC(i32 %111)
  store i32 1, i32* %20, align 4
  br label %267

113:                                              ; preds = %92
  %114 = load i64, i64* %16, align 8
  %115 = and i64 %114, 3
  %116 = sub nsw i64 4, %115
  store i64 %116, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = icmp eq i64 %117, 4
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i64 0, i64* %18, align 8
  br label %120

120:                                              ; preds = %119, %113
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %16, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i64, i64* %18, align 8
  %128 = add nsw i64 %126, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @MAX_RX_BUF_SIZE, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %192

133:                                              ; preds = %120
  %134 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %135 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %134, i32 0, i32 4
  %136 = call i32 @spin_lock(i32* %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MAX_RX_BUF_SIZE, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %141 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @MAX_RX_BUF_SIZE, align 4
  %143 = load i32, i32* %19, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sub nsw i32 %144, 4
  %146 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %147 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i64, i64* %18, align 8
  %149 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %150 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %149, i32 0, i32 6
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* %16, align 8
  %152 = add nsw i64 %151, 32
  %153 = load i32, i32* @GFP_ATOMIC, align 4
  %154 = call %struct.sk_buff* @__dev_alloc_skb(i64 %152, i32 %153)
  store %struct.sk_buff* %154, %struct.sk_buff** %5, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = icmp ne %struct.sk_buff* %155, null
  br i1 %156, label %166, label %157

157:                                              ; preds = %133
  %158 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %159 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %158, i32 0, i32 3
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %163 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %164 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %163, i32 0, i32 4
  %165 = call i32 @spin_unlock(i32* %164)
  br label %231

166:                                              ; preds = %133
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = call i32 @skb_reserve(%struct.sk_buff* %167, i32 32)
  %169 = load i32, i32* @skb_allocated, align 4
  %170 = call i32 @RX_STAT_INC(i32 %169)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %182 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = call i32 @memcpy(i32* %173, i32* %180, i64 %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %187 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %188 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %187, i32 0, i32 5
  store %struct.sk_buff* %186, %struct.sk_buff** %188, align 8
  %189 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %190 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %189, i32 0, i32 4
  %191 = call i32 @spin_unlock(i32* %190)
  br label %229

192:                                              ; preds = %120
  %193 = load i64, i64* %16, align 8
  %194 = add nsw i64 %193, 32
  %195 = load i32, i32* @GFP_ATOMIC, align 4
  %196 = call %struct.sk_buff* @__dev_alloc_skb(i64 %194, i32 %195)
  store %struct.sk_buff* %196, %struct.sk_buff** %5, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = icmp ne %struct.sk_buff* %197, null
  br i1 %198, label %205, label %199

199:                                              ; preds = %192
  %200 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %201 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %200, i32 0, i32 3
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = call i32 @dev_err(i32* %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %231

205:                                              ; preds = %192
  %206 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %207 = call i32 @skb_reserve(%struct.sk_buff* %206, i32 32)
  %208 = load i32, i32* @skb_allocated, align 4
  %209 = call i32 @RX_STAT_INC(i32 %208)
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i64, i64* %16, align 8
  %221 = call i32 @memcpy(i32* %212, i32* %219, i64 %220)
  %222 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %223 = load i64, i64* %16, align 8
  %224 = call i32 @skb_put(%struct.sk_buff* %222, i64 %223)
  %225 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %226 = load i64, i64* %13, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %13, align 8
  %228 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %226
  store %struct.sk_buff* %225, %struct.sk_buff** %228, align 8
  br label %229

229:                                              ; preds = %205, %166
  br label %88

230:                                              ; preds = %88
  br label %231

231:                                              ; preds = %230, %199, %157
  store i32 0, i32* %9, align 4
  br label %232

232:                                              ; preds = %263, %231
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %13, align 8
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %237, label %266

237:                                              ; preds = %232
  %238 = load i32, i32* @skb_completed_bytes, align 4
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %240
  %242 = load %struct.sk_buff*, %struct.sk_buff** %241, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @RX_STAT_ADD(i32 %238, i32 %244)
  %246 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %247 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %250
  %252 = load %struct.sk_buff*, %struct.sk_buff** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %254
  %256 = load %struct.sk_buff*, %struct.sk_buff** %255, align 8
  %257 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @USB_WLAN_RX_PIPE, align 4
  %260 = call i32 @ath9k_htc_rx_msg(i32 %248, %struct.sk_buff* %252, i32 %258, i32 %259)
  %261 = load i32, i32* @skb_completed, align 4
  %262 = call i32 @RX_STAT_INC(i32 %261)
  br label %263

263:                                              ; preds = %237
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  br label %232

266:                                              ; preds = %232
  store i32 0, i32* %20, align 4
  br label %267

267:                                              ; preds = %266, %110
  %268 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %268)
  %269 = load i32, i32* %20, align 4
  switch i32 %269, label %271 [
    i32 0, label %270
    i32 1, label %270
  ]

270:                                              ; preds = %267, %267
  ret void

271:                                              ; preds = %267
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i64 @get_unaligned_le16(i32*) #2

declare dso_local i32 @RX_STAT_INC(i32) #2

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i64, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #2

declare dso_local i32 @RX_STAT_ADD(i32, i32) #2

declare dso_local i32 @ath9k_htc_rx_msg(i32, %struct.sk_buff*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
