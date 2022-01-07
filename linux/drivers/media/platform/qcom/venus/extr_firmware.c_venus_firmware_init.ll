; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_firmware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_firmware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.iommu_domain*, %struct.TYPE_6__* }
%struct.iommu_domain = type { i32 }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32, i32 }
%struct.platform_device_info = type { i32, i32, %struct.TYPE_6__*, i32* }
%struct.platform_device = type { %struct.TYPE_6__ }

@.str = private unnamed_addr constant [15 x i8] c"video-firmware\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"dma configure fail\0A\00", align 1
@platform_bus_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to allocate iommu domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"could not attach device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_firmware_init(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.platform_device_info, align 8
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %9 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %10 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  %14 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %19 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  store i32 0, i32* %2, align 4
  br label %108

20:                                               ; preds = %1
  %21 = call i32 @memset(%struct.platform_device_info* %4, i32 0, i32 24)
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = getelementptr inbounds %struct.device_node, %struct.device_node* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 3
  store i32* %23, i32** %24, align 8
  %25 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %26 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 2
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = getelementptr inbounds %struct.device_node, %struct.device_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = call i32 @DMA_BIT_MASK(i32 32)
  %34 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %4, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %4)
  store %struct.platform_device* %35, %struct.platform_device** %6, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %37 = call i64 @IS_ERR(%struct.platform_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %20
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = call i32 @of_node_put(%struct.device_node* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %43 = call i32 @PTR_ERR(%struct.platform_device* %42)
  store i32 %43, i32* %2, align 4
  br label %108

44:                                               ; preds = %20
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.device_node* %45, %struct.device_node** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.device_node*, %struct.device_node** %7, align 8
  %52 = call i32 @of_dma_configure(%struct.TYPE_6__* %50, %struct.device_node* %51, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %57 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @dev_err(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %102

60:                                               ; preds = %44
  %61 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %64 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %65, align 8
  %66 = call %struct.iommu_domain* @iommu_domain_alloc(i32* @platform_bus_type)
  store %struct.iommu_domain* %66, %struct.iommu_domain** %5, align 8
  %67 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %68 = icmp ne %struct.iommu_domain* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %60
  %70 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %71 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @dev_err(%struct.TYPE_6__* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %102

77:                                               ; preds = %60
  %78 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %79 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %80 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @iommu_attach_device(%struct.iommu_domain* %78, %struct.TYPE_6__* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %88 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @dev_err(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %99

92:                                               ; preds = %77
  %93 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %94 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %95 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store %struct.iommu_domain* %93, %struct.iommu_domain** %96, align 8
  %97 = load %struct.device_node*, %struct.device_node** %7, align 8
  %98 = call i32 @of_node_put(%struct.device_node* %97)
  store i32 0, i32* %2, align 4
  br label %108

99:                                               ; preds = %86
  %100 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %101 = call i32 @iommu_domain_free(%struct.iommu_domain* %100)
  br label %102

102:                                              ; preds = %99, %69, %55
  %103 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %104 = call i32 @platform_device_unregister(%struct.platform_device* %103)
  %105 = load %struct.device_node*, %struct.device_node** %7, align 8
  %106 = call i32 @of_node_put(%struct.device_node* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %92, %39, %17
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @memset(%struct.platform_device_info*, i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @of_dma_configure(%struct.TYPE_6__*, %struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.iommu_domain* @iommu_domain_alloc(i32*) #1

declare dso_local i32 @iommu_attach_device(%struct.iommu_domain*, %struct.TYPE_6__*) #1

declare dso_local i32 @iommu_domain_free(%struct.iommu_domain*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
