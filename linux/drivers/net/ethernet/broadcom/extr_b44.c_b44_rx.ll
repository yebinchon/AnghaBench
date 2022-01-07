; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, %struct.ring_info* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ring_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.rx_header = type { i32, i32 }

@B44_DMARX_STAT = common dso_local global i32 0, align 4
@DMARX_STAT_CDMASK = common dso_local global i32 0, align 4
@RX_PKT_BUF_SZ = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_PKT_OFFSET = common dso_local global i64 0, align 8
@RX_FLAG_ERRORS = common dso_local global i32 0, align 4
@RX_COPY_THRESHOLD = common dso_local global i64 0, align 8
@B44_RX_RING_SIZE = common dso_local global i32 0, align 4
@B44_DMARX_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*, i32)* @b44_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_rx(%struct.b44* %0, i32 %1) #0 {
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ring_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_header*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.b44* %0, %struct.b44** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.b44*, %struct.b44** %3, align 8
  %17 = load i32, i32* @B44_DMARX_STAT, align 4
  %18 = call i32 @br32(%struct.b44* %16, i32 %17)
  %19 = load i32, i32* @DMARX_STAT_CDMASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.b44*, %struct.b44** %3, align 8
  %26 = getelementptr inbounds %struct.b44, %struct.b44* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %202, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %217

37:                                               ; preds = %35
  %38 = load %struct.b44*, %struct.b44** %3, align 8
  %39 = getelementptr inbounds %struct.b44, %struct.b44* %38, i32 0, i32 6
  %40 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %40, i64 %42
  store %struct.ring_info* %43, %struct.ring_info** %8, align 8
  %44 = load %struct.ring_info*, %struct.ring_info** %8, align 8
  %45 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %44, i32 0, i32 1
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %9, align 8
  %47 = load %struct.ring_info*, %struct.ring_info** %8, align 8
  %48 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load %struct.b44*, %struct.b44** %3, align 8
  %51 = getelementptr inbounds %struct.b44, %struct.b44* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* @RX_PKT_BUF_SZ, align 8
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @dma_sync_single_for_cpu(i32 %54, i32 %55, i64 %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.rx_header*
  store %struct.rx_header* %62, %struct.rx_header** %11, align 8
  %63 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %64 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le16_to_cpu(i32 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @RX_PKT_BUF_SZ, align 8
  %69 = load i64, i64* @RX_PKT_OFFSET, align 8
  %70 = sub nsw i64 %68, %69
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %37
  %73 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %74 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RX_FLAG_ERRORS, align 4
  %77 = call i32 @cpu_to_le16(i32 %76)
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %72, %37
  br label %81

81:                                               ; preds = %141, %119, %80
  %82 = load %struct.b44*, %struct.b44** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.b44*, %struct.b44** %3, align 8
  %85 = getelementptr inbounds %struct.b44, %struct.b44* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @b44_recycle_rx(%struct.b44* %82, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %173, %81
  %89 = load %struct.b44*, %struct.b44** %3, align 8
  %90 = getelementptr inbounds %struct.b44, %struct.b44* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %202

96:                                               ; preds = %72
  %97 = load i64, i64* %12, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %114, %99
  %101 = call i32 @udelay(i32 2)
  %102 = call i32 (...) @barrier()
  %103 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %104 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le16_to_cpu(i32 %105)
  store i64 %106, i64* %12, align 8
  br label %107

107:                                              ; preds = %100
  %108 = load i64, i64* %12, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  %113 = icmp slt i32 %111, 5
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  br i1 %115, label %100, label %116

116:                                              ; preds = %114
  %117 = load i64, i64* %12, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %81

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %96
  %122 = load i64, i64* %12, align 8
  %123 = sub nsw i64 %122, 4
  store i64 %123, i64* %12, align 8
  %124 = load %struct.b44*, %struct.b44** %3, align 8
  %125 = getelementptr inbounds %struct.b44, %struct.b44* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %160, label %128

128:                                              ; preds = %121
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @RX_COPY_THRESHOLD, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %128
  %133 = load %struct.b44*, %struct.b44** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.b44*, %struct.b44** %3, align 8
  %136 = getelementptr inbounds %struct.b44, %struct.b44* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @b44_alloc_rx_skb(%struct.b44* %133, i32 %134, i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %81

142:                                              ; preds = %132
  %143 = load %struct.b44*, %struct.b44** %3, align 8
  %144 = getelementptr inbounds %struct.b44, %struct.b44* %143, i32 0, i32 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %151 = call i32 @dma_unmap_single(i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* @RX_PKT_OFFSET, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @skb_put(%struct.sk_buff* %152, i64 %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %158 = load i64, i64* @RX_PKT_OFFSET, align 8
  %159 = call i32 @skb_pull(%struct.sk_buff* %157, i64 %158)
  br label %186

160:                                              ; preds = %128, %121
  %161 = load %struct.b44*, %struct.b44** %3, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.b44*, %struct.b44** %3, align 8
  %164 = getelementptr inbounds %struct.b44, %struct.b44* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @b44_recycle_rx(%struct.b44* %161, i32 %162, i32 %165)
  %167 = load %struct.b44*, %struct.b44** %3, align 8
  %168 = getelementptr inbounds %struct.b44, %struct.b44* %167, i32 0, i32 3
  %169 = load i64, i64* %12, align 8
  %170 = call %struct.sk_buff* @napi_alloc_skb(i32* %168, i64 %169)
  store %struct.sk_buff* %170, %struct.sk_buff** %15, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %172 = icmp eq %struct.sk_buff* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %160
  br label %88

174:                                              ; preds = %160
  %175 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %176 = load i64, i64* %12, align 8
  %177 = call i32 @skb_put(%struct.sk_buff* %175, i64 %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %179 = load i64, i64* @RX_PKT_OFFSET, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %12, align 8
  %184 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %178, i64 %179, i64 %182, i64 %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %185, %struct.sk_buff** %9, align 8
  br label %186

186:                                              ; preds = %174, %142
  %187 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %188 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %190 = load %struct.b44*, %struct.b44** %3, align 8
  %191 = getelementptr inbounds %struct.b44, %struct.b44* %190, i32 0, i32 2
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = call i32 @eth_type_trans(%struct.sk_buff* %189, %struct.TYPE_6__* %192)
  %194 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %195 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = call i32 @netif_receive_skb(%struct.sk_buff* %196)
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %5, align 4
  %200 = load i32, i32* %4, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %186, %88
  %203 = load %struct.b44*, %struct.b44** %3, align 8
  %204 = getelementptr inbounds %struct.b44, %struct.b44* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %208 = sub nsw i32 %207, 1
  %209 = and i32 %206, %208
  %210 = load %struct.b44*, %struct.b44** %3, align 8
  %211 = getelementptr inbounds %struct.b44, %struct.b44* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  %214 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %215 = sub nsw i32 %214, 1
  %216 = and i32 %213, %215
  store i32 %216, i32* %6, align 4
  br label %28

217:                                              ; preds = %35
  %218 = load i32, i32* %6, align 4
  %219 = load %struct.b44*, %struct.b44** %3, align 8
  %220 = getelementptr inbounds %struct.b44, %struct.b44* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.b44*, %struct.b44** %3, align 8
  %222 = load i32, i32* @B44_DMARX_PTR, align 4
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 4
  %226 = trunc i64 %225 to i32
  %227 = call i32 @bw32(%struct.b44* %221, i32 %222, i32 %226)
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @b44_recycle_rx(%struct.b44*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @b44_alloc_rx_skb(%struct.b44*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i64) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i64, i64, i64) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
