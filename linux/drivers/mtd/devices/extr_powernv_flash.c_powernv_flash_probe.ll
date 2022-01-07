; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_powernv_flash.c_powernv_flash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_powernv_flash.c_powernv_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.powernv_flash = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.powernv_flash* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ibm,opal-id\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"no device property 'ibm,opal-id'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @powernv_flash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_flash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.powernv_flash*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.powernv_flash* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.powernv_flash* %11, %struct.powernv_flash** %5, align 8
  %12 = load %struct.powernv_flash*, %struct.powernv_flash** %5, align 8
  %13 = icmp ne %struct.powernv_flash* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.powernv_flash*, %struct.powernv_flash** %5, align 8
  %19 = load %struct.powernv_flash*, %struct.powernv_flash** %5, align 8
  %20 = getelementptr inbounds %struct.powernv_flash, %struct.powernv_flash* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.powernv_flash* %18, %struct.powernv_flash** %21, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.powernv_flash*, %struct.powernv_flash** %5, align 8
  %26 = getelementptr inbounds %struct.powernv_flash, %struct.powernv_flash* %25, i32 0, i32 1
  %27 = call i32 @of_property_read_u32(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %17
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.powernv_flash*, %struct.powernv_flash** %5, align 8
  %37 = getelementptr inbounds %struct.powernv_flash, %struct.powernv_flash* %36, i32 0, i32 0
  %38 = call i32 @powernv_flash_set_driver_info(%struct.device* %35, %struct.TYPE_3__* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.powernv_flash*, %struct.powernv_flash** %5, align 8
  %46 = call i32 @dev_set_drvdata(%struct.device* %44, %struct.powernv_flash* %45)
  %47 = load %struct.powernv_flash*, %struct.powernv_flash** %5, align 8
  %48 = getelementptr inbounds %struct.powernv_flash, %struct.powernv_flash* %47, i32 0, i32 0
  %49 = call i32 @mtd_device_register(%struct.TYPE_3__* %48, i32* null, i32 0)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %41, %30, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.powernv_flash* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @powernv_flash_set_driver_info(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.powernv_flash*) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_3__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
