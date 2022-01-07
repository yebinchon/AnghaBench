; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_txbuf_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_txbuf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*)*, i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.ath5k_desc = type opaque
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.ath5k_buf = type { i32, i64, i32, %struct.TYPE_12__*, %struct.sk_buff*, %struct.ath5k_desc.0* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ath5k_desc.0 = type { i64, i32 }
%struct.ath5k_txq = type { i32, i32, i64*, i32, i32 }
%struct.ieee80211_tx_control = type { i32* }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.ieee80211_rate = type { i32 }
%struct.TYPE_13__ = type { i8* }

@AR5K_TXKEYIX_INVALID = common dso_local global i32 0, align 4
@AR5K_TXDESC_INTREQ = common dso_local global i32 0, align 4
@AR5K_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@AR5K_TXDESC_NOACK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@AR5K_TXDESC_RTSENA = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@AR5K_TXDESC_CTSENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ath5k_buf*, %struct.ath5k_txq*, i32, %struct.ieee80211_tx_control*)* @ath5k_txbuf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_txbuf_setup(%struct.ath5k_hw* %0, %struct.ath5k_buf* %1, %struct.ath5k_txq* %2, i32 %3, %struct.ieee80211_tx_control* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_hw*, align 8
  %8 = alloca %struct.ath5k_buf*, align 8
  %9 = alloca %struct.ath5k_txq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_tx_control*, align 8
  %12 = alloca %struct.ath5k_desc.0*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_rate*, align 8
  %19 = alloca [3 x i32], align 4
  %20 = alloca [3 x i32], align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %7, align 8
  store %struct.ath5k_buf* %1, %struct.ath5k_buf** %8, align 8
  store %struct.ath5k_txq* %2, %struct.ath5k_txq** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_tx_control* %4, %struct.ieee80211_tx_control** %11, align 8
  %27 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %28 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %27, i32 0, i32 5
  %29 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %28, align 8
  store %struct.ath5k_desc.0* %29, %struct.ath5k_desc.0** %12, align 8
  %30 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %31 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %30, i32 0, i32 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %13, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %34 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %33)
  store %struct.ieee80211_tx_info* %34, %struct.ieee80211_tx_info** %14, align 8
  %35 = load i32, i32* @AR5K_TXKEYIX_INVALID, align 4
  store i32 %35, i32* %17, align 4
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  %36 = load i32, i32* @AR5K_TXDESC_INTREQ, align 4
  %37 = load i32, i32* @AR5K_TXDESC_CLRDMASK, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %16, align 4
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %40 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @dma_map_single(i32 %41, i32 %44, i32 %47, i32 %48)
  %50 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %51 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %53 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %56 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @dma_mapping_error(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %5
  %61 = load i32, i32* @ENOSPC, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %369

63:                                               ; preds = %5
  %64 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %11, align 8
  %69 = icmp ne %struct.ieee80211_tx_control* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  br label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32* [ %73, %70 ], [ null, %74 ]
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %79 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %78, i32 0, i32 3
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %82 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %81, i32 0, i32 3
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %83)
  %85 = call i32 @ieee80211_get_tx_rates(i32 %67, i32* %76, %struct.sk_buff* %77, %struct.TYPE_12__* %80, i32 %84)
  %86 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %87 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %90 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %91 = call %struct.ieee80211_rate* @ath5k_get_rate(i32 %88, %struct.ieee80211_tx_info* %89, %struct.ath5k_buf* %90, i32 0)
  store %struct.ieee80211_rate* %91, %struct.ieee80211_rate** %18, align 8
  %92 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %18, align 8
  %93 = icmp ne %struct.ieee80211_rate* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %75
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %22, align 4
  br label %356

97:                                               ; preds = %75
  %98 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @AR5K_TXDESC_NOACK, align 4
  %106 = load i32, i32* %16, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %110 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %109, i32 0, i32 3
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %26, align 4
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %116 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %119 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %120 = call i8* @ath5k_get_rate_hw_value(i32 %117, %struct.ieee80211_tx_info* %118, %struct.ath5k_buf* %119, i32 0)
  store i8* %120, i8** %23, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %15, align 4
  %124 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %125 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = icmp ne %struct.TYPE_8__* %127, null
  br i1 %128, label %129, label %146

