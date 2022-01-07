; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_dma_qmans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_dma_qmans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.hl_hw_queue*, %struct.goya_device* }
%struct.hl_hw_queue = type { i32 }
%struct.goya_device = type { i32 }

@HW_CAP_DMA = common dso_local global i32 0, align 4
@NUMBER_OF_EXT_HW_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goya_init_dma_qmans(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.goya_device*, align 8
  %4 = alloca %struct.hl_hw_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 1
  %8 = load %struct.goya_device*, %struct.goya_device** %7, align 8
  store %struct.goya_device* %8, %struct.goya_device** %3, align 8
  %9 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %10 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HW_CAP_DMA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 0
  %19 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %18, align 8
  %20 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %19, i64 0
  store %struct.hl_hw_queue* %20, %struct.hl_hw_queue** %4, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %35, %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NUMBER_OF_EXT_HW_QUEUES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %29 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @goya_init_dma_qman(%struct.hl_device* %26, i32 %27, i32 %30)
  %32 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @goya_init_dma_ch(%struct.hl_device* %32, i32 %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %4, align 8
  %39 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %38, i32 1
  store %struct.hl_hw_queue* %39, %struct.hl_hw_queue** %4, align 8
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* @HW_CAP_DMA, align 4
  %42 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %43 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %15
  ret void
}

declare dso_local i32 @goya_init_dma_qman(%struct.hl_device*, i32, i32) #1

declare dso_local i32 @goya_init_dma_ch(%struct.hl_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
