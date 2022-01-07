; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.ariadne_private = type { i32, %struct.TYPE_4__**, i64* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@RF_OWN = common dso_local global i32 0, align 4
@RF_STP = common dso_local global i32 0, align 4
@RF_ENP = common dso_local global i32 0, align 4
@RF_FRAM = common dso_local global i32 0, align 4
@RF_OFLO = common dso_local global i32 0, align 4
@RF_CRC = common dso_local global i32 0, align 4
@RF_BUFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"RX pkt type 0x%04x from %pM to %pM data %p len %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ariadne_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ariadne_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ariadne_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ariadne_private* @netdev_priv(%struct.net_device* %9)
  store %struct.ariadne_private* %10, %struct.ariadne_private** %3, align 8
  %11 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %12 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RX_RING_SIZE, align 4
  %15 = srem i32 %13, %14
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %250, %1
  %17 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %18 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lowb(i32 %25)
  %27 = load i32, i32* @RF_OWN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %268

31:                                               ; preds = %16
  %32 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %33 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lowb(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RF_STP, align 4
  %44 = load i32, i32* @RF_ENP, align 4
  %45 = or i32 %43, %44
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %31
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @RF_ENP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @RF_FRAM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @RF_OFLO, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @RF_CRC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @RF_BUFF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* @RF_STP, align 4
  %104 = or i32 65280, %103
  %105 = load i32, i32* @RF_ENP, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %108 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %109, i64 %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %106
  store i32 %116, i32* %114, align 4
  br label %250

117:                                              ; preds = %31
  %118 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %119 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %120, i64 %122
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call signext i16 @swapw(i32 %126)
  store i16 %127, i16* %7, align 2
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = load i16, i16* %7, align 2
  %130 = sext i16 %129 to i32
  %131 = add nsw i32 %130, 2
  %132 = trunc i32 %131 to i16
  %133 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %128, i16 signext %132)
  store %struct.sk_buff* %133, %struct.sk_buff** %8, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = icmp eq %struct.sk_buff* %134, null
  br i1 %135, label %136, label %191

136:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %161, %136
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @RX_RING_SIZE, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %137
  %142 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %143 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* @RX_RING_SIZE, align 4
  %149 = srem i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %144, i64 %150
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @lowb(i32 %154)
  %156 = load i32, i32* @RF_OWN, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %141
  br label %164

160:                                              ; preds = %141
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %137

164:                                              ; preds = %159, %137
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @RX_RING_SIZE, align 4
  %167 = sub nsw i32 %166, 2
  %168 = icmp sgt i32 %165, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %164
  %170 = load %struct.net_device*, %struct.net_device** %2, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @RF_OWN, align 4
  %176 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %177 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %178, i64 %180
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %175
  store i32 %185, i32* %183, align 4
  %186 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %187 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %169, %164
  br label %268

191:                                              ; preds = %117
  %192 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %193 = call i32 @skb_reserve(%struct.sk_buff* %192, i32 2)
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = load i16, i16* %7, align 2
  %196 = call i32 @skb_put(%struct.sk_buff* %194, i16 signext %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %198 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %199 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %198, i32 0, i32 2
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i8*
  %206 = load i16, i16* %7, align 2
  %207 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %197, i8* %205, i16 signext %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = call i32 @eth_type_trans(%struct.sk_buff* %208, %struct.net_device* %209)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %212 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.net_device*, %struct.net_device** %2, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to i32*
  %218 = getelementptr inbounds i32, i32* %217, i64 6
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, 6
  %224 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %225 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @netdev_dbg(%struct.net_device* %213, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %219, i64 %223, i64 %226, i64 %229, i32 %232)
  %234 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %235 = call i32 @netif_rx(%struct.sk_buff* %234)
  %236 = load %struct.net_device*, %struct.net_device** %2, align 8
  %237 = getelementptr inbounds %struct.net_device, %struct.net_device* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  %241 = load i16, i16* %7, align 2
  %242 = sext i16 %241 to i32
  %243 = load %struct.net_device*, %struct.net_device** %2, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i16, i16* %245, align 4
  %247 = sext i16 %246 to i32
  %248 = add nsw i32 %247, %242
  %249 = trunc i32 %248 to i16
  store i16 %249, i16* %245, align 4
  br label %250

250:                                              ; preds = %191, %102
  %251 = load i32, i32* @RF_OWN, align 4
  %252 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %253 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %252, i32 0, i32 1
  %254 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %254, i64 %256
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %251
  store i32 %261, i32* %259, align 4
  %262 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %263 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 8
  %266 = load i32, i32* @RX_RING_SIZE, align 4
  %267 = srem i32 %265, %266
  store i32 %267, i32* %4, align 4
  br label %16

268:                                              ; preds = %190, %16
  %269 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %270 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @RX_RING_SIZE, align 4
  %273 = srem i32 %271, %272
  %274 = load %struct.ariadne_private*, %struct.ariadne_private** %3, align 8
  %275 = getelementptr inbounds %struct.ariadne_private, %struct.ariadne_private* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 8
  ret i32 0
}

declare dso_local %struct.ariadne_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lowb(i32) #1

declare dso_local signext i16 @swapw(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i16 signext) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i16 signext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
