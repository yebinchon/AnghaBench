; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c___mic_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c___mic_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scif_hw_dev = type { i32 }
%struct.mic_device = type { i32 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32, i64)* @__mic_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__mic_dma_alloc(%struct.device* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.scif_hw_dev*, align 8
  %12 = alloca %struct.mic_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.scif_hw_dev* @dev_get_drvdata(%struct.device* %15)
  store %struct.scif_hw_dev* %16, %struct.scif_hw_dev** %11, align 8
  %17 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %11, align 8
  %18 = call %struct.mic_device* @scdev_to_mdev(%struct.scif_hw_dev* %17)
  store %struct.mic_device* %18, %struct.mic_device** %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @__GFP_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @kmalloc(i64 %19, i32 %22)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %5
  %27 = load %struct.mic_device*, %struct.mic_device** %12, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @mic_map_single(%struct.mic_device* %27, i8* %28, i64 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i64 @dma_mapping_error(%struct.device* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @kfree(i8* %36)
  store i8* null, i8** %14, align 8
  br label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %13, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i8*, i8** %14, align 8
  ret i8* %43
}

declare dso_local %struct.scif_hw_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.mic_device* @scdev_to_mdev(%struct.scif_hw_dev*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @mic_map_single(%struct.mic_device*, i8*, i64) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