129:                                              ; preds = %108
  %130 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %131 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %17, align 4
  %136 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %129, %108
  %147 = load i32, i32* %26, align 4
  %148 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %146
  %152 = load i32, i32* @AR5K_TXDESC_RTSENA, align 4
  %153 = load i32, i32* %16, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %16, align 4
  %155 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %156 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %159 = call %struct.TYPE_13__* @ieee80211_get_rts_cts_rate(i32 %157, %struct.ieee80211_tx_info* %158)
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %24, align 8
  %162 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %163 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %166 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %171 = call i32 @ieee80211_rts_duration(i32 %164, i32 %168, i32 %169, %struct.ieee80211_tx_info* %170)
  %172 = call i8* @le16_to_cpu(i32 %171)
  store i8* %172, i8** %25, align 8
  br label %173

173:                                              ; preds = %151, %146
  %174 = load i32, i32* %26, align 4
  %175 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %173
  %179 = load i32, i32* @AR5K_TXDESC_CTSENA, align 4
  %180 = load i32, i32* %16, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %16, align 4
  %182 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %183 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %186 = call %struct.TYPE_13__* @ieee80211_get_rts_cts_rate(i32 %184, %struct.ieee80211_tx_info* %185)
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %24, align 8
  %189 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %190 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %193 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %198 = call i32 @ieee80211_ctstoself_duration(i32 %191, i32 %195, i32 %196, %struct.ieee80211_tx_info* %197)
  %199 = call i8* @le16_to_cpu(i32 %198)
  store i8* %199, i8** %25, align 8
  br label %200

200:                                              ; preds = %178, %173
  %201 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %202 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %201, i32 0, i32 0
  %203 = load i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*)*, i32 (%struct.ath5k_hw*, %struct.ath5k_desc*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*)** %202, align 8
  %204 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %205 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %12, align 8
  %206 = bitcast %struct.ath5k_desc.0* %205 to %struct.ath5k_desc*
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %209 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %208)
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %212 = call i32 @get_hw_packet_type(%struct.sk_buff* %211)
  %213 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %214 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %216, 2
  %218 = load i8*, i8** %23, align 8
  %219 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %220 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %219, i32 0, i32 3
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %17, align 4
  %226 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %227 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = load i8*, i8** %24, align 8
  %231 = load i8*, i8** %25, align 8
  %232 = call i32 %203(%struct.ath5k_hw* %204, %struct.ath5k_desc* %206, i32 %207, i32 %209, i32 %210, i32 %212, i32 %217, i8* %218, i32 %224, i32 %225, i32 %228, i32 %229, i8* %230, i8* %231)
  store i32 %232, i32* %22, align 4
  %233 = load i32, i32* %22, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %200
  br label %356

236:                                              ; preds = %200
  %237 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %238 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %303

242:                                              ; preds = %236
  %243 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %244 = call i32 @memset(i32* %243, i32 0, i32 12)
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %246 = call i32 @memset(i32* %245, i32 0, i32 12)
  store i32 0, i32* %21, align 4
  br label %247

247:                                              ; preds = %284, %242
  %248 = load i32, i32* %21, align 4
  %249 = icmp slt i32 %248, 3
  br i1 %249, label %250, label %287

250:                                              ; preds = %247
  %251 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %252 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %255 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %256 = load i32, i32* %21, align 4
  %257 = call %struct.ieee80211_rate* @ath5k_get_rate(i32 %253, %struct.ieee80211_tx_info* %254, %struct.ath5k_buf* %255, i32 %256)
  store %struct.ieee80211_rate* %257, %struct.ieee80211_rate** %18, align 8
  %258 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %18, align 8
  %259 = icmp ne %struct.ieee80211_rate* %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %250
  br label %287

