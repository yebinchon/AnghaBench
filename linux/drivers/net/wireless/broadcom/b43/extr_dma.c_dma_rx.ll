; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_dma_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_dma_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i64, i64, %struct.TYPE_2__*, %struct.b43_dma_ops* }
%struct.TYPE_2__ = type { i32 }
%struct.b43_dma_ops = type { %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)* }
%struct.b43_dmadesc_generic = type { i32 }
%struct.b43_dmadesc_meta = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.b43_rxhdr_fw4 = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"DMA RX: Dropping poisoned buffer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"DMA RX buffer too small (len: %u, buffer: %u, nr-dropped: %d)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"DMA RX: setup_rx_descbuffer() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*, i32*)* @dma_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_rx(%struct.b43_dmaring* %0, i32* %1) #0 {
  %3 = alloca %struct.b43_dmaring*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.b43_dma_ops*, align 8
  %6 = alloca %struct.b43_dmadesc_generic*, align 8
  %7 = alloca %struct.b43_dmadesc_meta*, align 8
  %8 = alloca %struct.b43_rxhdr_fw4*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %17 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %16, i32 0, i32 3
  %18 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %17, align 8
  store %struct.b43_dma_ops* %18, %struct.b43_dma_ops** %5, align 8
  %19 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %5, align 8
  %20 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %19, i32 0, i32 0
  %21 = load %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)*, %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)** %20, align 8
  %22 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.b43_dmadesc_generic* %21(%struct.b43_dmaring* %22, i32 %24, %struct.b43_dmadesc_meta** %7)
  store %struct.b43_dmadesc_generic* %25, %struct.b43_dmadesc_generic** %6, align 8
  %26 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %27 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %7, align 8
  %28 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %31 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sync_descbuffer_for_cpu(%struct.b43_dmaring* %26, i32 %29, i64 %32)
  %34 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %7, align 8
  %35 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %34, i32 0, i32 1
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.b43_rxhdr_fw4*
  store %struct.b43_rxhdr_fw4* %40, %struct.b43_rxhdr_fw4** %8, align 8
  %41 = load %struct.b43_rxhdr_fw4*, %struct.b43_rxhdr_fw4** %8, align 8
  %42 = getelementptr inbounds %struct.b43_rxhdr_fw4, %struct.b43_rxhdr_fw4* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le16_to_cpu(i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %2
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = call i32 @udelay(i32 2)
  %50 = call i32 (...) @barrier()
  %51 = load %struct.b43_rxhdr_fw4*, %struct.b43_rxhdr_fw4** %8, align 8
  %52 = getelementptr inbounds %struct.b43_rxhdr_fw4, %struct.b43_rxhdr_fw4* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le16_to_cpu(i32 %53)
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = icmp slt i32 %59, 5
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ false, %55 ], [ %61, %58 ]
  br i1 %63, label %48, label %64

64:                                               ; preds = %62
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %7, align 8
  %72 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %12, align 4
  br label %200

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i32 @b43_rx_buffer_is_poisoned(%struct.b43_dmaring* %76, %struct.sk_buff* %77)
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %83 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @b43dbg(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %7, align 8
  %89 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %12, align 4
  br label %200

91:                                               ; preds = %75
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %94 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %98 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %155

104:                                              ; preds = %91
  store i32 0, i32* %14, align 4
  %105 = load i64, i64* %10, align 8
  store i64 %105, i64* %15, align 8
  br label %106

106:                                              ; preds = %104, %142
  %107 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %5, align 8
  %108 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %107, i32 0, i32 0
  %109 = load %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)*, %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)** %108, align 8
  %110 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.b43_dmadesc_generic* %109(%struct.b43_dmaring* %110, i32 %112, %struct.b43_dmadesc_meta** %7)
  store %struct.b43_dmadesc_generic* %113, %struct.b43_dmadesc_generic** %6, align 8
  %114 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %115 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %7, align 8
  %116 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %115, i32 0, i32 1
  %117 = load %struct.sk_buff*, %struct.sk_buff** %116, align 8
  %118 = call i32 @b43_poison_rx_buffer(%struct.b43_dmaring* %114, %struct.sk_buff* %117)
  %119 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %120 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %7, align 8
  %121 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %124 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @sync_descbuffer_for_device(%struct.b43_dmaring* %119, i32 %122, i64 %125)
  %127 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @next_slot(%struct.b43_dmaring* %127, i32 %129)
  %131 = load i32*, i32** %4, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  %134 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %135 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %15, align 8
  %138 = sub nsw i64 %137, %136
  store i64 %138, i64* %15, align 8
  %139 = load i64, i64* %15, align 8
  %140 = icmp sle i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %106
  br label %143

142:                                              ; preds = %106
  br label %106

143:                                              ; preds = %141
  %144 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %145 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %151 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @b43err(i32 %148, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %149, i64 %152, i32 %153)
  br label %199

155:                                              ; preds = %91
  %156 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %7, align 8
  %157 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %12, align 4
  %159 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %160 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %6, align 8
  %161 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %7, align 8
  %162 = load i32, i32* @GFP_ATOMIC, align 4
  %163 = call i32 @setup_rx_descbuffer(%struct.b43_dmaring* %159, %struct.b43_dmadesc_generic* %160, %struct.b43_dmadesc_meta* %161, i32 %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i64 @unlikely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %155
  %168 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %169 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %168, i32 0, i32 2
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @b43dbg(i32 %172, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %200

174:                                              ; preds = %155
  %175 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %178 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @unmap_descbuffer(%struct.b43_dmaring* %175, i32 %176, i64 %179, i32 0)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %184 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  %187 = call i32 @skb_put(%struct.sk_buff* %181, i64 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %189 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %190 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @skb_pull(%struct.sk_buff* %188, i64 %191)
  %193 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %194 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %193, i32 0, i32 2
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = load %struct.b43_rxhdr_fw4*, %struct.b43_rxhdr_fw4** %8, align 8
  %198 = call i32 @b43_rx(%struct.TYPE_2__* %195, %struct.sk_buff* %196, %struct.b43_rxhdr_fw4* %197)
  br label %199

199:                                              ; preds = %174, %143
  br label %210

200:                                              ; preds = %167, %81, %70
  %201 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %203 = call i32 @b43_poison_rx_buffer(%struct.b43_dmaring* %201, %struct.sk_buff* %202)
  %204 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %207 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @sync_descbuffer_for_device(%struct.b43_dmaring* %204, i32 %205, i64 %208)
  br label %210

210:                                              ; preds = %200, %199
  ret void
}

declare dso_local i32 @sync_descbuffer_for_cpu(%struct.b43_dmaring*, i32, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43_rx_buffer_is_poisoned(%struct.b43_dmaring*, %struct.sk_buff*) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @b43_poison_rx_buffer(%struct.b43_dmaring*, %struct.sk_buff*) #1

declare dso_local i32 @sync_descbuffer_for_device(%struct.b43_dmaring*, i32, i64) #1

declare dso_local i32 @next_slot(%struct.b43_dmaring*, i32) #1

declare dso_local i32 @b43err(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @setup_rx_descbuffer(%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_meta*, i32) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43_dmaring*, i32, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @b43_rx(%struct.TYPE_2__*, %struct.sk_buff*, %struct.b43_rxhdr_fw4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
