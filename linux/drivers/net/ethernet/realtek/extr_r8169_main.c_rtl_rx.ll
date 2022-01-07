; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.rtl8169_private = type { i32, %struct.TYPE_4__, i32, %struct.RxDesc*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.RxDesc = type { i64, i32, i32 }
%struct.sk_buff = type { i32, i32, i64, i32 }

@NUM_RX_DESC = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@RxRES = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Rx ERROR. status = %08x\0A\00", align 1
@RxRWT = common dso_local global i32 0, align 4
@RxRUNT = common dso_local global i32 0, align 4
@RxCRC = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rtl8169_private*, i32)* @rtl_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_rx(%struct.net_device* %0, %struct.rtl8169_private* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rtl8169_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.RxDesc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rtl8169_private* %1, %struct.rtl8169_private** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %17 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NUM_RX_DESC, align 4
  %21 = call i32 @min(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %253, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %258

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NUM_RX_DESC, align 4
  %28 = urem i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %30 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @page_address(i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %38 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %37, i32 0, i32 3
  %39 = load %struct.RxDesc*, %struct.RxDesc** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %39, i64 %41
  store %struct.RxDesc* %42, %struct.RxDesc** %12, align 8
  %43 = load %struct.RxDesc*, %struct.RxDesc** %12, align 8
  %44 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @DescOwn, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %25
  br label %258

52:                                               ; preds = %25
  %53 = call i32 (...) @dma_rmb()
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @RxRES, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %114

59:                                               ; preds = %52
  %60 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %61 = load i32, i32* @rx_err, align 4
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @netif_info(%struct.rtl8169_private* %60, i32 %61, %struct.net_device* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @RxRWT, align 4
  %72 = load i32, i32* @RxRUNT, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %59
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %59
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @RxCRC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @RxRUNT, align 4
  %96 = load i32, i32* @RxCRC, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @RxRWT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NETIF_F_RXALL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %115

113:                                              ; preds = %105, %100, %93
  br label %247

114:                                              ; preds = %52
  br label %115

115:                                              ; preds = %114, %112
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @GENMASK(i32 13, i32 0)
  %118 = and i32 %116, %117
  store i32 %118, i32* %14, align 4
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @NETIF_F_RXFCS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i64 @likely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %115
  %130 = load i64, i64* @ETH_FCS_LEN, align 8
  %131 = load i32, i32* %14, align 4
  %132 = zext i32 %131 to i64
  %133 = sub nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %129, %115
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @rtl8169_fragmented_frame(i32 %136)
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.net_device*, %struct.net_device** %4, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %248

151:                                              ; preds = %135
  %152 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %153 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %152, i32 0, i32 2
  %154 = load i32, i32* %14, align 4
  %155 = call %struct.sk_buff* @napi_alloc_skb(i32* %153, i32 %154)
  store %struct.sk_buff* %155, %struct.sk_buff** %15, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %157 = icmp ne %struct.sk_buff* %156, null
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %151
  %163 = load %struct.net_device*, %struct.net_device** %4, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %248

168:                                              ; preds = %151
  %169 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %170 = call i32 @tp_to_dev(%struct.rtl8169_private* %169)
  %171 = load %struct.RxDesc*, %struct.RxDesc** %12, align 8
  %172 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @le64_to_cpu(i32 %173)
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %177 = call i32 @dma_sync_single_for_cpu(i32 %170, i32 %174, i32 %175, i32 %176)
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @prefetch(i8* %178)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %181 = load i8*, i8** %11, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %180, i8* %181, i32 %182)
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %193 = call i32 @tp_to_dev(%struct.rtl8169_private* %192)
  %194 = load %struct.RxDesc*, %struct.RxDesc** %12, align 8
  %195 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @le64_to_cpu(i32 %196)
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %200 = call i32 @dma_sync_single_for_device(i32 %193, i32 %197, i32 %198, i32 %199)
  %201 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @rtl8169_rx_csum(%struct.sk_buff* %201, i32 %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %205 = load %struct.net_device*, %struct.net_device** %4, align 8
  %206 = call i32 @eth_type_trans(%struct.sk_buff* %204, %struct.net_device* %205)
  %207 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 8
  %209 = load %struct.RxDesc*, %struct.RxDesc** %12, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %211 = call i32 @rtl8169_rx_vlan_tag(%struct.RxDesc* %209, %struct.sk_buff* %210)
  %212 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %213 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @PACKET_MULTICAST, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %168
  %218 = load %struct.net_device*, %struct.net_device** %4, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %168
  %224 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %225 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %224, i32 0, i32 2
  %226 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %227 = call i32 @napi_gro_receive(i32* %225, %struct.sk_buff* %226)
  %228 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %229 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = call i32 @u64_stats_update_begin(i32* %230)
  %232 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %233 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* %14, align 4
  %238 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %239 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, %237
  store i32 %242, i32* %240, align 4
  %243 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %244 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = call i32 @u64_stats_update_end(i32* %245)
  br label %247

247:                                              ; preds = %223, %113
  br label %248

248:                                              ; preds = %247, %162, %140
  %249 = load %struct.RxDesc*, %struct.RxDesc** %12, align 8
  %250 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %249, i32 0, i32 0
  store i64 0, i64* %250, align 8
  %251 = load %struct.RxDesc*, %struct.RxDesc** %12, align 8
  %252 = call i32 @rtl8169_mark_to_asic(%struct.RxDesc* %251)
  br label %253

253:                                              ; preds = %248
  %254 = load i32, i32* %8, align 4
  %255 = add i32 %254, -1
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %7, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %7, align 4
  br label %22

258:                                              ; preds = %51, %22
  %259 = load i32, i32* %7, align 4
  %260 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %261 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sub i32 %259, %262
  store i32 %263, i32* %9, align 4
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %266 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* %9, align 4
  ret i32 %267
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_info(%struct.rtl8169_private*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rtl8169_fragmented_frame(i32) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @rtl8169_rx_csum(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @rtl8169_rx_vlan_tag(%struct.RxDesc*, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @rtl8169_mark_to_asic(%struct.RxDesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
