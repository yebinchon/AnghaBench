; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_alloc_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_alloc_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.usbhs_omap_platform_data = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ehci\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"EHCI get resource IORESOURCE_MEM failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ehci-irq\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c" EHCI get resource IORESOURCE_IRQ failed\0A\00", align 1
@OMAP_EHCI_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"omap_usbhs_alloc_child failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"ohci\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"OHCI get resource IORESOURCE_MEM failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ohci-irq\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"OHCI get resource IORESOURCE_IRQ failed\0A\00", align 1
@OMAP_OHCI_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_usbhs_alloc_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_usbhs_alloc_children(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usbhs_omap_platform_data*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca [2 x %struct.resource], align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.usbhs_omap_platform_data* @dev_get_platdata(%struct.device* %13)
  store %struct.usbhs_omap_platform_data* %14, %struct.usbhs_omap_platform_data** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %17, %struct.resource** %8, align 8
  %18 = load %struct.resource*, %struct.resource** %8, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %104

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %9, i64 0, i64 0
  %27 = load %struct.resource*, %struct.resource** %8, align 8
  %28 = bitcast %struct.resource* %26 to i8*
  %29 = bitcast %struct.resource* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_IRQ, align 4
  %32 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %30, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %32, %struct.resource** %8, align 8
  %33 = load %struct.resource*, %struct.resource** %8, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %104

40:                                               ; preds = %25
  %41 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %9, i64 0, i64 1
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = bitcast %struct.resource* %41 to i8*
  %44 = bitcast %struct.resource* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load i32, i32* @OMAP_EHCI_DEVICE, align 4
  %46 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %9, i64 0, i64 0
  %47 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call %struct.platform_device* @omap_usbhs_alloc_child(i32 %45, %struct.resource* %46, i32 2, %struct.usbhs_omap_platform_data* %47, i32 4, %struct.device* %48)
  store %struct.platform_device* %49, %struct.platform_device** %6, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %51 = icmp ne %struct.platform_device* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %40
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %104

57:                                               ; preds = %40
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %58, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store %struct.resource* %60, %struct.resource** %8, align 8
  %61 = load %struct.resource*, %struct.resource** %8, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %101

68:                                               ; preds = %57
  %69 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %9, i64 0, i64 0
  %70 = load %struct.resource*, %struct.resource** %8, align 8
  %71 = bitcast %struct.resource* %69 to i8*
  %72 = bitcast %struct.resource* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load i32, i32* @IORESOURCE_IRQ, align 4
  %75 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %73, i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store %struct.resource* %75, %struct.resource** %8, align 8
  %76 = load %struct.resource*, %struct.resource** %8, align 8
  %77 = icmp ne %struct.resource* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %68
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %101

83:                                               ; preds = %68
  %84 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %9, i64 0, i64 1
  %85 = load %struct.resource*, %struct.resource** %8, align 8
  %86 = bitcast %struct.resource* %84 to i8*
  %87 = bitcast %struct.resource* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  %88 = load i32, i32* @OMAP_OHCI_DEVICE, align 4
  %89 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %9, i64 0, i64 0
  %90 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call %struct.platform_device* @omap_usbhs_alloc_child(i32 %88, %struct.resource* %89, i32 2, %struct.usbhs_omap_platform_data* %90, i32 4, %struct.device* %91)
  store %struct.platform_device* %92, %struct.platform_device** %7, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %94 = icmp ne %struct.platform_device* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %83
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %101

100:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %106

101:                                              ; preds = %95, %78, %63
  %102 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %103 = call i32 @platform_device_unregister(%struct.platform_device* %102)
  br label %104

104:                                              ; preds = %101, %52, %35, %20
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.usbhs_omap_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.platform_device* @omap_usbhs_alloc_child(i32, %struct.resource*, i32, %struct.usbhs_omap_platform_data*, i32, %struct.device*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
