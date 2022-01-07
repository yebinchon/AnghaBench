; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.pci_dev*, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.e1000_hw = type { i64 }
%struct.e1000_rx_ring = type { i32, i32, i64, %struct.e1000_rx_buffer* }
%struct.e1000_rx_buffer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.e1000_rx_desc = type { i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"skb align check failed: %u bytes at %p\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"dma align check failed: %u bytes at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)* @e1000_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_alloc_rx_buffers(%struct.e1000_adapter* %0, %struct.e1000_rx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.e1000_rx_desc*, align 8
  %10 = alloca %struct.e1000_rx_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.e1000_rx_ring* %1, %struct.e1000_rx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 3
  store %struct.e1000_hw* %16, %struct.e1000_hw** %7, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %8, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %24 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %27 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %26, i32 0, i32 3
  %28 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %28, i64 %30
  store %struct.e1000_rx_buffer* %31, %struct.e1000_rx_buffer** %10, align 8
  br label %32

32:                                               ; preds = %189, %3
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %196

36:                                               ; preds = %32
  %37 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %38 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %169

43:                                               ; preds = %36
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %45 = call i8* @e1000_alloc_frag(%struct.e1000_adapter* %44)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %196

53:                                               ; preds = %43
  %54 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %54, i8* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %13, align 8
  store i8* %60, i8** %14, align 8
  %61 = load i32, i32* @rx_err, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @e_err(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %63)
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %66 = call i8* @e1000_alloc_frag(%struct.e1000_adapter* %65)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @skb_free_frag(i8* %70)
  %72 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %196

76:                                               ; preds = %59
  %77 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %77, i8* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @skb_free_frag(i8* %83)
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @skb_free_frag(i8* %85)
  %87 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %196

91:                                               ; preds = %76
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @skb_free_frag(i8* %92)
  br label %94

94:                                               ; preds = %91, %53
  %95 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = load i8*, i8** %13, align 8
  %98 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %102 = call i64 @dma_map_single(i32* %96, i8* %97, i32 %100, i32 %101)
  %103 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %104 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %108 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @dma_mapping_error(i32* %106, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %94
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 @skb_free_frag(i8* %113)
  %115 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %116 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %196

121:                                              ; preds = %94
  %122 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %123 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %124 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %122, i8* %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %163, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @rx_err, align 4
  %134 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %135 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %138 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @e_err(i32 %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %136, i8* %140)
  %142 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 0
  %144 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %145 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %148 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %151 = call i32 @dma_unmap_single(i32* %143, i64 %146, i32 %149, i32 %150)
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @skb_free_frag(i8* %152)
  %154 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %155 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  store i32* null, i32** %156, align 8
  %157 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %158 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %160 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  br label %196

163:                                              ; preds = %121
  %164 = load i8*, i8** %13, align 8
  %165 = bitcast i8* %164 to i32*
  %166 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %167 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i32* %165, i32** %168, align 8
  br label %169

169:                                              ; preds = %163, %42
  %170 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %171 = load i32, i32* %11, align 4
  %172 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %170, i32 %171)
  store %struct.e1000_rx_desc* %172, %struct.e1000_rx_desc** %9, align 8
  %173 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %10, align 8
  %174 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @cpu_to_le64(i64 %175)
  %177 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %9, align 8
  %178 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %11, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %11, align 4
  %181 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %182 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %180, %183
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %169
  store i32 0, i32* %11, align 4
  br label %189

189:                                              ; preds = %188, %169
  %190 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %191 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %190, i32 0, i32 3
  %192 = load %struct.e1000_rx_buffer*, %struct.e1000_rx_buffer** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.e1000_rx_buffer, %struct.e1000_rx_buffer* %192, i64 %194
  store %struct.e1000_rx_buffer* %195, %struct.e1000_rx_buffer** %10, align 8
  br label %32

196:                                              ; preds = %132, %112, %82, %69, %48, %32
  %197 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %198 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i64 @likely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %231

205:                                              ; preds = %196
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %208 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %11, align 4
  %210 = add i32 %209, -1
  store i32 %210, i32* %11, align 4
  %211 = icmp eq i32 %209, 0
  %212 = zext i1 %211 to i32
  %213 = call i64 @unlikely(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %205
  %216 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %217 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sub i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %215, %205
  %221 = call i32 (...) @dma_wmb()
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %224 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %5, align 8
  %227 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %225, %228
  %230 = call i32 @writel(i32 %222, i64 %229)
  br label %231

231:                                              ; preds = %220, %196
  ret void
}

declare dso_local i8* @e1000_alloc_frag(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_check_64k_bound(%struct.e1000_adapter*, i8*, i32) #1

declare dso_local i32 @e_err(i32, i8*, i32, i8*) #1

declare dso_local i32 @skb_free_frag(i8*) #1

declare dso_local i64 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
