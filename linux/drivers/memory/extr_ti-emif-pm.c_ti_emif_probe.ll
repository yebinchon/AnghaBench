; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_ti-emif-pm.c_ti_emif_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_ti-emif-pm.c_ti_emif_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_emif_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ti_emif_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@emif_instance = common dso_local global %struct.ti_emif_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_emif_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_emif_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.ti_emif_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ti_emif_data* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.ti_emif_data* %13, %struct.ti_emif_data** %8, align 8
  %14 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %15 = icmp ne %struct.ti_emif_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %87

19:                                               ; preds = %1
  %20 = load i32, i32* @ti_emif_of_match, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.of_device_id* @of_match_device(i32 %20, %struct.device* %22)
  store %struct.of_device_id* %23, %struct.of_device_id** %7, align 8
  %24 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %25 = icmp ne %struct.of_device_id* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %87

29:                                               ; preds = %19
  %30 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %34 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %5, align 8
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = call i32 @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %43 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %46 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %29
  %52 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %53 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %87

58:                                               ; preds = %29
  %59 = load %struct.resource*, %struct.resource** %5, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %63 = getelementptr inbounds %struct.ti_emif_data, %struct.ti_emif_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %66 = call i32 @ti_emif_configure_sr_delay(%struct.ti_emif_data* %65)
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %69 = call i32 @ti_emif_alloc_sram(%struct.device* %67, %struct.ti_emif_data* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %87

74:                                               ; preds = %58
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %77 = call i32 @ti_emif_push_sram(%struct.device* %75, %struct.ti_emif_data* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %83

81:                                               ; preds = %74
  %82 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  store %struct.ti_emif_data* %82, %struct.ti_emif_data** @emif_instance, align 8
  store i32 0, i32* %2, align 4
  br label %87

83:                                               ; preds = %80
  %84 = load %struct.ti_emif_data*, %struct.ti_emif_data** %8, align 8
  %85 = call i32 @ti_emif_free_sram(%struct.ti_emif_data* %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %81, %72, %51, %26, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.ti_emif_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ti_emif_configure_sr_delay(%struct.ti_emif_data*) #1

declare dso_local i32 @ti_emif_alloc_sram(%struct.device*, %struct.ti_emif_data*) #1

declare dso_local i32 @ti_emif_push_sram(%struct.device*, %struct.ti_emif_data*) #1

declare dso_local i32 @ti_emif_free_sram(%struct.ti_emif_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
