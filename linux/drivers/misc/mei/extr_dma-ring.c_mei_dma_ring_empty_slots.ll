; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dma_ring_empty_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dma_ring_empty_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.hbm_dma_ring_ctrl = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mei_dma_ring_empty_slots(%struct.mei_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.hbm_dma_ring_ctrl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = call %struct.hbm_dma_ring_ctrl* @mei_dma_ring_ctrl(%struct.mei_device* %9)
  store %struct.hbm_dma_ring_ctrl* %10, %struct.hbm_dma_ring_ctrl** %4, align 8
  %11 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %12 = call i32 @mei_dma_ring_is_allocated(%struct.mei_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %4, align 8
  %17 = icmp ne %struct.hbm_dma_ring_ctrl* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i64 0, i64* %2, align 8
  br label %49

23:                                               ; preds = %15
  %24 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %25 = call i64 @mei_dma_ring_hbuf_depth(%struct.mei_device* %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.hbm_dma_ring_ctrl, %struct.hbm_dma_ring_ctrl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @READ_ONCE(i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.hbm_dma_ring_ctrl, %struct.hbm_dma_ring_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @READ_ONCE(i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %8, align 8
  br label %47

41:                                               ; preds = %23
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %43, %44
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %41, %37
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %47, %22, %14
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local %struct.hbm_dma_ring_ctrl* @mei_dma_ring_ctrl(%struct.mei_device*) #1

declare dso_local i32 @mei_dma_ring_is_allocated(%struct.mei_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @mei_dma_ring_hbuf_depth(%struct.mei_device*) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
