; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rtl8169_private = type { i32, %struct.TYPE_6__*, %struct.TxDesc* }
%struct.TYPE_6__ = type { i32, %struct.sk_buff* }
%struct.TxDesc = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", align 1
@DescOwn = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to map TX DMA!\0A\00", align 1
@FirstFrag = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @rtl8169_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TxDesc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %16)
  store %struct.rtl8169_private* %17, %struct.rtl8169_private** %6, align 8
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %19 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NUM_TX_DESC, align 4
  %22 = urem i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %24 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %23, i32 0, i32 2
  %25 = load %struct.TxDesc*, %struct.TxDesc** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TxDesc, %struct.TxDesc* %25, i64 %27
  store %struct.TxDesc* %28, %struct.TxDesc** %8, align 8
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %30 = call %struct.device* @tp_to_dev(%struct.rtl8169_private* %29)
  store %struct.device* %30, %struct.device** %9, align 8
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @rtl_tx_slots_avail(%struct.rtl8169_private* %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %44 = load i32, i32* @drv, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @netif_err(%struct.rtl8169_private* %43, i32 %44, %struct.net_device* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %229

47:                                               ; preds = %2
  %48 = load %struct.TxDesc*, %struct.TxDesc** %8, align 8
  %49 = getelementptr inbounds %struct.TxDesc, %struct.TxDesc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load i32, i32* @DescOwn, align 4
  %53 = and i32 %51, %52
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %229

57:                                               ; preds = %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @rtl8169_tx_vlan_tag(%struct.sk_buff* %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @DescOwn, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %64 = call i64 @rtl_chip_supports_csum_v2(%struct.rtl8169_private* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %70 = call i32 @rtl8169_tso_csum_v2(%struct.rtl8169_private* %67, %struct.sk_buff* %68, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %220

73:                                               ; preds = %66
  br label %78

74:                                               ; preds = %57
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %77 = call i32 @rtl8169_tso_csum_v1(%struct.sk_buff* %75, i32* %76)
  br label %78

78:                                               ; preds = %74, %73
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @skb_headlen(%struct.sk_buff* %79)
  store i32 %80, i32* %12, align 4
  %81 = load %struct.device*, %struct.device** %9, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @DMA_TO_DEVICE, align 4
  %87 = call i32 @dma_map_single(%struct.device* %81, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.device*, %struct.device** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @dma_mapping_error(%struct.device* %88, i32 %89)
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %78
  %94 = call i64 (...) @net_ratelimit()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %98 = load i32, i32* @drv, align 4
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = call i32 @netif_err(%struct.rtl8169_private* %97, i32 %98, %struct.net_device* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %96, %93
  br label %220

102:                                              ; preds = %78
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %105 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %103, i32* %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @cpu_to_le64(i32 %111)
  %113 = load %struct.TxDesc*, %struct.TxDesc** %8, align 8
  %114 = getelementptr inbounds %struct.TxDesc, %struct.TxDesc* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %118 = call i32 @rtl8169_xmit_frags(%struct.rtl8169_private* %115, %struct.sk_buff* %116, i32* %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %102
  br label %210

122:                                              ; preds = %102
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* @FirstFrag, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %145

130:                                              ; preds = %122
  %131 = load i32, i32* @FirstFrag, align 4
  %132 = load i32, i32* @LastFrag, align 4
  %133 = or i32 %131, %132
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %139 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store %struct.sk_buff* %137, %struct.sk_buff** %144, align 8
  br label %145

145:                                              ; preds = %130, %125
  br label %146

146:                                              ; preds = %145
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @cpu_to_le32(i32 %148)
  %150 = load %struct.TxDesc*, %struct.TxDesc** %8, align 8
  %151 = getelementptr inbounds %struct.TxDesc, %struct.TxDesc* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = call i32 @skb_tx_timestamp(%struct.sk_buff* %152)
  %154 = call i32 (...) @dma_wmb()
  %155 = load %struct.net_device*, %struct.net_device** %5, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (...) @netdev_xmit_more()
  %160 = call i32 @__netdev_sent_queue(%struct.net_device* %155, i32 %158, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @rtl8169_get_txd_opts1(i32 %162, i32 %163, i32 %164)
  %166 = load %struct.TxDesc*, %struct.TxDesc** %8, align 8
  %167 = getelementptr inbounds %struct.TxDesc, %struct.TxDesc* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = call i32 (...) @wmb()
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 1
  %171 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %172 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %176 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %177 = call i64 @rtl_tx_slots_avail(%struct.rtl8169_private* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %146
  %185 = call i32 (...) @smp_wmb()
  %186 = load %struct.net_device*, %struct.net_device** %5, align 8
  %187 = call i32 @netif_stop_queue(%struct.net_device* %186)
  store i32 1, i32* %14, align 4
  br label %188

188:                                              ; preds = %184, %146
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %193 = call i32 @rtl8169_doorbell(%struct.rtl8169_private* %192)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* %13, align 4
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = call i32 (...) @smp_mb()
  %200 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %201 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %202 = call i64 @rtl_tx_slots_avail(%struct.rtl8169_private* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load %struct.net_device*, %struct.net_device** %5, align 8
  %206 = call i32 @netif_start_queue(%struct.net_device* %205)
  br label %207

207:                                              ; preds = %204, %198
  br label %208

208:                                              ; preds = %207, %194
  %209 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %209, i32* %3, align 4
  br label %238

210:                                              ; preds = %121
  %211 = load %struct.device*, %struct.device** %9, align 8
  %212 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %213 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %212, i32 0, i32 1
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i64 %216
  %218 = load %struct.TxDesc*, %struct.TxDesc** %8, align 8
  %219 = call i32 @rtl8169_unmap_tx_skb(%struct.device* %211, %struct.TYPE_6__* %217, %struct.TxDesc* %218)
  br label %220

220:                                              ; preds = %210, %101, %72
  %221 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %222 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %221)
  %223 = load %struct.net_device*, %struct.net_device** %5, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  %228 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %228, i32* %3, align 4
  br label %238

229:                                              ; preds = %56, %42
  %230 = load %struct.net_device*, %struct.net_device** %5, align 8
  %231 = call i32 @netif_stop_queue(%struct.net_device* %230)
  %232 = load %struct.net_device*, %struct.net_device** %5, align 8
  %233 = getelementptr inbounds %struct.net_device, %struct.net_device* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %229, %220, %208
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rtl_tx_slots_avail(%struct.rtl8169_private*, i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_err(%struct.rtl8169_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rtl8169_tx_vlan_tag(%struct.sk_buff*) #1

declare dso_local i64 @rtl_chip_supports_csum_v2(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169_tso_csum_v2(%struct.rtl8169_private*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @rtl8169_tso_csum_v1(%struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @rtl8169_xmit_frags(%struct.rtl8169_private*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @__netdev_sent_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @rtl8169_get_txd_opts1(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @rtl8169_doorbell(%struct.rtl8169_private*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @rtl8169_unmap_tx_skb(%struct.device*, %struct.TYPE_6__*, %struct.TxDesc*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
