; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_ei_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_ei_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ei_device = type { i8, i8, i8 }
%struct.e8390_pkt_hdr = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@EN1_CURPAG = common dso_local global i64 0, align 8
@EN0_BOUNDARY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"mismatched read page pointers %2x vs %2x\0A\00", align 1
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"bogus packet size: %d, status=%#2x nxpg=%#2x\0A\00", align 1
@ENRSR_RXOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't allocate a sk_buff of size %d\0A\00", align 1
@ENRSR_PHY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"bogus packet: status=%#2x nxpg=%#2x size=%d\0A\00", align 1
@ENRSR_FO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"next frame inconsistency, %#2x\0A\00", align 1
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
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call %struct.ei_device* @netdev_priv(%struct.net_device* %17)
  store %struct.ei_device* %18, %struct.ei_device** %4, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %243, %1
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %255

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @EN1_CURPAG, align 8
  %26 = add nsw i64 %24, %25
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @inb_p(i64 %27)
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %5, align 1
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @EN0_BOUNDARY, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inb_p(i64 %32)
  %34 = add nsw i32 %33, 1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %6, align 1
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %39 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %23
  %44 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %45 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %44, i32 0, i32 1
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %6, align 1
  br label %47

47:                                               ; preds = %43, %23
  %48 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %49 = call i64 @netif_msg_rx_err(%struct.ei_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %55 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %54, i32 0, i32 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %51
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 255
  br i1 %66, label %67, label %74

67:                                               ; preds = %63, %59
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load i8, i8* %6, align 1
  %70 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %71 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %70, i32 0, i32 2
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @netdev_err(%struct.net_device* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %69, i8 zeroext %72)
  br label %74

74:                                               ; preds = %67, %63, %51, %47
  %75 = load i8, i8* %6, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* %5, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %255

81:                                               ; preds = %74
  %82 = load i8, i8* %6, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 8
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %8, align 2
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = load i8, i8* %6, align 1
  %88 = call i32 @ei_get_8390_hdr(%struct.net_device* %86, %struct.e8390_pkt_hdr* %10, i8 zeroext %87)
  %89 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 %91, 12
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %11, align 4
  %94 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  %96 = load i8, i8* %6, align 1
  %97 = zext i8 %96 to i32
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 4
  %101 = ashr i32 %100, 8
  %102 = add nsw i32 %98, %101
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %7, align 1
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 60
  br i1 %105, label %109, label %106

106:                                              ; preds = %81
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %107, 1518
  br i1 %108, label %109, label %130

109:                                              ; preds = %106, %81
  %110 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %111 = load i32, i32* @rx_err, align 4
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.ei_device*, i32, %struct.net_device*, i8*, i32, ...) @netif_err(%struct.ei_device* %110, i32 %111, %struct.net_device* %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %116, i32 %118)
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %225

130:                                              ; preds = %106
  %131 = load i32, i32* %12, align 4
  %132 = and i32 %131, 15
  %133 = load i32, i32* @ENRSR_RXOK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %197

135:                                              ; preds = %130
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 2
  %139 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %136, i32 %138)
  store %struct.sk_buff* %139, %struct.sk_buff** %13, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %141 = icmp eq %struct.sk_buff* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %144 = load i32, i32* @rx_err, align 4
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 (%struct.ei_device*, i32, %struct.net_device*, i8*, i32, ...) @netif_err(%struct.ei_device* %143, i32 %144, %struct.net_device* %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  br label %255

153:                                              ; preds = %135
  %154 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %155 = call i32 @skb_reserve(%struct.sk_buff* %154, i32 2)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @skb_put(%struct.sk_buff* %156, i32 %157)
  %159 = load %struct.net_device*, %struct.net_device** %2, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %162 = load i16, i16* %8, align 2
  %163 = zext i16 %162 to i64
  %164 = add i64 %163, 12
  %165 = trunc i64 %164 to i16
  %166 = call i32 @ei_block_input(%struct.net_device* %159, i32 %160, %struct.sk_buff* %161, i16 zeroext %165)
  %167 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = call i32 @eth_type_trans(%struct.sk_buff* %167, %struct.net_device* %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %173 = call i32 @netif_rx(%struct.sk_buff* %172)
  %174 = load %struct.net_device*, %struct.net_device** %2, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.net_device*, %struct.net_device** %2, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, %179
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @ENRSR_PHY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %153
  %190 = load %struct.net_device*, %struct.net_device** %2, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %189, %153
  br label %196

196:                                              ; preds = %195
  br label %224

197:                                              ; preds = %130
  %198 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %199 = load i32, i32* @rx_err, align 4
  %200 = load %struct.net_device*, %struct.net_device** %2, align 8
  %201 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (%struct.ei_device*, i32, %struct.net_device*, i8*, i32, ...) @netif_err(%struct.ei_device* %198, i32 %199, %struct.net_device* %200, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %202, i32 %204, i32 %206)
  %208 = load %struct.net_device*, %struct.net_device** %2, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* @ENRSR_FO, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %197
  %218 = load %struct.net_device*, %struct.net_device** %2, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %197
  br label %224

224:                                              ; preds = %223, %196
  br label %225

225:                                              ; preds = %224, %109
  %226 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %10, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = trunc i32 %227 to i8
  store i8 %228, i8* %7, align 1
  %229 = load i8, i8* %7, align 1
  %230 = zext i8 %229 to i32
  %231 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %232 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %231, i32 0, i32 0
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp sge i32 %230, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %225
  %237 = load %struct.net_device*, %struct.net_device** %2, align 8
  %238 = load i8, i8* %7, align 1
  %239 = call i32 @netdev_info(%struct.net_device* %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %238)
  %240 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %241 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %240, i32 0, i32 1
  %242 = load i8, i8* %241, align 1
  store i8 %242, i8* %7, align 1
  br label %243

243:                                              ; preds = %236, %225
  %244 = load i8, i8* %7, align 1
  %245 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %246 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %245, i32 0, i32 2
  store i8 %244, i8* %246, align 1
  %247 = load i8, i8* %7, align 1
  %248 = zext i8 %247 to i32
  %249 = sub nsw i32 %248, 1
  %250 = trunc i32 %249 to i8
  %251 = load i64, i64* %3, align 8
  %252 = load i64, i64* @EN0_BOUNDARY, align 8
  %253 = add nsw i64 %251, %252
  %254 = call i32 @outb_p(i8 zeroext %250, i64 %253)
  br label %19

255:                                              ; preds = %142, %80, %19
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i64 @netif_msg_rx_err(%struct.ei_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ei_get_8390_hdr(%struct.net_device*, %struct.e8390_pkt_hdr*, i8 zeroext) #1

declare dso_local i32 @netif_err(%struct.ei_device*, i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ei_block_input(%struct.net_device*, i32, %struct.sk_buff*, i16 zeroext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8 zeroext) #1

declare dso_local i32 @outb_p(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
