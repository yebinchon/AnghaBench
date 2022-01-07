; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_free_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_free_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32 }
%struct.mlx4_en_tx_ring = type { i32, %struct.mlx4_wqe_data_seg*, %struct.mlx4_en_tx_info* }
%struct.mlx4_wqe_data_seg = type { i32, i32 }
%struct.mlx4_en_tx_info = type { i32, i32, i32, i32, i32, i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mlx4_en_tx_desc = type { i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@LOG_TXBB_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_free_tx_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_tx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_en_tx_info*, align 8
  %12 = alloca %struct.mlx4_en_tx_desc*, align 8
  %13 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.skb_shared_hwtstamps, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 2
  %21 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %21, i64 %23
  store %struct.mlx4_en_tx_info* %24, %struct.mlx4_en_tx_info** %11, align 8
  %25 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %25, i32 0, i32 1
  %27 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @LOG_TXBB_SIZE, align 4
  %30 = shl i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %27, i64 %31
  %33 = bitcast %struct.mlx4_wqe_data_seg* %32 to %struct.mlx4_en_tx_desc*
  store %struct.mlx4_en_tx_desc* %33, %struct.mlx4_en_tx_desc** %12, align 8
  %34 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %12, align 8
  %35 = bitcast %struct.mlx4_en_tx_desc* %34 to i8*
  %36 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %35, i64 %39
  %41 = bitcast i8* %40 to %struct.mlx4_wqe_data_seg*
  store %struct.mlx4_wqe_data_seg* %41, %struct.mlx4_wqe_data_seg** %13, align 8
  %42 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %42, i32 0, i32 1
  %44 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %43, align 8
  %45 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %44, i64 %48
  %50 = bitcast %struct.mlx4_wqe_data_seg* %49 to i8*
  store i8* %50, i8** %14, align 8
  %51 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %51, i32 0, i32 7
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %15, align 8
  %54 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %16, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = call i32 @prefetchw(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %5
  %64 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @mlx4_en_fill_hwtstamps(i32 %66, %struct.skb_shared_hwtstamps* %18, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %70 = call i32 @skb_tstamp_tx(%struct.sk_buff* %69, %struct.skb_shared_hwtstamps* %18)
  br label %71

71:                                               ; preds = %63, %5
  %72 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %198, label %76

76:                                               ; preds = %71
  %77 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %92 = call i32 @dma_unmap_single(i32 %84, i32 %87, i32 %90, i32 %91)
  br label %105

93:                                               ; preds = %76
  %94 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %104 = call i32 @dma_unmap_page(i32 %96, i32 %99, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %93, %81
  %106 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %12, align 8
  %107 = bitcast %struct.mlx4_en_tx_desc* %106 to i8*
  %108 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @LOG_TXBB_SIZE, align 4
  %112 = shl i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr i8, i8* %107, i64 %113
  %115 = load i8*, i8** %14, align 8
  %116 = icmp ule i8* %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @likely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %105
  store i32 1, i32* %17, align 4
  br label %121

121:                                              ; preds = %142, %120
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %121
  %126 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %127 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %126, i32 1
  store %struct.mlx4_wqe_data_seg* %127, %struct.mlx4_wqe_data_seg** %13, align 8
  %128 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %129 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %132 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @be64_to_cpu(i32 %133)
  %135 = trunc i64 %134 to i32
  %136 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %137 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @be32_to_cpu(i32 %138)
  %140 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %141 = call i32 @dma_unmap_page(i32 %130, i32 %135, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %125
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  br label %121

145:                                              ; preds = %121
  br label %197

146:                                              ; preds = %105
  %147 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %148 = bitcast %struct.mlx4_wqe_data_seg* %147 to i8*
  %149 = load i8*, i8** %14, align 8
  %150 = icmp uge i8* %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %153 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %152, i32 0, i32 1
  %154 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %153, align 8
  %155 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %156 = bitcast %struct.mlx4_wqe_data_seg* %155 to i8*
  %157 = load i8*, i8** %14, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %154, i64 %160
  store %struct.mlx4_wqe_data_seg* %161, %struct.mlx4_wqe_data_seg** %13, align 8
  br label %162

162:                                              ; preds = %151, %146
  store i32 1, i32* %17, align 4
  br label %163

163:                                              ; preds = %193, %162
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %16, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %196

167:                                              ; preds = %163
  %168 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %169 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %168, i32 1
  store %struct.mlx4_wqe_data_seg* %169, %struct.mlx4_wqe_data_seg** %13, align 8
  %170 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %171 = bitcast %struct.mlx4_wqe_data_seg* %170 to i8*
  %172 = load i8*, i8** %14, align 8
  %173 = icmp uge i8* %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %7, align 8
  %176 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %175, i32 0, i32 1
  %177 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %176, align 8
  store %struct.mlx4_wqe_data_seg* %177, %struct.mlx4_wqe_data_seg** %13, align 8
  br label %178

178:                                              ; preds = %174, %167
  %179 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %180 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %183 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @be64_to_cpu(i32 %184)
  %186 = trunc i64 %185 to i32
  %187 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %13, align 8
  %188 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @be32_to_cpu(i32 %189)
  %191 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %192 = call i32 @dma_unmap_page(i32 %181, i32 %186, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %178
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  br label %163

196:                                              ; preds = %163
  br label %197

197:                                              ; preds = %196, %145
  br label %198

198:                                              ; preds = %197, %71
  %199 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @napi_consume_skb(%struct.sk_buff* %199, i32 %200)
  %202 = load %struct.mlx4_en_tx_info*, %struct.mlx4_en_tx_info** %11, align 8
  %203 = getelementptr inbounds %struct.mlx4_en_tx_info, %struct.mlx4_en_tx_info* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  ret i32 %204
}

declare dso_local i32 @prefetchw(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx4_en_fill_hwtstamps(i32, %struct.skb_shared_hwtstamps*, i32) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @napi_consume_skb(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
