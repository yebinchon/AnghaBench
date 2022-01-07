; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_status_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_status_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i32, %struct.net_device**, i32, %struct.sky2_status_le* }
%struct.net_device = type { i32 }
%struct.sky2_status_le = type { i32, i32, i32, i32 }
%struct.sky2_port = type { i32 }
%struct.sk_buff = type { i32, i32 }

@HW_OWNER = common dso_local global i32 0, align 4
@CSS_LINK_BIT = common dso_local global i32 0, align 4
@SKY2_HW_NEW_LE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CSS_ISIPV4 = common dso_local global i32 0, align 4
@CSS_ISIPV6 = common dso_local global i32 0, align 4
@CSS_TCPUDPCSOK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown status opcode 0x%x\0A\00", align 1
@STAT_CTRL = common dso_local global i32 0, align 4
@SC_STAT_CLR_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*, i32, i64)* @sky2_status_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_status_intr(%struct.sky2_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca %struct.sky2_port*, align 8
  %12 = alloca %struct.sky2_status_le*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %19 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %248

25:                                               ; preds = %3
  %26 = call i32 (...) @rmb()
  br label %27

27:                                               ; preds = %223, %25
  %28 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %29 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %28, i32 0, i32 4
  %30 = load %struct.sky2_status_le*, %struct.sky2_status_le** %29, align 8
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %32 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.sky2_status_le, %struct.sky2_status_le* %30, i64 %33
  store %struct.sky2_status_le* %34, %struct.sky2_status_le** %12, align 8
  %35 = load %struct.sky2_status_le*, %struct.sky2_status_le** %12, align 8
  %36 = getelementptr inbounds %struct.sky2_status_le, %struct.sky2_status_le* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @HW_OWNER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %229

43:                                               ; preds = %27
  %44 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %45 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %49 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @RING_NEXT(i32 %47, i32 %50)
  %52 = sext i32 %51 to i64
  %53 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %54 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.sky2_status_le*, %struct.sky2_status_le** %12, align 8
  %56 = getelementptr inbounds %struct.sky2_status_le, %struct.sky2_status_le* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CSS_LINK_BIT, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %13, align 4
  %60 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %61 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %60, i32 0, i32 2
  %62 = load %struct.net_device**, %struct.net_device*** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.net_device*, %struct.net_device** %62, i64 %64
  %66 = load %struct.net_device*, %struct.net_device** %65, align 8
  store %struct.net_device* %66, %struct.net_device** %14, align 8
  %67 = load %struct.net_device*, %struct.net_device** %14, align 8
  %68 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %67)
  store %struct.sky2_port* %68, %struct.sky2_port** %11, align 8
  %69 = load %struct.sky2_status_le*, %struct.sky2_status_le** %12, align 8
  %70 = getelementptr inbounds %struct.sky2_status_le, %struct.sky2_status_le* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @le16_to_cpu(i32 %71)
  store i64 %72, i64* %17, align 8
  %73 = load %struct.sky2_status_le*, %struct.sky2_status_le** %12, align 8
  %74 = getelementptr inbounds %struct.sky2_status_le, %struct.sky2_status_le* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load %struct.sky2_status_le*, %struct.sky2_status_le** %12, align 8
  %78 = getelementptr inbounds %struct.sky2_status_le, %struct.sky2_status_le* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @HW_OWNER, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  switch i32 %82, label %215 [
    i32 130, label %83
    i32 129, label %158
    i32 131, label %162
    i32 132, label %166
    i32 133, label %179
    i32 128, label %183
  ]

83:                                               ; preds = %43
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i64, i64* %17, align 8
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %94, %89
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load %struct.net_device*, %struct.net_device** %14, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call %struct.sk_buff* @sky2_receive(%struct.net_device* %97, i64 %98, i32 %99)
  store %struct.sk_buff* %100, %struct.sk_buff** %15, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %102 = icmp ne %struct.sk_buff* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %83
  br label %222

104:                                              ; preds = %83
  %105 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %106 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SKY2_HW_NEW_LE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %104
  %112 = load %struct.net_device*, %struct.net_device** %14, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %111
  %119 = load %struct.sky2_status_le*, %struct.sky2_status_le** %12, align 8
  %120 = getelementptr inbounds %struct.sky2_status_le, %struct.sky2_status_le* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CSS_ISIPV4, align 4
  %123 = load i32, i32* @CSS_ISIPV6, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %118
  %128 = load %struct.sky2_status_le*, %struct.sky2_status_le** %12, align 8
  %129 = getelementptr inbounds %struct.sky2_status_le, %struct.sky2_status_le* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CSS_TCPUDPCSOK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %142

