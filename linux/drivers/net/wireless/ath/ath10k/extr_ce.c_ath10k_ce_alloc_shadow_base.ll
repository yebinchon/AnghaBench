; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_shadow_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_alloc_shadow_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ce_ring = type { i32, %struct.ce_desc_64* }
%struct.ce_desc_64 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CE_DESC_RING_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_ce_ring*, i32)* @ath10k_ce_alloc_shadow_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ce_alloc_shadow_base(%struct.ath10k* %0, %struct.ath10k_ce_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_ce_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_ce_ring* %1, %struct.ath10k_ce_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @kcalloc(i32 %8, i32 4, i32 %9)
  %11 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %12 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %14 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %3
  %21 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %22 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CE_DESC_RING_ALIGN, align 4
  %25 = call i64 @PTR_ALIGN(i32 %23, i32 %24)
  %26 = inttoptr i64 %25 to %struct.ce_desc_64*
  %27 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %28 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %27, i32 0, i32 1
  store %struct.ce_desc_64* %26, %struct.ce_desc_64** %28, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i64 @PTR_ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