261:                                              ; preds = %250
  %262 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %263 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %266 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %267 = load i32, i32* %21, align 4
  %268 = call i8* @ath5k_get_rate_hw_value(i32 %264, %struct.ieee80211_tx_info* %265, %struct.ath5k_buf* %266, i32 %267)
  %269 = ptrtoint i8* %268 to i32
  %270 = load i32, i32* %21, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %271
  store i32 %269, i32* %272, align 4
  %273 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %274 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %273, i32 0, i32 3
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = load i32, i32* %21, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %21, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %282
  store i32 %280, i32* %283, align 4
  br label %284

284:                                              ; preds = %261
  %285 = load i32, i32* %21, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %21, align 4
  br label %247

287:                                              ; preds = %260, %247
  %288 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %289 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %12, align 8
  %290 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @ath5k_hw_setup_mrr_tx_desc(%struct.ath5k_hw* %288, %struct.ath5k_desc.0* %289, i32 %291, i32 %293, i32 %295, i32 %297, i32 %299, i32 %301)
  br label %303

303:                                              ; preds = %287, %236
  %304 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %12, align 8
  %305 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %304, i32 0, i32 0
  store i64 0, i64* %305, align 8
  %306 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %307 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %12, align 8
  %310 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 8
  %311 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %312 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %311, i32 0, i32 0
  %313 = call i32 @spin_lock_bh(i32* %312)
  %314 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %315 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %314, i32 0, i32 2
  %316 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %317 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %316, i32 0, i32 4
  %318 = call i32 @list_add_tail(i32* %315, i32* %317)
  %319 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %320 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %320, align 8
  %323 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %324 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %323, i32 0, i32 2
  %325 = load i64*, i64** %324, align 8
  %326 = icmp eq i64* %325, null
  br i1 %326, label %327, label %336

327:                                              ; preds = %303
  %328 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %329 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %330 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %333 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = call i32 @ath5k_hw_set_txdp(%struct.ath5k_hw* %328, i32 %331, i64 %334)
  br label %343

336:                                              ; preds = %303
  %337 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %338 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %341 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %340, i32 0, i32 2
  %342 = load i64*, i64** %341, align 8
  store i64 %339, i64* %342, align 8
  br label %343

343:                                              ; preds = %336, %327
  %344 = load %struct.ath5k_desc.0*, %struct.ath5k_desc.0** %12, align 8
  %345 = getelementptr inbounds %struct.ath5k_desc.0, %struct.ath5k_desc.0* %344, i32 0, i32 0
  %346 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %347 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %346, i32 0, i32 2
  store i64* %345, i64** %347, align 8
  %348 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %349 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %350 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @ath5k_hw_start_tx_dma(%struct.ath5k_hw* %348, i32 %351)
  %353 = load %struct.ath5k_txq*, %struct.ath5k_txq** %9, align 8
  %354 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %353, i32 0, i32 0
  %355 = call i32 @spin_unlock_bh(i32* %354)
  store i32 0, i32* %6, align 4
  br label %369

356:                                              ; preds = %235, %94
  %357 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %358 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.ath5k_buf*, %struct.ath5k_buf** %8, align 8
  %361 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %364 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @DMA_TO_DEVICE, align 4
  %367 = call i32 @dma_unmap_single(i32 %359, i32 %362, i32 %365, i32 %366)
  %368 = load i32, i32* %22, align 4
  store i32 %368, i32* %6, align 4
  br label %369

369:                                              ; preds = %356, %343, %60
  %370 = load i32, i32* %6, align 4
  ret i32 %370
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @ieee80211_get_tx_rates(i32, i32*, %struct.sk_buff*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local %struct.ieee80211_rate* @ath5k_get_rate(i32, %struct.ieee80211_tx_info*, %struct.ath5k_buf*, i32) #1

declare dso_local i8* @ath5k_get_rate_hw_value(i32, %struct.ieee80211_tx_info*, %struct.ath5k_buf*, i32) #1

declare dso_local %struct.TYPE_13__* @ieee80211_get_rts_cts_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_rts_duration(i32, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_ctstoself_duration(i32, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @get_hw_packet_type(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath5k_hw_setup_mrr_tx_desc(%struct.ath5k_hw*, %struct.ath5k_desc.0*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ath5k_hw_set_txdp(%struct.ath5k_hw*, i32, i64) #1

declare dso_local i32 @ath5k_hw_start_tx_dma(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