138:                                              ; preds = %127, %118, %111
  %139 = load i32, i32* @CHECKSUM_NONE, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %104
  %144 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %145 = load %struct.net_device*, %struct.net_device** %14, align 8
  %146 = call i32 @eth_type_trans(%struct.sk_buff* %144, %struct.net_device* %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.sky2_port*, %struct.sky2_port** %11, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %151 = call i32 @sky2_skb_rx(%struct.sky2_port* %149, %struct.sk_buff* %150)
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %234

157:                                              ; preds = %143
  br label %222

158:                                              ; preds = %43
  %159 = load %struct.sky2_port*, %struct.sky2_port** %11, align 8
  %160 = load i64, i64* %17, align 8
  %161 = call i32 @sky2_rx_tag(%struct.sky2_port* %159, i64 %160)
  br label %222

162:                                              ; preds = %43
  %163 = load %struct.sky2_port*, %struct.sky2_port** %11, align 8
  %164 = load i64, i64* %17, align 8
  %165 = call i32 @sky2_rx_tag(%struct.sky2_port* %163, i64 %164)
  br label %166

166:                                              ; preds = %43, %162
  %167 = load %struct.net_device*, %struct.net_device** %14, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %171 = and i32 %169, %170
  %172 = call i32 @likely(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load %struct.sky2_port*, %struct.sky2_port** %11, align 8
  %176 = load i32, i32* %16, align 4
  %177 = call i32 @sky2_rx_checksum(%struct.sky2_port* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %166
  br label %222

179:                                              ; preds = %43
  %180 = load %struct.sky2_port*, %struct.sky2_port** %11, align 8
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @sky2_rx_hash(%struct.sky2_port* %180, i32 %181)
  br label %222

183:                                              ; preds = %43
  %184 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %185 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %184, i32 0, i32 2
  %186 = load %struct.net_device**, %struct.net_device*** %185, align 8
  %187 = getelementptr inbounds %struct.net_device*, %struct.net_device** %186, i64 0
  %188 = load %struct.net_device*, %struct.net_device** %187, align 8
  %189 = load i32, i32* %16, align 4
  %190 = and i32 %189, 4095
  %191 = call i32 @sky2_tx_done(%struct.net_device* %188, i32 %190)
  %192 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %193 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %192, i32 0, i32 2
  %194 = load %struct.net_device**, %struct.net_device*** %193, align 8
  %195 = getelementptr inbounds %struct.net_device*, %struct.net_device** %194, i64 1
  %196 = load %struct.net_device*, %struct.net_device** %195, align 8
  %197 = icmp ne %struct.net_device* %196, null
  br i1 %197, label %198, label %214

198:                                              ; preds = %183
  %199 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %200 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %199, i32 0, i32 2
  %201 = load %struct.net_device**, %struct.net_device*** %200, align 8
  %202 = getelementptr inbounds %struct.net_device*, %struct.net_device** %201, i64 1
  %203 = load %struct.net_device*, %struct.net_device** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = ashr i32 %204, 24
  %206 = and i32 %205, 255
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %17, align 8
  %209 = and i64 %208, 15
  %210 = shl i64 %209, 8
  %211 = or i64 %207, %210
  %212 = trunc i64 %211 to i32
  %213 = call i32 @sky2_tx_done(%struct.net_device* %203, i32 %212)
  br label %214

214:                                              ; preds = %198, %183
  br label %222

215:                                              ; preds = %43
  %216 = call i32 (...) @net_ratelimit()
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* %18, align 4
  %220 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %218, %215
  br label %222

222:                                              ; preds = %221, %214, %179, %178, %158, %157, %103
  br label %223

223:                                              ; preds = %222
  %224 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %225 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %7, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %27, label %229

229:                                              ; preds = %223, %42
  %230 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %231 = load i32, i32* @STAT_CTRL, align 4
  %232 = load i32, i32* @SC_STAT_CLR_IRQ, align 4
  %233 = call i32 @sky2_write32(%struct.sky2_hw* %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %229, %156
  %235 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @sky2_rx_done(%struct.sky2_hw* %235, i32 0, i32 %237, i32 %239)
  %241 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @sky2_rx_done(%struct.sky2_hw* %241, i32 1, i32 %243, i32 %245)
  %247 = load i32, i32* %8, align 4
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %234, %23
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rmb(...) #2

declare dso_local i32 @RING_NEXT(i32, i32) #2

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #2

declare dso_local i64 @le16_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local %struct.sk_buff* @sky2_receive(%struct.net_device*, i64, i32) #2

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #2

declare dso_local i32 @sky2_skb_rx(%struct.sky2_port*, %struct.sk_buff*) #2

declare dso_local i32 @sky2_rx_tag(%struct.sky2_port*, i64) #2

declare dso_local i32 @likely(i32) #2

declare dso_local i32 @sky2_rx_checksum(%struct.sky2_port*, i32) #2

declare dso_local i32 @sky2_rx_hash(%struct.sky2_port*, i32) #2

declare dso_local i32 @sky2_tx_done(%struct.net_device*, i32) #2

declare dso_local i32 @net_ratelimit(...) #2

declare dso_local i32 @pr_warn(i8*, i32) #2

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #2

declare dso_local i32 @sky2_rx_done(%struct.sky2_hw*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
