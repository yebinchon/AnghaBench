; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_tx_agg_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8152_tx_agg_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i64, i32, i32, %struct.TYPE_7__*, %struct.sk_buff_head, i32 }
%struct.TYPE_7__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tx_agg = type { i32, i32*, i64, i64 }
%struct.tx_desc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i64 }

@agg_buf_sz = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@DELL_TB_RX_AGG_BUG = common dso_local global i32 0, align 4
@write_bulk_callback = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, %struct.tx_agg*)* @r8152_tx_agg_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8152_tx_agg_fill(%struct.r8152* %0, %struct.tx_agg* %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca %struct.tx_agg*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tx_desc*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.net_device_stats*, align 8
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store %struct.tx_agg* %1, %struct.tx_agg** %4, align 8
  %15 = load %struct.r8152*, %struct.r8152** %3, align 8
  %16 = getelementptr inbounds %struct.r8152, %struct.r8152* %15, i32 0, i32 4
  store %struct.sk_buff_head* %16, %struct.sk_buff_head** %6, align 8
  %17 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %22 = call i32 @skb_queue_splice_init(%struct.sk_buff_head* %21, %struct.sk_buff_head* %5)
  %23 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %27 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %30 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %32 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @agg_buf_sz, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %150, %93, %75, %2
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* @ETH_ZLEN, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %151

41:                                               ; preds = %34
  %42 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %5)
  store %struct.sk_buff* %42, %struct.sk_buff** %11, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %151

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = call i32 @__skb_queue_head(%struct.sk_buff_head* %5, %struct.sk_buff* %57)
  br label %151

