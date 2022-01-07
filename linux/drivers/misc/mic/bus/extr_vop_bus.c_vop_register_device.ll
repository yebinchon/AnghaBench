; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/bus/extr_vop_bus.c_vop_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/bus/extr_vop_bus.c_vop_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_device = type { %struct.TYPE_7__, i8*, %struct.dma_chan*, %struct.mic_mw*, i8*, %struct.vop_hw_ops*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i32, i32, i32*, %struct.dma_map_ops*, %struct.device* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.dma_map_ops = type { i32 }
%struct.vop_hw_ops = type { i32 }
%struct.mic_mw = type { i32 }
%struct.dma_chan = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VOP_DEV_ANY_ID = common dso_local global i32 0, align 4
@vop_release_dev = common dso_local global i32 0, align 4
@vop_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"vop-dev%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vop_device* @vop_register_device(%struct.device* %0, i32 %1, %struct.dma_map_ops* %2, %struct.vop_hw_ops* %3, i8* %4, %struct.mic_mw* %5, %struct.dma_chan* %6) #0 {
  %8 = alloca %struct.vop_device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_map_ops*, align 8
  %12 = alloca %struct.vop_hw_ops*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.mic_mw*, align 8
  %15 = alloca %struct.dma_chan*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.vop_device*, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.dma_map_ops* %2, %struct.dma_map_ops** %11, align 8
  store %struct.vop_hw_ops* %3, %struct.vop_hw_ops** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.mic_mw* %5, %struct.mic_mw** %14, align 8
  store %struct.dma_chan* %6, %struct.dma_chan** %15, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.vop_device* @kzalloc(i32 88, i32 %18)
  store %struct.vop_device* %19, %struct.vop_device** %17, align 8
  %20 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %21 = icmp ne %struct.vop_device* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.vop_device* @ERR_PTR(i32 %24)
  store %struct.vop_device* %25, %struct.vop_device** %8, align 8
  br label %96

26:                                               ; preds = %7
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %29 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store %struct.device* %27, %struct.device** %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %33 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @VOP_DEV_ANY_ID, align 4
  %36 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %37 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.dma_map_ops*, %struct.dma_map_ops** %11, align 8
  %40 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %41 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  store %struct.dma_map_ops* %39, %struct.dma_map_ops** %42, align 8
  %43 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %44 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %47 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32* %45, i32** %48, align 8
  %49 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %50 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %49, i32 0, i32 0
  %51 = call i32 @DMA_BIT_MASK(i32 64)
  %52 = call i32 @dma_set_mask(%struct.TYPE_7__* %50, i32 %51)
  %53 = load i32, i32* @vop_release_dev, align 4
  %54 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %55 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.vop_hw_ops*, %struct.vop_hw_ops** %12, align 8
  %58 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %59 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %58, i32 0, i32 5
  store %struct.vop_hw_ops* %57, %struct.vop_hw_ops** %59, align 8
  %60 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %61 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32* @vop_bus, i32** %62, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %65 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mic_mw*, %struct.mic_mw** %14, align 8
  %67 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %68 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %67, i32 0, i32 3
  store %struct.mic_mw* %66, %struct.mic_mw** %68, align 8
  %69 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  %70 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %71 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %70, i32 0, i32 2
  store %struct.dma_chan* %69, %struct.dma_chan** %71, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr i8, i8* %72, i64 -1
  %74 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %75 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %77 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %76, i32 0, i32 0
  %78 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %79 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @dev_set_name(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %83 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %82, i32 0, i32 0
  %84 = call i32 @device_register(%struct.TYPE_7__* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %26
  br label %90

88:                                               ; preds = %26
  %89 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  store %struct.vop_device* %89, %struct.vop_device** %8, align 8
  br label %96

90:                                               ; preds = %87
  %91 = load %struct.vop_device*, %struct.vop_device** %17, align 8
  %92 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %91, i32 0, i32 0
  %93 = call i32 @put_device(%struct.TYPE_7__* %92)
  %94 = load i32, i32* %16, align 4
  %95 = call %struct.vop_device* @ERR_PTR(i32 %94)
  store %struct.vop_device* %95, %struct.vop_device** %8, align 8
  br label %96

96:                                               ; preds = %90, %88, %22
  %97 = load %struct.vop_device*, %struct.vop_device** %8, align 8
  ret %struct.vop_device* %97
}

declare dso_local %struct.vop_device* @kzalloc(i32, i32) #1

declare dso_local %struct.vop_device* @ERR_PTR(i32) #1

declare dso_local i32 @dma_set_mask(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
