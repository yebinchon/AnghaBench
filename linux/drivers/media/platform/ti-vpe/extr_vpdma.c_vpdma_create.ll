; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vpdma_data = type { void (%struct.platform_device.0*)*, i32, i32, %struct.platform_device* }
%struct.platform_device.0 = type opaque
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"vpdma_create\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vpdma\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"missing platform resources data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to ioremap\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to load firmware %s\0A\00", align 1
@VPDMA_FIRMWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpdma_create(%struct.platform_device* %0, %struct.vpdma_data* %1, void (%struct.platform_device*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.vpdma_data*, align 8
  %7 = alloca void (%struct.platform_device*)*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.vpdma_data* %1, %struct.vpdma_data** %6, align 8
  store void (%struct.platform_device*)* %2, void (%struct.platform_device*)** %7, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %15 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %14, i32 0, i32 3
  store %struct.platform_device* %13, %struct.platform_device** %15, align 8
  %16 = load void (%struct.platform_device*)*, void (%struct.platform_device*)** %7, align 8
  %17 = bitcast void (%struct.platform_device*)* %16 to void (%struct.platform_device.0*)*
  %18 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %19 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %18, i32 0, i32 0
  store void (%struct.platform_device.0*)* %17, void (%struct.platform_device.0*)** %19, align 8
  %20 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %21 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %25, %struct.resource** %8, align 8
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = icmp eq %struct.resource* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %3
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %8, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = call i32 @resource_size(%struct.resource* %40)
  %42 = call i32 @devm_ioremap(i32* %36, i32 %39, i32 %41)
  %43 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %44 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %46 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %34
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %34
  %56 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %57 = call i32 @vpdma_load_firmware(%struct.vpdma_data* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @VPDMA_FIRMWARE, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %60, %49, %28
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @vpdma_load_firmware(%struct.vpdma_data*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
