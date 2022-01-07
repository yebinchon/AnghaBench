; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_alloc_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_alloc_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device*, i32* }
%struct.resource = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"platform_device_alloc %s failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"platform_device_add_resources failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"platform_device_add_data failed\0A\00", align 1
@usbhs_dmamask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"platform_device_add failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (i8*, %struct.resource*, i32, i8*, i64, %struct.device*)* @omap_usbhs_alloc_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @omap_usbhs_alloc_child(i8* %0, %struct.resource* %1, i32 %2, i8* %3, i64 %4, %struct.device* %5) #0 {
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.platform_device*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.resource* %1, %struct.resource** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.device* %5, %struct.device** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call %struct.platform_device* @platform_device_alloc(i8* %16, i32 0)
  store %struct.platform_device* %17, %struct.platform_device** %14, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %19 = icmp ne %struct.platform_device* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load %struct.device*, %struct.device** %13, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %68

24:                                               ; preds = %6
  %25 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %26 = load %struct.resource*, %struct.resource** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @platform_device_add_resources(%struct.platform_device* %25, %struct.resource* %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %13, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %65

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @platform_device_add_data(%struct.platform_device* %35, i8* %36, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %13, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %65

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32* @usbhs_dmamask, i32** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @DMA_BIT_MASK(i32 32)
  %51 = call i32 @dma_set_coherent_mask(%struct.TYPE_2__* %49, i32 %50)
  %52 = load %struct.device*, %struct.device** %13, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.device* %52, %struct.device** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %57 = call i32 @platform_device_add(%struct.platform_device* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load %struct.device*, %struct.device** %13, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %65

63:                                               ; preds = %44
  %64 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %64, %struct.platform_device** %7, align 8
  br label %69

65:                                               ; preds = %60, %41, %31
  %66 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %67 = call i32 @platform_device_put(%struct.platform_device* %66)
  br label %68

68:                                               ; preds = %65, %20
  store %struct.platform_device* null, %struct.platform_device** %7, align 8
  br label %69

69:                                               ; preds = %68, %63
  %70 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  ret %struct.platform_device* %70
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i8*, i64) #1

declare dso_local i32 @dma_set_coherent_mask(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
