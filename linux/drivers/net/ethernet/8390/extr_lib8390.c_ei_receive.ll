; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_ei_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_ei_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ei_device = type { i32, i32, i8 }
%struct.e8390_pkt_hdr = type { i32, i32, i8 }
%struct.sk_buff = type { i32 }

@E8390_NODMA = common dso_local global i8 0, align 1
@E8390_PAGE1 = common dso_local global i8 0, align 1
@E8390_CMD = common dso_local global i64 0, align 8
@EN1_CURPAG = common dso_local global i64 0, align 8
@E8390_PAGE0 = common dso_local global i8 0, align 1
@EN0_BOUNDARY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"mismatched read page pointers %2x vs %2x\0A\00", align 1
@rx_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"bogus packet size: %d, status=%#2x nxpg=%#2x\0A\00", align 1
@ENRSR_RXOK = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't allocate a sk_buff of size %d\0A\00", align 1
@ENRSR_PHY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"bogus packet: status=%#2x nxpg=%#2x size=%d\0A\00", align 1
@ENRSR_FO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"next frame inconsistency, %#2x\0A\00", align 1
@ENISR_RX = common dso_local global i8 0, align 1
@ENISR_RX_ERR = common dso_local global i8 0, align 1
@EN0_ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ei_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ei_receive(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ei_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %struct.e8390_pkt_hdr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call %struct.ei_device* @netdev_priv(%struct.net_device* %18)
  store %struct.ei_device* %19, %struct.ei_device** %4, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %21 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %24 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %327, %164, %1
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %339

31:                                               ; preds = %27
  %32 = load i8, i8* @E8390_NODMA, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @E8390_PAGE1, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @E8390_CMD, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @ei_outb_p(i8 zeroext %37, i64 %40)
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @EN1_CURPAG, align 8
  %44 = add i64 %42, %43
  %45 = call i32 @ei_inb_p(i64 %44)
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %5, align 1
  %47 = load i8, i8* @E8390_NODMA, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @E8390_PAGE0, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @E8390_CMD, align 8
  %55 = add i64 %53, %54
  %56 = call i32 @ei_outb_p(i8 zeroext %52, i64 %55)
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @EN0_BOUNDARY, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @ei_inb_p(i64 %59)
  %61 = add nsw i32 %60, 1
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %6, align 1
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %66 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %31
  %70 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %71 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %6, align 1
  br label %74

74:                                               ; preds = %69, %31
  %75 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %76 = call i64 @netif_msg_rx_status(%struct.ei_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load i8, i8* %6, align 1
  %80 = zext i8 %79 to i32
  %81 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %82 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %81, i32 0, i32 2
  %83 = load i8, i8* %82, align 4
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %80, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %78
  %87 = load i8, i8* %6, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8, i8* %5, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %92, 255
  br i1 %93, label %94, label %101

94:                                               ; preds = %90, %86
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load i8, i8* %6, align 1
  %97 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %98 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %97, i32 0, i32 2
  %99 = load i8, i8* %98, align 4
  %100 = call i32 @netdev_err(%struct.net_device* %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %96, i8 zeroext %99)
  br label %101

101:                                              ; preds = %94, %90, %78, %74
  %102 = load i8, i8* %6, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %339

108:                                              ; preds = %101
  %109 = load i8, i8* %6, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 8
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* %8, align 2
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = load i8, i8* %6, align 1
  %115 = call i32 @ei_get_8390_hdr(%struct.net_device* %113, %struct.e8390_pkt_hdr* %10, i8 zeroext %114)
  %116 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = sub i64 %118, 12
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  %121 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %13, align 4
  %123 = load i8, i8* %6, align 1
  %124 = zext i8 %123 to i32
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 4
  %128 = ashr i32 %127, 8
  %129 = add nsw i32 %125, %128
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %7, align 1
  %131 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %132 = load i8, i8* %131, align 4
  %133 = zext i8 %132 to i32
  %134 = load i8, i8* %7, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %182

137:                                              ; preds = %108
  %138 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %139 = load i8, i8* %138, align 4
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* %7, align 1
  %142 = zext i8 %141 to i32
  %143 = add nsw i32 %142, 1
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %145, label %182

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %147 = load i8, i8* %146, align 4
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* %7, align 1
  %150 = zext i8 %149 to i32
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %150, %151
  %153 = icmp ne i32 %148, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %156 = load i8, i8* %155, align 4
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* %7, align 1
  %159 = zext i8 %158 to i32
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %160, %161
  %163 = icmp ne i32 %157, %162
  br i1 %163, label %164, label %182

164:                                              ; preds = %154
  %165 = load i8, i8* %5, align 1
  %166 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %167 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %166, i32 0, i32 2
  store i8 %165, i8* %167, align 4
  %168 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %169 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %168, i32 0, i32 2
  %170 = load i8, i8* %169, align 4
  %171 = zext i8 %170 to i32
  %172 = sub nsw i32 %171, 1
  %173 = load i64, i64* %3, align 8
  %174 = load i64, i64* @EN0_BOUNDARY, align 8
  %175 = add i64 %173, %174
  %176 = call i32 @ei_outb(i32 %172, i64 %175)
  %177 = load %struct.net_device*, %struct.net_device** %2, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  br label %27

182:                                              ; preds = %154, %145, %137, %108
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %183, 60
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %12, align 4
  %187 = icmp sgt i32 %186, 1518
  br i1 %187, label %188, label %209

188:                                              ; preds = %185, %182
  %189 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %190 = load i32, i32* @rx_status, align 4
  %191 = load %struct.net_device*, %struct.net_device** %2, align 8
  %192 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %197 = load i8, i8* %196, align 4
  %198 = call i32 @netif_dbg(%struct.ei_device* %189, i32 %190, %struct.net_device* %191, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %193, i32 %195, i8 zeroext %197)
  %199 = load %struct.net_device*, %struct.net_device** %2, align 8
  %200 = getelementptr inbounds %struct.net_device, %struct.net_device* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 8
  %204 = load %struct.net_device*, %struct.net_device** %2, align 8
  %205 = getelementptr inbounds %struct.net_device, %struct.net_device* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %310

209:                                              ; preds = %185
  %210 = load i32, i32* %13, align 4
  %211 = and i32 %210, 15
  %212 = load i32, i32* @ENRSR_RXOK, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %281

214:                                              ; preds = %209
  %215 = load %struct.net_device*, %struct.net_device** %2, align 8
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 2
  %218 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %215, i32 %217)
  store %struct.sk_buff* %218, %struct.sk_buff** %14, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %220 = icmp eq %struct.sk_buff* %219, null
  br i1 %220, label %221, label %232

221:                                              ; preds = %214
  %222 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %223 = load i32, i32* @rx_err, align 4
  %224 = load %struct.net_device*, %struct.net_device** %2, align 8
  %225 = load i32, i32* %12, align 4
  %226 = call i32 (%struct.ei_device*, i32, %struct.net_device*, i8*, i32, ...) @netif_err(%struct.ei_device* %222, i32 %223, %struct.net_device* %224, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %225)
  %227 = load %struct.net_device*, %struct.net_device** %2, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  br label %339

232:                                              ; preds = %214
  %233 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %234 = call i32 @skb_reserve(%struct.sk_buff* %233, i32 2)
  %235 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @skb_put(%struct.sk_buff* %235, i32 %236)
  %238 = load %struct.net_device*, %struct.net_device** %2, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %241 = load i16, i16* %8, align 2
  %242 = zext i16 %241 to i64
  %243 = add i64 %242, 12
  %244 = trunc i64 %243 to i16
  %245 = call i32 @ei_block_input(%struct.net_device* %238, i32 %239, %struct.sk_buff* %240, i16 zeroext %244)
  %246 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %247 = load %struct.net_device*, %struct.net_device** %2, align 8
  %248 = call i32 @eth_type_trans(%struct.sk_buff* %246, %struct.net_device* %247)
  %249 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 4
  %251 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %252 = call i32 @skb_defer_rx_timestamp(%struct.sk_buff* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %232
  %255 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %256 = call i32 @netif_rx(%struct.sk_buff* %255)
  br label %257

257:                                              ; preds = %254, %232
  %258 = load %struct.net_device*, %struct.net_device** %2, align 8
  %259 = getelementptr inbounds %struct.net_device, %struct.net_device* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 8
  %263 = load i32, i32* %12, align 4
  %264 = load %struct.net_device*, %struct.net_device** %2, align 8
  %265 = getelementptr inbounds %struct.net_device, %struct.net_device* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, %263
  store i32 %268, i32* %266, align 8
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* @ENRSR_PHY, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %257
  %274 = load %struct.net_device*, %struct.net_device** %2, align 8
  %275 = getelementptr inbounds %struct.net_device, %struct.net_device* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %273, %257
  br label %280

280:                                              ; preds = %279
  br label %309

281:                                              ; preds = %209
  %282 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %283 = load i32, i32* @rx_err, align 4
  %284 = load %struct.net_device*, %struct.net_device** %2, align 8
  %285 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %288 = load i8, i8* %287, align 4
  %289 = zext i8 %288 to i32
  %290 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (%struct.ei_device*, i32, %struct.net_device*, i8*, i32, ...) @netif_err(%struct.ei_device* %282, i32 %283, %struct.net_device* %284, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %286, i32 %289, i32 %291)
  %293 = load %struct.net_device*, %struct.net_device** %2, align 8
  %294 = getelementptr inbounds %struct.net_device, %struct.net_device* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 8
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* @ENRSR_FO, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %281
  %303 = load %struct.net_device*, %struct.net_device** %2, align 8
  %304 = getelementptr inbounds %struct.net_device, %struct.net_device* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %302, %281
  br label %309

309:                                              ; preds = %308, %280
  br label %310

310:                                              ; preds = %309, %188
  %311 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %312 = load i8, i8* %311, align 4
  store i8 %312, i8* %7, align 1
  %313 = load i8, i8* %7, align 1
  %314 = zext i8 %313 to i32
  %315 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %316 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp sge i32 %314, %317
  br i1 %318, label %319, label %327

319:                                              ; preds = %310
  %320 = load %struct.net_device*, %struct.net_device** %2, align 8
  %321 = load i8, i8* %7, align 1
  %322 = call i32 @netdev_notice(%struct.net_device* %320, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %321)
  %323 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %324 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = trunc i32 %325 to i8
  store i8 %326, i8* %7, align 1
  br label %327

327:                                              ; preds = %319, %310
  %328 = load i8, i8* %7, align 1
  %329 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %330 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %329, i32 0, i32 2
  store i8 %328, i8* %330, align 4
  %331 = load i8, i8* %7, align 1
  %332 = zext i8 %331 to i32
  %333 = sub nsw i32 %332, 1
  %334 = trunc i32 %333 to i8
  %335 = load i64, i64* %3, align 8
  %336 = load i64, i64* @EN0_BOUNDARY, align 8
  %337 = add i64 %335, %336
  %338 = call i32 @ei_outb_p(i8 zeroext %334, i64 %337)
  br label %27

339:                                              ; preds = %221, %107, %27
  %340 = load i8, i8* @ENISR_RX, align 1
  %341 = zext i8 %340 to i32
  %342 = load i8, i8* @ENISR_RX_ERR, align 1
  %343 = zext i8 %342 to i32
  %344 = add nsw i32 %341, %343
  %345 = trunc i32 %344 to i8
  %346 = load i64, i64* %3, align 8
  %347 = load i64, i64* @EN0_ISR, align 8
  %348 = add i64 %346, %347
  %349 = call i32 @ei_outb_p(i8 zeroext %345, i64 %348)
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ei_outb_p(i8 zeroext, i64) #1

declare dso_local i32 @ei_inb_p(i64) #1

declare dso_local i64 @netif_msg_rx_status(%struct.ei_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ei_get_8390_hdr(%struct.net_device*, %struct.e8390_pkt_hdr*, i8 zeroext) #1

declare dso_local i32 @ei_outb(i32, i64) #1

declare dso_local i32 @netif_dbg(%struct.ei_device*, i32, %struct.net_device*, i8*, i32, i32, i8 zeroext) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netif_err(%struct.ei_device*, i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ei_block_input(%struct.net_device*, i32, %struct.sk_buff*, i16 zeroext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_defer_rx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
