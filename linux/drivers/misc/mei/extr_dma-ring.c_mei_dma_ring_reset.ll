; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dma_ring_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dma_ring_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.hbm_dma_ring_ctrl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_dma_ring_reset(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.hbm_dma_ring_ctrl*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %4 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %5 = call %struct.hbm_dma_ring_ctrl* @mei_dma_ring_ctrl(%struct.mei_device* %4)
  store %struct.hbm_dma_ring_ctrl* %5, %struct.hbm_dma_ring_ctrl** %3, align 8
  %6 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %3, align 8
  %7 = icmp ne %struct.hbm_dma_ring_ctrl* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.hbm_dma_ring_ctrl*, %struct.hbm_dma_ring_ctrl** %3, align 8
  %11 = call i32 @memset(%struct.hbm_dma_ring_ctrl* %10, i32 0, i32 4)
  br label %12

12:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.hbm_dma_ring_ctrl* @mei_dma_ring_ctrl(%struct.mei_device*) #1

declare dso_local i32 @memset(%struct.hbm_dma_ring_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
