; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i32, i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_ring_free(%struct.aq_ring_s* %0) #0 {
  %2 = alloca %struct.aq_ring_s*, align 8
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %2, align 8
  %3 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %4 = icmp ne %struct.aq_ring_s* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %8 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kfree(i32 %9)
  %11 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %12 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %6
  %16 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %17 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @aq_nic_get_dev(i32 %18)
  %20 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %21 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %24 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %28 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %31 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_free_coherent(i32 %19, i32 %26, i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %15, %6
  br label %35

35:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @aq_nic_get_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
