; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.dma_desc*, i32, %struct.ring_info* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_desc = type { i8*, i8* }
%struct.ring_info = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { i64 }
%struct.rx_header = type { i64, i64 }

@B44_RX_RING_SIZE = common dso_local global i32 0, align 4
@RX_PKT_BUF_SZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@DESC_CTRL_LEN = common dso_local global i32 0, align 4
@DESC_CTRL_EOT = common dso_local global i32 0, align 4
@B44_FLAG_RX_RING_HACK = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*, i32, i32)* @b44_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_alloc_rx_skb(%struct.b44* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b44*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_desc*, align 8
  %9 = alloca %struct.ring_info*, align 8
  %10 = alloca %struct.ring_info*, align 8
  %11 = alloca %struct.rx_header*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ring_info* null, %struct.ring_info** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.b44*, %struct.b44** %5, align 8
  %20 = getelementptr inbounds %struct.b44, %struct.b44* %19, i32 0, i32 7
  %21 = load %struct.ring_info*, %struct.ring_info** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %21, i64 %23
  store %struct.ring_info* %24, %struct.ring_info** %9, align 8
  br label %25

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.b44*, %struct.b44** %5, align 8
  %31 = getelementptr inbounds %struct.b44, %struct.b44* %30, i32 0, i32 7
  %32 = load %struct.ring_info*, %struct.ring_info** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %32, i64 %34
  store %struct.ring_info* %35, %struct.ring_info** %10, align 8
  %36 = load %struct.b44*, %struct.b44** %5, align 8
  %37 = getelementptr inbounds %struct.b44, %struct.b44* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %40 = call %struct.sk_buff* @netdev_alloc_skb(i32 %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %12, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = icmp eq %struct.sk_buff* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %232

46:                                               ; preds = %25
  %47 = load %struct.b44*, %struct.b44** %5, align 8
  %48 = getelementptr inbounds %struct.b44, %struct.b44* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i64 @dma_map_single(i32 %51, i64 %54, i32 %55, i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load %struct.b44*, %struct.b44** %5, align 8
  %59 = getelementptr inbounds %struct.b44, %struct.b44* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %13, align 8
  %64 = call i64 @dma_mapping_error(i32 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %46
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = call i64 @DMA_BIT_MASK(i32 30)
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %159

73:                                               ; preds = %66, %46
  %74 = load %struct.b44*, %struct.b44** %5, align 8
  %75 = getelementptr inbounds %struct.b44, %struct.b44* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %13, align 8
  %80 = call i64 @dma_mapping_error(i32 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %73
  %83 = load %struct.b44*, %struct.b44** %5, align 8
  %84 = getelementptr inbounds %struct.b44, %struct.b44* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %13, align 8
  %89 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %91 = call i32 @dma_unmap_single(i32 %87, i64 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %73
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %93)
  %95 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = load i32, i32* @GFP_DMA, align 4
  %98 = or i32 %96, %97
  %99 = call %struct.sk_buff* @alloc_skb(i32 %95, i32 %98)
  store %struct.sk_buff* %99, %struct.sk_buff** %12, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %101 = icmp eq %struct.sk_buff* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %232

105:                                              ; preds = %92
  %106 = load %struct.b44*, %struct.b44** %5, align 8
  %107 = getelementptr inbounds %struct.b44, %struct.b44* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i64 @dma_map_single(i32 %110, i64 %113, i32 %114, i32 %115)
  store i64 %116, i64* %13, align 8
  %117 = load %struct.b44*, %struct.b44** %5, align 8
  %118 = getelementptr inbounds %struct.b44, %struct.b44* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @dma_mapping_error(i32 %121, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %105
  %126 = load i64, i64* %13, align 8
  %127 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = call i64 @DMA_BIT_MASK(i32 30)
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %125, %105
  %133 = load %struct.b44*, %struct.b44** %5, align 8
  %134 = getelementptr inbounds %struct.b44, %struct.b44* %133, i32 0, i32 3
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %13, align 8
  %139 = call i64 @dma_mapping_error(i32 %137, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %132
  %142 = load %struct.b44*, %struct.b44** %5, align 8
  %143 = getelementptr inbounds %struct.b44, %struct.b44* %142, i32 0, i32 3
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %13, align 8
  %148 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %149 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %150 = call i32 @dma_unmap_single(i32 %146, i64 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %141, %132
  %152 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %153 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %152)
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %232

156:                                              ; preds = %125
  %157 = load %struct.b44*, %struct.b44** %5, align 8
  %158 = getelementptr inbounds %struct.b44, %struct.b44* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %156, %66
  %160 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.rx_header*
  store %struct.rx_header* %163, %struct.rx_header** %11, align 8
  %164 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %165 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.rx_header*, %struct.rx_header** %11, align 8
  %167 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %169 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %170 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %169, i32 0, i32 0
  store %struct.sk_buff* %168, %struct.sk_buff** %170, align 8
  %171 = load i64, i64* %13, align 8
  %172 = load %struct.ring_info*, %struct.ring_info** %10, align 8
  %173 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %175 = icmp ne %struct.ring_info* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %159
  %177 = load %struct.ring_info*, %struct.ring_info** %9, align 8
  %178 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %177, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %178, align 8
  br label %179

179:                                              ; preds = %176, %159
  %180 = load i32, i32* @DESC_CTRL_LEN, align 4
  %181 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %14, align 4
  %184 = load i32, i32* @B44_RX_RING_SIZE, align 4
  %185 = sub nsw i32 %184, 1
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %179
  %188 = load i32, i32* @DESC_CTRL_EOT, align 4
  %189 = load i32, i32* %15, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %15, align 4
  br label %191

191:                                              ; preds = %187, %179
  %192 = load %struct.b44*, %struct.b44** %5, align 8
  %193 = getelementptr inbounds %struct.b44, %struct.b44* %192, i32 0, i32 5
  %194 = load %struct.dma_desc*, %struct.dma_desc** %193, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %194, i64 %196
  store %struct.dma_desc* %197, %struct.dma_desc** %8, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i8* @cpu_to_le32(i32 %198)
  %200 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %201 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  %202 = load i64, i64* %13, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.b44*, %struct.b44** %5, align 8
  %205 = getelementptr inbounds %struct.b44, %struct.b44* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %203, %206
  %208 = call i8* @cpu_to_le32(i32 %207)
  %209 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %210 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = load %struct.b44*, %struct.b44** %5, align 8
  %212 = getelementptr inbounds %struct.b44, %struct.b44* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @B44_FLAG_RX_RING_HACK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %191
  %218 = load %struct.b44*, %struct.b44** %5, align 8
  %219 = getelementptr inbounds %struct.b44, %struct.b44* %218, i32 0, i32 3
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = load %struct.b44*, %struct.b44** %5, align 8
  %222 = getelementptr inbounds %struct.b44, %struct.b44* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = mul i64 %225, 16
  %227 = trunc i64 %226 to i32
  %228 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %229 = call i32 @b44_sync_dma_desc_for_device(%struct.TYPE_2__* %220, i32 %223, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %217, %191
  %231 = load i32, i32* @RX_PKT_BUF_SZ, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %230, %151, %102, %43
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i64 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @b44_sync_dma_desc_for_device(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
