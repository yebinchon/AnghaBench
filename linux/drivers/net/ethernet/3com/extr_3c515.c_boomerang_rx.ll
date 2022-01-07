; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_boomerang_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_boomerang_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i16, i32, i32, i32, i32, i32, i32 }
%struct.corkscrew_private = type { i32, i64, %struct.TYPE_4__*, %struct.sk_buff** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"   In boomerang_rx(), status %4.4x, rx_status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@RxStatus = common dso_local global i64 0, align 8
@RxDComplete = common dso_local global i32 0, align 4
@RxDError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c" Rx error: status %2.2x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Receiving packet size %d status %4.4x.\0A\00", align 1
@rx_copybreak = common dso_local global i16 0, align 2
@rx_copy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [82 x i8] c"%s: Warning -- the skbuff addresses do not match in boomerang_rx: %p vs. %p / %p\0A\00", align 1
@rx_nocopy = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @boomerang_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boomerang_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.corkscrew_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.corkscrew_private* @netdev_priv(%struct.net_device* %12)
  store %struct.corkscrew_private* %13, %struct.corkscrew_private** %3, align 8
  %14 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %15 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RX_RING_SIZE, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @corkscrew_debug, align 4
  %23 = icmp sgt i32 %22, 5
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @EL3_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inw(i64 %28)
  %30 = trunc i32 %29 to i16
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @RxStatus, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inw(i64 %34)
  %36 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i16 signext %30, i32 %35)
  br label %37

37:                                               ; preds = %24, %1
  br label %38

38:                                               ; preds = %238, %37
  %39 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %40 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @RxDComplete, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %245

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RxDError, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %126

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 16
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %7, align 1
  %59 = load i32, i32* @corkscrew_debug, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i16
  %64 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i16 signext %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %65
  %82 = load i8, i8* %7, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i8, i8* %7, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i8, i8* %7, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i8, i8* %7, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 16
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %114
  br label %238

126:                                              ; preds = %50
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 8191
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %8, align 2
  %130 = load i16, i16* %8, align 2
  %131 = sext i16 %130 to i32
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i16, i16* %134, align 4
  %136 = sext i16 %135 to i32
  %137 = add nsw i32 %136, %131
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %134, align 4
  %139 = load i32, i32* @corkscrew_debug, align 4
  %140 = icmp sgt i32 %139, 4
  br i1 %140, label %141, label %145

141:                                              ; preds = %126
  %142 = load i16, i16* %8, align 2
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i8*, i16, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i16 signext %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %126
  %146 = load i16, i16* %8, align 2
  %147 = sext i16 %146 to i32
  %148 = load i16, i16* @rx_copybreak, align 2
  %149 = sext i16 %148 to i32
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %145
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = load i16, i16* %8, align 2
  %154 = sext i16 %153 to i32
  %155 = add nsw i32 %154, 4
  %156 = trunc i32 %155 to i16
  %157 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %152, i16 signext %156)
  store %struct.sk_buff* %157, %struct.sk_buff** %9, align 8
  %158 = icmp ne %struct.sk_buff* %157, null
  br i1 %158, label %159, label %176

159:                                              ; preds = %151
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = call i32 @skb_reserve(%struct.sk_buff* %160, i32 2)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %163 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %164 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @isa_bus_to_virt(i32 %170)
  %172 = load i16, i16* %8, align 2
  %173 = call i32 @skb_put_data(%struct.sk_buff* %162, i8* %171, i16 signext %172)
  %174 = load i32, i32* @rx_copy, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @rx_copy, align 4
  br label %225

