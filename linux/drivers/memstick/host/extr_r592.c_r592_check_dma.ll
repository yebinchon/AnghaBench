; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_check_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_check_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32 }

@r592_enable_dma = common dso_local global i64 0, align 8
@R592_FIFO_DMA_SETTINGS = common dso_local global i32 0, align 4
@R592_FIFO_DMA_SETTINGS_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r592_device*)* @r592_check_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r592_check_dma(%struct.r592_device* %0) #0 {
  %2 = alloca %struct.r592_device*, align 8
  store %struct.r592_device* %0, %struct.r592_device** %2, align 8
  %3 = load i64, i64* @r592_enable_dma, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %7 = load i32, i32* @R592_FIFO_DMA_SETTINGS, align 4
  %8 = call i32 @r592_read_reg(%struct.r592_device* %6, i32 %7)
  %9 = load i32, i32* @R592_FIFO_DMA_SETTINGS_CAP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ false, %1 ], [ %11, %5 ]
  %14 = zext i1 %13 to i32
  %15 = load %struct.r592_device*, %struct.r592_device** %2, align 8
  %16 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @r592_read_reg(%struct.r592_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
