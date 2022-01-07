; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-dma.c_flexcop_dma_control_timer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/b2c2/extr_flexcop-dma.c_flexcop_dma_control_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, i64)*, i64 (%struct.flexcop_device*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ctrl_208 = common dso_local global i32 0, align 4
@FC_DMA_1 = common dso_local global i32 0, align 4
@FC_DMA_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flexcop_dma_control_timer_irq(%struct.flexcop_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %9 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %8, i32 0, i32 1
  %10 = load i64 (%struct.flexcop_device*, i32)*, i64 (%struct.flexcop_device*, i32)** %9, align 8
  %11 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %12 = load i32, i32* @ctrl_208, align 4
  %13 = call i64 %10(%struct.flexcop_device* %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %15 = bitcast %struct.TYPE_5__* %14 to i64*
  store i64 %13, i64* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FC_DMA_1, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FC_DMA_2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %35 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %34, i32 0, i32 0
  %36 = load i32 (%struct.flexcop_device*, i32, i64)*, i32 (%struct.flexcop_device*, i32, i64)** %35, align 8
  %37 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %38 = load i32, i32* @ctrl_208, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %40 = bitcast %struct.TYPE_5__* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i32 %36(%struct.flexcop_device* %37, i32 %38, i64 %41)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