176:                                              ; preds = %151, %145
  %177 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %178 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %177, i32 0, i32 3
  %179 = load %struct.sk_buff**, %struct.sk_buff*** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %179, i64 %181
  %183 = load %struct.sk_buff*, %struct.sk_buff** %182, align 8
  store %struct.sk_buff* %183, %struct.sk_buff** %9, align 8
  %184 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %185 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %184, i32 0, i32 3
  %186 = load %struct.sk_buff**, %struct.sk_buff*** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %186, i64 %188
  store %struct.sk_buff* null, %struct.sk_buff** %189, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %191 = load i16, i16* %8, align 2
  %192 = call i8* @skb_put(%struct.sk_buff* %190, i16 signext %191)
  store i8* %192, i8** %10, align 8
  %193 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %194 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %193, i32 0, i32 2
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @isa_bus_to_virt(i32 %200)
  %202 = load i8*, i8** %10, align 8
  %203 = icmp ne i8* %201, %202
  br i1 %203, label %204, label %222

204:                                              ; preds = %176
  %205 = load %struct.net_device*, %struct.net_device** %2, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %209 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %208, i32 0, i32 2
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @isa_bus_to_virt(i32 %215)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %218 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %10, align 8
  %221 = call i32 @pr_warn(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %207, i8* %216, i32 %219, i8* %220)
  br label %222

222:                                              ; preds = %204, %176
  %223 = load i32, i32* @rx_nocopy, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @rx_nocopy, align 4
  br label %225

225:                                              ; preds = %222, %159
  %226 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %227 = load %struct.net_device*, %struct.net_device** %2, align 8
  %228 = call i32 @eth_type_trans(%struct.sk_buff* %226, %struct.net_device* %227)
  %229 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %230 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  %231 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %232 = call i32 @netif_rx(%struct.sk_buff* %231)
  %233 = load %struct.net_device*, %struct.net_device** %2, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %225, %125
  %239 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %240 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  %243 = load i32, i32* @RX_RING_SIZE, align 4
  %244 = srem i32 %242, %243
  store i32 %244, i32* %4, align 4
  br label %38

245:                                              ; preds = %38
  br label %246

246:                                              ; preds = %308, %245
  %247 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %248 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %252 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = sub nsw i64 %250, %253
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %313

256:                                              ; preds = %246
  %257 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %258 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* @RX_RING_SIZE, align 4
  %261 = sext i32 %260 to i64
  %262 = srem i64 %259, %261
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %4, align 4
  %264 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %265 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %264, i32 0, i32 3
  %266 = load %struct.sk_buff**, %struct.sk_buff*** %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %266, i64 %268
  %270 = load %struct.sk_buff*, %struct.sk_buff** %269, align 8
  %271 = icmp eq %struct.sk_buff* %270, null
  br i1 %271, label %272, label %300

272:                                              ; preds = %256
  %273 = load %struct.net_device*, %struct.net_device** %2, align 8
  %274 = load i16, i16* @PKT_BUF_SZ, align 2
  %275 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %273, i16 signext %274)
  store %struct.sk_buff* %275, %struct.sk_buff** %11, align 8
  %276 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %277 = icmp eq %struct.sk_buff* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %313

279:                                              ; preds = %272
  %280 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %281 = call i32 @skb_reserve(%struct.sk_buff* %280, i32 2)
  %282 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %283 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @isa_virt_to_bus(i32 %284)
  %286 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %287 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %286, i32 0, i32 2
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  store i32 %285, i32* %292, align 4
  %293 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %294 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %295 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %294, i32 0, i32 3
  %296 = load %struct.sk_buff**, %struct.sk_buff*** %295, align 8
  %297 = load i32, i32* %4, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %296, i64 %298
  store %struct.sk_buff* %293, %struct.sk_buff** %299, align 8
  br label %300

300:                                              ; preds = %279, %256
  %301 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %302 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %301, i32 0, i32 2
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = load i32, i32* %4, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  store i32 0, i32* %307, align 4
  br label %308

308:                                              ; preds = %300
  %309 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %310 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %311, 1
  store i64 %312, i64* %310, align 8
  br label %246

313:                                              ; preds = %278, %246
  ret i32 0
}

declare dso_local %struct.corkscrew_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i16 signext, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i16 signext) #1

declare dso_local i8* @isa_bus_to_virt(i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @pr_warn(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @isa_virt_to_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
