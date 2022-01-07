; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.frad_local = type { i32, i32, i16*, %struct.net_device** }
%struct.dlci_local = type { i32 (%struct.sk_buff*, %struct.net_device*)* }
%struct.sk_buff = type { i32 }
%struct.sdla_cmd = type { i32, i16, i16 }
%struct.buf_info = type { i32, i32, i32, i32 }
%struct.buf_entry = type { i32, i16, i16, i32 }

@sdla_lock = common dso_local global i32 0, align 4
@SDLA_502_RCV_BUF = common dso_local global i32 0, align 4
@SDLA_ADDR_MASK = common dso_local global i32 0, align 4
@SDLA_508_RXBUF_INFO = common dso_local global i32 0, align 4
@CONFIG_DLCI_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Received packet from invalid DLCI %i, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Memory squeeze, dropping packet\0A\00", align 1
@SDLA_502_DATA_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sdla_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdla_receive(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.frad_local*, align 8
  %5 = alloca %struct.dlci_local*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sdla_cmd*, align 8
  %8 = alloca %struct.buf_info*, align 8
  %9 = alloca %struct.buf_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i8* @netdev_priv(%struct.net_device* %21)
  %23 = bitcast i8* %22 to %struct.frad_local*
  store %struct.frad_local* %23, %struct.frad_local** %4, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i16 0, i16* %17, align 2
  store i16 0, i16* %18, align 2
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store %struct.net_device* null, %struct.net_device** %3, align 8
  store %struct.sdla_cmd* null, %struct.sdla_cmd** %7, align 8
  store %struct.buf_info* null, %struct.buf_info** %8, align 8
  store %struct.buf_entry* null, %struct.buf_entry** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @sdla_lock, i64 %24)
  %26 = load %struct.frad_local*, %struct.frad_local** %4, align 8
  %27 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %112 [
    i32 130, label %29
    i32 129, label %29
    i32 128, label %56
  ]

29:                                               ; preds = %1, %1
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SDLA_502_RCV_BUF, align 4
  %34 = load i32, i32* @SDLA_ADDR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.sdla_cmd*
  store %struct.sdla_cmd* %39, %struct.sdla_cmd** %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = load i32, i32* @SDLA_502_RCV_BUF, align 4
  %42 = call i32 @SDLA_WINDOW(%struct.net_device* %40, i32 %41)
  %43 = load %struct.sdla_cmd*, %struct.sdla_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.sdla_cmd, %struct.sdla_cmd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %29
  br label %112

49:                                               ; preds = %29
  %50 = load %struct.sdla_cmd*, %struct.sdla_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.sdla_cmd, %struct.sdla_cmd* %50, i32 0, i32 1
  %52 = load i16, i16* %51, align 4
  store i16 %52, i16* %17, align 2
  %53 = load %struct.sdla_cmd*, %struct.sdla_cmd** %7, align 8
  %54 = getelementptr inbounds %struct.sdla_cmd, %struct.sdla_cmd* %53, i32 0, i32 2
  %55 = load i16, i16* %54, align 2
  store i16 %55, i16* %18, align 2
  br label %112

