; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mfd-core.c_mfd_remove_devices_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mfd-core.c_mfd_remove_devices_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.platform_device = type { i32 }
%struct.mfd_cell = type { i32*, i32, i32 }

@mfd_dev_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @mfd_remove_devices_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfd_remove_devices_fn(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.mfd_cell*, align 8
  %8 = alloca i32**, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32**
  store i32** %10, i32*** %8, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, @mfd_dev_type
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.platform_device* @to_platform_device(%struct.device* %17)
  store %struct.platform_device* %18, %struct.platform_device** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %20 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %19)
  store %struct.mfd_cell* %20, %struct.mfd_cell** %7, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %23 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %26 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regulator_bulk_unregister_supply_alias(%struct.device* %21, i32 %24, i32 %27)
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %16
  %33 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %34 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32**, i32*** %8, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ult i32* %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32, %16
  %40 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %41 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** %8, align 8
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %39, %32
  %45 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %46 = call i32 @platform_device_unregister(%struct.platform_device* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local i32 @regulator_bulk_unregister_supply_alias(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
