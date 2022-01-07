; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_src_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_src_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_ring = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ce_attr = type { i32 }

@per_transfer_context = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CE_DESC_RING_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath10k_ce_ring* (%struct.ath10k*, i32, %struct.ce_attr*)* @ath10k_ce_alloc_src_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath10k_ce_ring* @ath10k_ce_alloc_src_ring(%struct.ath10k* %0, i32 %1, %struct.ce_attr* %2) #0 {
  %4 = alloca %struct.ath10k_ce_ring*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ce_attr*, align 8
  %8 = alloca %struct.ath10k_ce_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ce_attr* %2, %struct.ce_attr** %7, align 8
  %12 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %13 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @roundup_pow_of_two(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %18 = load i32, i32* @per_transfer_context, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @struct_size(%struct.ath10k_ce_ring* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ath10k_ce_ring* @kzalloc(i32 %20, i32 %21)
  store %struct.ath10k_ce_ring* %22, %struct.ath10k_ce_ring** %8, align 8
  %23 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %24 = icmp eq %struct.ath10k_ce_ring* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.ath10k_ce_ring* @ERR_PTR(i32 %27)
  store %struct.ath10k_ce_ring* %28, %struct.ath10k_ce_ring** %4, align 8
  br label %110

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %32 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %36 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = load i64, i64* @CE_DESC_RING_ALIGN, align 8
  %44 = add i64 %42, %43
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @dma_alloc_coherent(i32 %39, i64 %44, i32* %10, i32 %45)
  %47 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %48 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %50 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %29
  %54 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %55 = call i32 @kfree(%struct.ath10k_ce_ring* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.ath10k_ce_ring* @ERR_PTR(i32 %57)
  store %struct.ath10k_ce_ring* %58, %struct.ath10k_ce_ring** %4, align 8
  br label %110

59:                                               ; preds = %29
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %62 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %64 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @CE_DESC_RING_ALIGN, align 8
  %67 = call i32 @PTR_ALIGN(i32 %65, i64 %66)
  %68 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %69 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %71 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* @CE_DESC_RING_ALIGN, align 8
  %74 = call i32 @ALIGN(i32 %72, i64 %73)
  %75 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %76 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %78 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %59
  %83 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %84 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ath10k_ce_alloc_shadow_base(%struct.ath10k* %83, %struct.ath10k_ce_ring* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %82
  %90 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %91 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = load i64, i64* @CE_DESC_RING_ALIGN, align 8
  %97 = add i64 %95, %96
  %98 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %99 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @dma_free_coherent(i32 %92, i64 %97, i32 %100, i32 %101)
  %103 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %104 = call i32 @kfree(%struct.ath10k_ce_ring* %103)
  %105 = load i32, i32* %11, align 4
  %106 = call %struct.ath10k_ce_ring* @ERR_PTR(i32 %105)
  store %struct.ath10k_ce_ring* %106, %struct.ath10k_ce_ring** %4, align 8
  br label %110

107:                                              ; preds = %82
  br label %108

108:                                              ; preds = %107, %59
  %109 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  store %struct.ath10k_ce_ring* %109, %struct.ath10k_ce_ring** %4, align 8
  br label %110

110:                                              ; preds = %108, %89, %53, %25
  %111 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %4, align 8
  ret %struct.ath10k_ce_ring* %111
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local %struct.ath10k_ce_ring* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ath10k_ce_ring*, i32, i32) #1

declare dso_local %struct.ath10k_ce_ring* @ERR_PTR(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.ath10k_ce_ring*) #1

declare dso_local i32 @PTR_ALIGN(i32, i64) #1

declare dso_local i32 @ALIGN(i32, i64) #1

declare dso_local i32 @ath10k_ce_alloc_shadow_base(%struct.ath10k*, %struct.ath10k_ce_ring*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
