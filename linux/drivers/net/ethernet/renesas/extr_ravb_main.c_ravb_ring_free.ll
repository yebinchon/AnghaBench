; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ravb_private = type { i32, i32*, i32*, i32**, i32**, i32**, %struct.ravb_ex_rx_desc**, i32*, %struct.ravb_ex_rx_desc**, i32*, i32 }
%struct.ravb_ex_rx_desc = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @ravb_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_ring_free(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ravb_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ravb_ex_rx_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %10)
  store %struct.ravb_private* %11, %struct.ravb_private** %5, align 8
  %12 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %13 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %16 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %15, i32 0, i32 8
  %17 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %17, i64 %19
  %21 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %20, align 8
  %22 = icmp ne %struct.ravb_ex_rx_desc* %21, null
  br i1 %22, label %23, label %111

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %70, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %27 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %25, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %24
  %35 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %36 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %35, i32 0, i32 8
  %37 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %37, i64 %39
  %41 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %41, i64 %43
  store %struct.ravb_ex_rx_desc* %44, %struct.ravb_ex_rx_desc** %9, align 8
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %9, align 8
  %50 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = call i32 @dma_mapping_error(i32 %48, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %34
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %9, align 8
  %61 = getelementptr inbounds %struct.ravb_ex_rx_desc, %struct.ravb_ex_rx_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %65 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %68 = call i32 @dma_unmap_single(i32 %59, i32 %63, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %55, %34
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %24

73:                                               ; preds = %24
  %74 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %75 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul i64 4, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %91 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %90, i32 0, i32 8
  %92 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %92, i64 %94
  %96 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %95, align 8
  %97 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %98 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dma_free_coherent(i32 %88, i32 %89, %struct.ravb_ex_rx_desc* %96, i32 %103)
  %105 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %106 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %105, i32 0, i32 8
  %107 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %107, i64 %109
  store %struct.ravb_ex_rx_desc* null, %struct.ravb_ex_rx_desc** %110, align 8
  br label %111

111:                                              ; preds = %73, %2
  %112 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %113 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %112, i32 0, i32 6
  %114 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %114, i64 %116
  %118 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %117, align 8
  %119 = icmp ne %struct.ravb_ex_rx_desc* %118, null
  br i1 %119, label %120, label %163

120:                                              ; preds = %111
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @ravb_tx_free(%struct.net_device* %121, i32 %122, i32 0)
  %124 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %125 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = mul i64 4, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %7, align 4
  %137 = load %struct.net_device*, %struct.net_device** %3, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %143 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %142, i32 0, i32 6
  %144 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %144, i64 %146
  %148 = load %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %147, align 8
  %149 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %150 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %149, i32 0, i32 7
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @dma_free_coherent(i32 %140, i32 %141, %struct.ravb_ex_rx_desc* %148, i32 %155)
  %157 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %158 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %157, i32 0, i32 6
  %159 = load %struct.ravb_ex_rx_desc**, %struct.ravb_ex_rx_desc*** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.ravb_ex_rx_desc*, %struct.ravb_ex_rx_desc** %159, i64 %161
  store %struct.ravb_ex_rx_desc* null, %struct.ravb_ex_rx_desc** %162, align 8
  br label %163

163:                                              ; preds = %120, %111
  %164 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %165 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %164, i32 0, i32 5
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %200

172:                                              ; preds = %163
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %196, %172
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %176 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %174, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %173
  %184 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %185 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %184, i32 0, i32 5
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @dev_kfree_skb(i32 %194)
  br label %196

196:                                              ; preds = %183
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %173

199:                                              ; preds = %173
  br label %200

200:                                              ; preds = %199, %163
  %201 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %202 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %201, i32 0, i32 5
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 @kfree(i32* %207)
  %209 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %210 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %209, i32 0, i32 5
  %211 = load i32**, i32*** %210, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  store i32* null, i32** %214, align 8
  %215 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %216 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %215, i32 0, i32 4
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @kfree(i32* %221)
  %223 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %224 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %223, i32 0, i32 4
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  store i32* null, i32** %228, align 8
  %229 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %230 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %229, i32 0, i32 3
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @kfree(i32* %235)
  %237 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %238 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %237, i32 0, i32 3
  %239 = load i32**, i32*** %238, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  store i32* null, i32** %242, align 8
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.ravb_ex_rx_desc*, i32) #1

declare dso_local i32 @ravb_tx_free(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
