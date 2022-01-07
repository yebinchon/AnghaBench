; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_clean_fdir_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_clean_fdir_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, %struct.TYPE_4__*, i64, %struct.i40e_tx_buffer*, i32, %struct.i40e_vsi* }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_tx_buffer = type { i32, %struct.i40e_tx_desc*, i32* }
%struct.i40e_tx_desc = type { i32, i64 }
%struct.i40e_vsi = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@I40E_TX_DESC_DTYPE_DESC_DONE = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_FD_SB = common dso_local global i32 0, align 4
@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*, i32)* @i40e_clean_fdir_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_clean_fdir_tx_irq(%struct.i40e_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_tx_buffer*, align 8
  %8 = alloca %struct.i40e_tx_desc*, align 8
  %9 = alloca %struct.i40e_tx_desc*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %10, i32 0, i32 5
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  store %struct.i40e_vsi* %12, %struct.i40e_vsi** %5, align 8
  %13 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %16, i32 0, i32 3
  %18 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %18, i64 %19
  store %struct.i40e_tx_buffer* %20, %struct.i40e_tx_buffer** %7, align 8
  %21 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %21, i64 %22)
  store %struct.i40e_tx_desc* %23, %struct.i40e_tx_desc** %8, align 8
  %24 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %139, %2
  %30 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %30, i32 0, i32 1
  %32 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %31, align 8
  store %struct.i40e_tx_desc* %32, %struct.i40e_tx_desc** %9, align 8
  %33 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %9, align 8
  %34 = icmp ne %struct.i40e_tx_desc* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %143

36:                                               ; preds = %29
  %37 = call i32 (...) @smp_rmb()
  %38 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %9, align 8
  %39 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I40E_TX_DESC_DTYPE_DESC_DONE, align 4
  %42 = call i32 @cpu_to_le64(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %143

46:                                               ; preds = %36
  %47 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %48 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %47, i32 0, i32 1
  store %struct.i40e_tx_desc* null, %struct.i40e_tx_desc** %48, align 8
  %49 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %50 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %52 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %53, i32 1
  store %struct.i40e_tx_buffer* %54, %struct.i40e_tx_buffer** %7, align 8
  %55 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %56 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %55, i32 1
  store %struct.i40e_tx_desc* %56, %struct.i40e_tx_desc** %8, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %46
  %66 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %67 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %72 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %71, i32 0, i32 3
  %73 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %72, align 8
  store %struct.i40e_tx_buffer* %73, %struct.i40e_tx_buffer** %7, align 8
  %74 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %75 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %74, i64 0)
  store %struct.i40e_tx_desc* %75, %struct.i40e_tx_desc** %8, align 8
  br label %76

76:                                               ; preds = %65, %46
  %77 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %78 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %81 = load i32, i32* @dma, align 4
  %82 = call i32 @dma_unmap_addr(%struct.i40e_tx_buffer* %80, i32 %81)
  %83 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %84 = load i32, i32* @len, align 4
  %85 = call i32 @dma_unmap_len(%struct.i40e_tx_buffer* %83, i32 %84)
  %86 = load i32, i32* @DMA_TO_DEVICE, align 4
  %87 = call i32 @dma_unmap_single(i32 %79, i32 %82, i32 %85, i32 %86)
  %88 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @I40E_TX_FLAGS_FD_SB, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %96 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @kfree(i32* %97)
  br label %99

99:                                               ; preds = %94, %76
  %100 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %101 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %100, i32 0, i32 2
  store i32* null, i32** %101, align 8
  %102 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %103 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %105 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %104, i32 0, i32 1
  store %struct.i40e_tx_desc* null, %struct.i40e_tx_desc** %105, align 8
  %106 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %107 = load i32, i32* @len, align 4
  %108 = call i32 @dma_unmap_len_set(%struct.i40e_tx_buffer* %106, i32 %107, i32 0)
  %109 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %110 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %112 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %7, align 8
  %114 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %113, i32 1
  store %struct.i40e_tx_buffer* %114, %struct.i40e_tx_buffer** %7, align 8
  %115 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %8, align 8
  %116 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %115, i32 1
  store %struct.i40e_tx_desc* %116, %struct.i40e_tx_desc** %8, align 8
  %117 = load i64, i64* %6, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %6, align 8
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %99
  %126 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %127 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %6, align 8
  %131 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %132 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %131, i32 0, i32 3
  %133 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %132, align 8
  store %struct.i40e_tx_buffer* %133, %struct.i40e_tx_buffer** %7, align 8
  %134 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %135 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %134, i64 0)
  store %struct.i40e_tx_desc* %135, %struct.i40e_tx_desc** %8, align 8
  br label %136

136:                                              ; preds = %125, %99
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = call i64 @likely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %29, label %143

143:                                              ; preds = %139, %45, %35
  %144 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %145 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %6, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %151 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %153 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %143
  %161 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %162 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %163 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @i40e_irq_dynamic_enable(%struct.i40e_vsi* %161, i32 %166)
  br label %168

168:                                              ; preds = %160, %143
  %169 = load i32, i32* %4, align 4
  %170 = icmp sgt i32 %169, 0
  %171 = zext i1 %170 to i32
  ret i32 %171
}

declare dso_local %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring*, i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.i40e_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.i40e_tx_buffer*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_unmap_len_set(%struct.i40e_tx_buffer*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @i40e_irq_dynamic_enable(%struct.i40e_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