59:                                               ; preds = %46
  %60 = load i32*, i32** %9, align 8
  %61 = call i32* @tx_agg_align(i32* %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = bitcast i32* %62 to %struct.tx_desc*
  store %struct.tx_desc* %63, %struct.tx_desc** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = call i64 @skb_transport_offset(%struct.sk_buff* %64)
  store i64 %65, i64* %13, align 8
  %66 = load %struct.r8152*, %struct.r8152** %3, align 8
  %67 = load %struct.tx_desc*, %struct.tx_desc** %10, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @r8152_tx_csum(%struct.r8152* %66, %struct.tx_desc* %67, %struct.sk_buff* %68, i32 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %59
  %76 = load %struct.r8152*, %struct.r8152** %3, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = call i32 @r8152_csum_workaround(%struct.r8152* %76, %struct.sk_buff* %77, %struct.sk_buff_head* %5)
  br label %34

79:                                               ; preds = %59
  %80 = load %struct.tx_desc*, %struct.tx_desc** %10, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = call i32 @rtl_tx_vlan_tag(%struct.tx_desc* %80, %struct.sk_buff* %81)
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32* %84, i32** %9, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i64 @skb_copy_bits(%struct.sk_buff* %88, i32 0, i32* %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %79
  %94 = load %struct.r8152*, %struct.r8152** %3, align 8
  %95 = getelementptr inbounds %struct.r8152, %struct.r8152* %94, i32 0, i32 3
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store %struct.net_device_stats* %97, %struct.net_device_stats** %14, align 8
  %98 = load %struct.net_device_stats*, %struct.net_device_stats** %14, align 8
  %99 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %102)
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 -4
  store i32* %105, i32** %9, align 8
  br label %34

106:                                              ; preds = %79
  %107 = load i32, i32* %12, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %114 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %106
  br label %124

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123, %122
  %125 = phi i64 [ %120, %122 ], [ 1, %123 ]
  %126 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %127 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, %125
  store i64 %129, i64* %127, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %131 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %130)
  %132 = load i32, i32* @agg_buf_sz, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = call i32* @tx_agg_align(i32* %133)
  %135 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %136 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = ptrtoint i32* %134 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = sub nsw i32 %132, %142
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* @DELL_TB_RX_AGG_BUG, align 4
  %145 = load %struct.r8152*, %struct.r8152** %3, align 8
  %146 = getelementptr inbounds %struct.r8152, %struct.r8152* %145, i32 0, i32 5
  %147 = call i64 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %124
  br label %151

150:                                              ; preds = %124
  br label %34

151:                                              ; preds = %149, %56, %45, %34
  %152 = call i32 @skb_queue_empty(%struct.sk_buff_head* %5)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %151
  %155 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %156 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %155, i32 0, i32 0
  %157 = call i32 @spin_lock(i32* %156)
  %158 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %159 = call i32 @skb_queue_splice(%struct.sk_buff_head* %5, %struct.sk_buff_head* %158)
  %160 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %161 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %160, i32 0, i32 0
  %162 = call i32 @spin_unlock(i32* %161)
  br label %163

163:                                              ; preds = %154, %151
  %164 = load %struct.r8152*, %struct.r8152** %3, align 8
  %165 = getelementptr inbounds %struct.r8152, %struct.r8152* %164, i32 0, i32 3
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = call i32 @netif_tx_lock(%struct.TYPE_7__* %166)
  %168 = load %struct.r8152*, %struct.r8152** %3, align 8
  %169 = getelementptr inbounds %struct.r8152, %struct.r8152* %168, i32 0, i32 3
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = call i64 @netif_queue_stopped(%struct.TYPE_7__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %163
  %174 = load %struct.r8152*, %struct.r8152** %3, align 8
  %175 = getelementptr inbounds %struct.r8152, %struct.r8152* %174, i32 0, i32 4
  %176 = call i64 @skb_queue_len(%struct.sk_buff_head* %175)
  %177 = load %struct.r8152*, %struct.r8152** %3, align 8
  %178 = getelementptr inbounds %struct.r8152, %struct.r8152* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %173
  %182 = load %struct.r8152*, %struct.r8152** %3, align 8
  %183 = getelementptr inbounds %struct.r8152, %struct.r8152* %182, i32 0, i32 3
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = call i32 @netif_wake_queue(%struct.TYPE_7__* %184)
  br label %186

186:                                              ; preds = %181, %173, %163
  %187 = load %struct.r8152*, %struct.r8152** %3, align 8
  %188 = getelementptr inbounds %struct.r8152, %struct.r8152* %187, i32 0, i32 3
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = call i32 @netif_tx_unlock(%struct.TYPE_7__* %189)
  %191 = load %struct.r8152*, %struct.r8152** %3, align 8
  %192 = getelementptr inbounds %struct.r8152, %struct.r8152* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @usb_autopm_get_interface_async(i32 %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %186
  br label %238

198:                                              ; preds = %186
  %199 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %200 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.r8152*, %struct.r8152** %3, align 8
  %203 = getelementptr inbounds %struct.r8152, %struct.r8152* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.r8152*, %struct.r8152** %3, align 8
  %206 = getelementptr inbounds %struct.r8152, %struct.r8152* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @usb_sndbulkpipe(i32 %207, i32 2)
  %209 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %210 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %214 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = ptrtoint i32* %212 to i64
  %217 = ptrtoint i32* %215 to i64
  %218 = sub i64 %216, %217
  %219 = sdiv exact i64 %218, 4
  %220 = trunc i64 %219 to i32
  %221 = load i64, i64* @write_bulk_callback, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %224 = call i32 @usb_fill_bulk_urb(i32 %201, i32 %204, i32 %208, i32* %211, i32 %220, i32 %222, %struct.tx_agg* %223)
  %225 = load %struct.tx_agg*, %struct.tx_agg** %4, align 8
  %226 = getelementptr inbounds %struct.tx_agg, %struct.tx_agg* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @GFP_ATOMIC, align 4
  %229 = call i32 @usb_submit_urb(i32 %227, i32 %228)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %198
  %233 = load %struct.r8152*, %struct.r8152** %3, align 8
  %234 = getelementptr inbounds %struct.r8152, %struct.r8152* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @usb_autopm_put_interface_async(i32 %235)
  br label %237

237:                                              ; preds = %232, %198
  br label %238

238:                                              ; preds = %237, %197
  %239 = load i32, i32* %8, align 4
  ret i32 %239
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skb_queue_splice_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_head(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32* @tx_agg_align(i32*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @r8152_tx_csum(%struct.r8152*, %struct.tx_desc*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @r8152_csum_workaround(%struct.r8152*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @rtl_tx_vlan_tag(%struct.tx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @netif_tx_lock(%struct.TYPE_7__*) #1

declare dso_local i64 @netif_queue_stopped(%struct.TYPE_7__*) #1

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @netif_tx_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @usb_autopm_get_interface_async(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32*, i32, i32, %struct.tx_agg*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @usb_autopm_put_interface_async(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
