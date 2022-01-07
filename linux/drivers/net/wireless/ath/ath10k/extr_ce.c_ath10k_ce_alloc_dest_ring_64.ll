; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_dest_ring_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_dest_ring_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_ring = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k = type { i32 }
%struct.ce_attr = type { i32 }

@per_transfer_context = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CE_DESC_RING_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath10k_ce_ring* (%struct.ath10k*, i32, %struct.ce_attr*)* @ath10k_ce_alloc_dest_ring_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath10k_ce_ring* @ath10k_ce_alloc_dest_ring_64(%struct.ath10k* %0, i32 %1, %struct.ce_attr* %2) #0 {
  %4 = alloca %struct.ath10k_ce_ring*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ce_attr*, align 8
  %8 = alloca %struct.ath10k_ce_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ce_attr* %2, %struct.ce_attr** %7, align 8
  %11 = load %struct.ce_attr*, %struct.ce_attr** %7, align 8
  %12 = getelementptr inbounds %struct.ce_attr, %struct.ce_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @roundup_pow_of_two(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %16 = load i32, i32* @per_transfer_context, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @struct_size(%struct.ath10k_ce_ring* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ath10k_ce_ring* @kzalloc(i32 %18, i32 %19)
  store %struct.ath10k_ce_ring* %20, %struct.ath10k_ce_ring** %8, align 8
  %21 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %22 = icmp ne %struct.ath10k_ce_ring* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ath10k_ce_ring* @ERR_PTR(i32 %25)
  store %struct.ath10k_ce_ring* %26, %struct.ath10k_ce_ring** %4, align 8
  br label %85

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %30 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %34 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = load i64, i64* @CE_DESC_RING_ALIGN, align 8
  %42 = add i64 %40, %41
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @dma_alloc_coherent(i32 %37, i64 %42, i32* %10, i32 %43)
  %45 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %46 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %48 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %27
  %52 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %53 = call i32 @kfree(%struct.ath10k_ce_ring* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.ath10k_ce_ring* @ERR_PTR(i32 %55)
  store %struct.ath10k_ce_ring* %56, %struct.ath10k_ce_ring** %4, align 8
  br label %85

57:                                               ; preds = %27
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %60 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %62 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = load i64, i64* @CE_DESC_RING_ALIGN, align 8
  %68 = add i64 %66, %67
  %69 = call i32 @memset(i32 %63, i32 0, i64 %68)
  %70 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %71 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* @CE_DESC_RING_ALIGN, align 8
  %74 = call i32 @PTR_ALIGN(i32 %72, i64 %73)
  %75 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %76 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %78 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @CE_DESC_RING_ALIGN, align 8
  %81 = call i32 @ALIGN(i32 %79, i64 %80)
  %82 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %83 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  store %struct.ath10k_ce_ring* %84, %struct.ath10k_ce_ring** %4, align 8
  br label %85

85:                                               ; preds = %57, %51, %23
  %86 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %4, align 8
  ret %struct.ath10k_ce_ring* %86
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local %struct.ath10k_ce_ring* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ath10k_ce_ring*, i32, i32) #1

declare dso_local %struct.ath10k_ce_ring* @ERR_PTR(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.ath10k_ce_ring*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @PTR_ALIGN(i32, i64) #1

declare dso_local i32 @ALIGN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