56:                                               ; preds = %1
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SDLA_508_RXBUF_INFO, align 4
  %61 = load i32, i32* @SDLA_ADDR_MASK, align 4
  %62 = and i32 %60, %61
  %63 = add nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = bitcast i8* %65 to %struct.buf_info*
  store %struct.buf_info* %66, %struct.buf_info** %8, align 8
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = load i32, i32* @SDLA_508_RXBUF_INFO, align 4
  %69 = call i32 @SDLA_WINDOW(%struct.net_device* %67, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.buf_info*, %struct.buf_info** %8, align 8
  %75 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.frad_local*, %struct.frad_local** %4, align 8
  %79 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 12
  %83 = add i64 %77, %82
  %84 = load i32, i32* @SDLA_ADDR_MASK, align 4
  %85 = sext i32 %84 to i64
  %86 = and i64 %83, %85
  %87 = add i64 %73, %86
  %88 = inttoptr i64 %87 to i8*
  %89 = bitcast i8* %88 to %struct.buf_entry*
  store %struct.buf_entry* %89, %struct.buf_entry** %9, align 8
  %90 = load %struct.buf_entry*, %struct.buf_entry** %9, align 8
  %91 = getelementptr inbounds %struct.buf_entry, %struct.buf_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %56
  br label %112

96:                                               ; preds = %56
  %97 = load %struct.buf_info*, %struct.buf_info** %8, align 8
  %98 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load %struct.buf_info*, %struct.buf_info** %8, align 8
  %101 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %15, align 4
  %103 = load %struct.buf_entry*, %struct.buf_entry** %9, align 8
  %104 = getelementptr inbounds %struct.buf_entry, %struct.buf_entry* %103, i32 0, i32 1
  %105 = load i16, i16* %104, align 4
  store i16 %105, i16* %17, align 2
  %106 = load %struct.buf_entry*, %struct.buf_entry** %9, align 8
  %107 = getelementptr inbounds %struct.buf_entry, %struct.buf_entry* %106, i32 0, i32 2
  %108 = load i16, i16* %107, align 2
  store i16 %108, i16* %18, align 2
  %109 = load %struct.buf_entry*, %struct.buf_entry** %9, align 8
  %110 = getelementptr inbounds %struct.buf_entry, %struct.buf_entry* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %1, %96, %95, %49, %48
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %152

115:                                              ; preds = %112
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load %struct.frad_local*, %struct.frad_local** %4, align 8
  %122 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %121, i32 0, i32 2
  %123 = load i16*, i16** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i16, i16* %123, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = sext i16 %127 to i32
  %129 = load i16, i16* %17, align 2
  %130 = sext i16 %129 to i32
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %137

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %116

137:                                              ; preds = %132, %116
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load %struct.net_device*, %struct.net_device** %2, align 8
  %143 = load i16, i16* %17, align 2
  %144 = sext i16 %143 to i32
  %145 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load %struct.net_device*, %struct.net_device** %2, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %141, %137
  br label %152

152:                                              ; preds = %151, %112
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %152
  %156 = load %struct.frad_local*, %struct.frad_local** %4, align 8
  %157 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %156, i32 0, i32 3
  %158 = load %struct.net_device**, %struct.net_device*** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.net_device*, %struct.net_device** %158, i64 %160
  %162 = load %struct.net_device*, %struct.net_device** %161, align 8
  store %struct.net_device* %162, %struct.net_device** %3, align 8
  %163 = load i16, i16* %18, align 2
  %164 = sext i16 %163 to i64
  %165 = add i64 %164, 4
  %166 = trunc i64 %165 to i16
  %167 = call %struct.sk_buff* @dev_alloc_skb(i16 signext %166)
  store %struct.sk_buff* %167, %struct.sk_buff** %6, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %169 = icmp eq %struct.sk_buff* %168, null
  br i1 %169, label %170, label %178

170:                                              ; preds = %155
  %171 = load %struct.net_device*, %struct.net_device** %2, align 8
  %172 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %171, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %173 = load %struct.net_device*, %struct.net_device** %2, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  store i32 0, i32* %13, align 4
  br label %181

178:                                              ; preds = %155
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = call i32 @skb_reserve(%struct.sk_buff* %179, i32 4)
  br label %181

181:                                              ; preds = %178, %170
  br label %182

182:                                              ; preds = %181, %152
  %183 = load %struct.frad_local*, %struct.frad_local** %4, align 8
  %184 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %268 [
    i32 130, label %186
    i32 129, label %186
    i32 128, label %205
  ]

186:                                              ; preds = %182, %182
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %186
  %190 = load %struct.net_device*, %struct.net_device** %2, align 8
  %191 = load i32, i32* @SDLA_502_RCV_BUF, align 4
  %192 = load i32, i32* @SDLA_502_DATA_OFS, align 4
  %193 = add nsw i32 %191, %192
  %194 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %195 = load i16, i16* %18, align 2
  %196 = call i32 @skb_put(%struct.sk_buff* %194, i16 signext %195)
  %197 = load i16, i16* %18, align 2
  %198 = call i32 @__sdla_read(%struct.net_device* %190, i32 %193, i32 %196, i16 signext %197)
  br label %199

199:                                              ; preds = %189, %186
  %200 = load %struct.net_device*, %struct.net_device** %2, align 8
  %201 = load i32, i32* @SDLA_502_RCV_BUF, align 4
  %202 = call i32 @SDLA_WINDOW(%struct.net_device* %200, i32 %201)
  %203 = load %struct.sdla_cmd*, %struct.sdla_cmd** %7, align 8
  %204 = getelementptr inbounds %struct.sdla_cmd, %struct.sdla_cmd* %203, i32 0, i32 0
  store i32 0, i32* %204, align 4
  br label %268

205:                                              ; preds = %182
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %252

208:                                              ; preds = %205
  %209 = load i32, i32* %14, align 4
  %210 = load i16, i16* %18, align 2
  %211 = sext i16 %210 to i32
  %212 = add nsw i32 %209, %211
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  %215 = icmp sgt i32 %212, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %208
  %217 = load i16, i16* %18, align 2
  %218 = sext i16 %217 to i32
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %14, align 4
  %221 = sub nsw i32 %219, %220
  %222 = add nsw i32 %221, 1
  %223 = sub nsw i32 %218, %222
  br label %225

224:                                              ; preds = %208
  br label %225

225:                                              ; preds = %224, %216
  %226 = phi i32 [ %223, %216 ], [ 0, %224 ]
  %227 = trunc i32 %226 to i16
  store i16 %227, i16* %20, align 2
  %228 = load i16, i16* %18, align 2
  %229 = sext i16 %228 to i32
  %230 = load i16, i16* %20, align 2
  %231 = sext i16 %230 to i32
  %232 = sub nsw i32 %229, %231
  %233 = trunc i32 %232 to i16
  store i16 %233, i16* %19, align 2
  %234 = load %struct.net_device*, %struct.net_device** %2, align 8
  %235 = load i32, i32* %14, align 4
  %236 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %237 = load i16, i16* %19, align 2
  %238 = call i32 @skb_put(%struct.sk_buff* %236, i16 signext %237)
  %239 = load i16, i16* %19, align 2
  %240 = call i32 @__sdla_read(%struct.net_device* %234, i32 %235, i32 %238, i16 signext %239)
  %241 = load i16, i16* %20, align 2
  %242 = icmp ne i16 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %225
  %244 = load %struct.net_device*, %struct.net_device** %2, align 8
  %245 = load i32, i32* %15, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %247 = load i16, i16* %20, align 2
  %248 = call i32 @skb_put(%struct.sk_buff* %246, i16 signext %247)
  %249 = load i16, i16* %20, align 2
  %250 = call i32 @__sdla_read(%struct.net_device* %244, i32 %245, i32 %248, i16 signext %249)
  br label %251

251:                                              ; preds = %243, %225
  br label %252

252:                                              ; preds = %251, %205
  %253 = load %struct.net_device*, %struct.net_device** %2, align 8
  %254 = load i32, i32* @SDLA_508_RXBUF_INFO, align 4
  %255 = call i32 @SDLA_WINDOW(%struct.net_device* %253, i32 %254)
  %256 = load %struct.frad_local*, %struct.frad_local** %4, align 8
  %257 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  %260 = load %struct.buf_info*, %struct.buf_info** %8, align 8
  %261 = getelementptr inbounds %struct.buf_info, %struct.buf_info* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = srem i32 %259, %262
  %264 = load %struct.frad_local*, %struct.frad_local** %4, align 8
  %265 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load %struct.buf_entry*, %struct.buf_entry** %9, align 8
  %267 = getelementptr inbounds %struct.buf_entry, %struct.buf_entry* %266, i32 0, i32 0
  store i32 0, i32* %267, align 4
  br label %268

268:                                              ; preds = %182, %252, %199
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %286

271:                                              ; preds = %268
  %272 = load %struct.net_device*, %struct.net_device** %2, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load %struct.net_device*, %struct.net_device** %3, align 8
  %278 = call i8* @netdev_priv(%struct.net_device* %277)
  %279 = bitcast i8* %278 to %struct.dlci_local*
  store %struct.dlci_local* %279, %struct.dlci_local** %5, align 8
  %280 = load %struct.dlci_local*, %struct.dlci_local** %5, align 8
  %281 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %280, i32 0, i32 0
  %282 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %281, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %284 = load %struct.net_device*, %struct.net_device** %3, align 8
  %285 = call i32 %282(%struct.sk_buff* %283, %struct.net_device* %284)
  br label %286

286:                                              ; preds = %271, %268
  %287 = load i64, i64* %10, align 8
  %288 = call i32 @spin_unlock_irqrestore(i32* @sdla_lock, i64 %287)
  ret void
}

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SDLA_WINDOW(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, ...) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__sdla_read(%struct.net_device*, i32, i32, i16 signext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
