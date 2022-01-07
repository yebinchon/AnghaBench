; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_fbpt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_fbpt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cio2_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.cio2_queue = type { i32, i32 }

@CIO2_FBPT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cio2_device*, %struct.cio2_queue*)* @cio2_fbpt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_fbpt_init(%struct.cio2_device* %0, %struct.cio2_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cio2_device*, align 8
  %5 = alloca %struct.cio2_queue*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.cio2_device* %0, %struct.cio2_device** %4, align 8
  store %struct.cio2_queue* %1, %struct.cio2_queue** %5, align 8
  %7 = load %struct.cio2_device*, %struct.cio2_device** %4, align 8
  %8 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @CIO2_FBPT_SIZE, align 4
  %13 = load %struct.cio2_queue*, %struct.cio2_queue** %5, align 8
  %14 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @dma_alloc_coherent(%struct.device* %11, i32 %12, i32* %14, i32 %15)
  %17 = load %struct.cio2_queue*, %struct.cio2_queue** %5, align 8
  %18 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cio2_queue*, %struct.cio2_queue** %5, align 8
  %20 = getelementptr inbounds %struct.cio2_queue, %struct.cio2_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
