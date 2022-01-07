; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { %struct.ath10k*, i32, i32, %struct.ath10k_htc_ep* }
%struct.ath10k = type { i64, %struct.TYPE_3__, %struct.device* }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }
%struct.ath10k_htc_ep = type { i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ath10k.0*)* }
%struct.ath10k.0 = type opaque
%struct.sk_buff = type { i32, i32 }
%struct.ath10k_skb_cb = type { i32, i32 }
%struct.ath10k_hif_sg_item = type { i32, i32, i32, %struct.sk_buff*, i32 }

@ATH10K_STATE_WEDGED = common dso_local global i64 0, align 8
@ECOMM = common dso_local global i32 0, align 4
@ATH10K_HTC_EP_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid endpoint id: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ATH10K_DBG_HTC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"htc insufficient credits ep %d required %d available %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"htc ep %d consumed %d credits (total %d)\0A\00", align 1
@ATH10K_DEV_TYPE_HL = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"htc ep %d reverted %d credits back (total %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htc_send(%struct.ath10k_htc* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_htc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.ath10k_htc_ep*, align 8
  %10 = alloca %struct.ath10k_skb_cb*, align 8
  %11 = alloca %struct.ath10k_hif_sg_item, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %15 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %16 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %15, i32 0, i32 0
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %8, align 8
  %18 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %19 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %18, i32 0, i32 3
  %20 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %20, i64 %22
  store %struct.ath10k_htc_ep* %23, %struct.ath10k_htc_ep** %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %24)
  store %struct.ath10k_skb_cb* %25, %struct.ath10k_skb_cb** %10, align 8
  %26 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %27 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %26, i32 0, i32 0
  %28 = load %struct.ath10k*, %struct.ath10k** %27, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 2
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %12, align 8
  store i32 0, i32* %13, align 4
  %31 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %32 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %31, i32 0, i32 0
  %33 = load %struct.ath10k*, %struct.ath10k** %32, align 8
  %34 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATH10K_STATE_WEDGED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @ECOMM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %235

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ATH10K_HTC_EP_COUNT, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ath10k_warn(%struct.ath10k* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %235

51:                                               ; preds = %41
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call i32 @skb_push(%struct.sk_buff* %52, i32 4)
  %54 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %55 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %63 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DIV_ROUND_UP(i32 %61, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %67 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %70 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %58
  %75 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %76 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %80 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ath10k_dbg(%struct.ath10k* %75, i32 %76, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %81)
  %83 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %84 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock_bh(i32* %84)
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  br label %231

88:                                               ; preds = %58
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %91 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %95 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %99 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ath10k_dbg(%struct.ath10k* %94, i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97, i32 %100)
  %102 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %103 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock_bh(i32* %103)
  br label %105

105:                                              ; preds = %88, %51
  %106 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = call i32 @ath10k_htc_prepare_tx_skb(%struct.ath10k_htc_ep* %106, %struct.sk_buff* %107)
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %111 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %113 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ATH10K_DEV_TYPE_HL, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %105
  %119 = load %struct.device*, %struct.device** %12, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DMA_TO_DEVICE, align 4
  %127 = call i32 @dma_map_single(%struct.device* %119, i32 %122, i32 %125, i32 %126)
  %128 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %129 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.device*, %struct.device** %12, align 8
  %131 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %132 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dma_mapping_error(%struct.device* %130, i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %118
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %14, align 4
  br label %189

140:                                              ; preds = %118
  br label %141

141:                                              ; preds = %140, %105
  %142 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %143 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %11, i32 0, i32 4
  store i32 %144, i32* %145, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %147 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %11, i32 0, i32 3
  store %struct.sk_buff* %146, %struct.sk_buff** %147, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %11, i32 0, i32 2
  store i32 %150, i32* %151, align 8
  %152 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %153 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %11, i32 0, i32 1
  store i32 %154, i32* %155, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.ath10k_hif_sg_item, %struct.ath10k_hif_sg_item* %11, i32 0, i32 0
  store i32 %158, i32* %159, align 8
  %160 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %161 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %160, i32 0, i32 0
  %162 = load %struct.ath10k*, %struct.ath10k** %161, align 8
  %163 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %164 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ath10k_hif_tx_sg(%struct.ath10k* %162, i32 %165, %struct.ath10k_hif_sg_item* %11, i32 1)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %141
  br label %171

170:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %235

171:                                              ; preds = %169
  %172 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %173 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ATH10K_DEV_TYPE_HL, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %171
  %179 = load %struct.device*, %struct.device** %12, align 8
  %180 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %10, align 8
  %181 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @DMA_TO_DEVICE, align 4
  %187 = call i32 @dma_unmap_single(%struct.device* %179, i32 %182, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %178, %171
  br label %189

189:                                              ; preds = %188, %137
  %190 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %191 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %230

194:                                              ; preds = %189
  %195 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %196 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %195, i32 0, i32 1
  %197 = call i32 @spin_lock_bh(i32* %196)
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %200 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %204 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %208 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ath10k_dbg(%struct.ath10k* %203, i32 %204, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %205, i32 %206, i32 %209)
  %211 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %212 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %211, i32 0, i32 1
  %213 = call i32 @spin_unlock_bh(i32* %212)
  %214 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %215 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32 (%struct.ath10k.0*)*, i32 (%struct.ath10k.0*)** %216, align 8
  %218 = icmp ne i32 (%struct.ath10k.0*)* %217, null
  br i1 %218, label %219, label %229

219:                                              ; preds = %194
  %220 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %9, align 8
  %221 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32 (%struct.ath10k.0*)*, i32 (%struct.ath10k.0*)** %222, align 8
  %224 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %225 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %224, i32 0, i32 0
  %226 = load %struct.ath10k*, %struct.ath10k** %225, align 8
  %227 = bitcast %struct.ath10k* %226 to %struct.ath10k.0*
  %228 = call i32 %223(%struct.ath10k.0* %227)
  br label %229

229:                                              ; preds = %219, %194
  br label %230

230:                                              ; preds = %229, %189
  br label %231

231:                                              ; preds = %230, %74
  %232 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %233 = call i32 @skb_pull(%struct.sk_buff* %232, i32 4)
  %234 = load i32, i32* %14, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %231, %170, %45, %38
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_htc_prepare_tx_skb(%struct.ath10k_htc_ep*, %struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @ath10k_hif_tx_sg(%struct.ath10k*, i32, %struct.ath10k_hif_sg_item*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
