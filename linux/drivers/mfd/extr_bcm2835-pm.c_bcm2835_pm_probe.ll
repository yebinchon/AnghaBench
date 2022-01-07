; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_bcm2835-pm.c_bcm2835_pm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_bcm2835-pm.c_bcm2835_pm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.bcm2835_pm = type { i8*, i8*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@bcm2835_pm_devs = common dso_local global i32 0, align 4
@bcm2835_power_devs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_pm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bcm2835_pm*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.bcm2835_pm* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.bcm2835_pm* %12, %struct.bcm2835_pm** %6, align 8
  %13 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %14 = icmp ne %struct.bcm2835_pm* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.bcm2835_pm* %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %24 = getelementptr inbounds %struct.bcm2835_pm, %struct.bcm2835_pm* %23, i32 0, i32 2
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %4, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = call i8* @devm_ioremap_resource(%struct.device* %28, %struct.resource* %29)
  %31 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %32 = getelementptr inbounds %struct.bcm2835_pm, %struct.bcm2835_pm* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %34 = getelementptr inbounds %struct.bcm2835_pm, %struct.bcm2835_pm* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %40 = getelementptr inbounds %struct.bcm2835_pm, %struct.bcm2835_pm* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %87

43:                                               ; preds = %18
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* @bcm2835_pm_devs, align 4
  %46 = load i32, i32* @bcm2835_pm_devs, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @devm_mfd_add_devices(%struct.device* %44, i32 -1, i32 %45, i32 %47, i32* null, i32 0, i32* null)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %87

53:                                               ; preds = %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* @IORESOURCE_MEM, align 4
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %54, i32 %55, i32 1)
  store %struct.resource* %56, %struct.resource** %4, align 8
  %57 = load %struct.resource*, %struct.resource** %4, align 8
  %58 = icmp ne %struct.resource* %57, null
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.resource*, %struct.resource** %4, align 8
  %62 = call i8* @devm_ioremap_resource(%struct.device* %60, %struct.resource* %61)
  %63 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %64 = getelementptr inbounds %struct.bcm2835_pm, %struct.bcm2835_pm* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %66 = getelementptr inbounds %struct.bcm2835_pm, %struct.bcm2835_pm* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.bcm2835_pm*, %struct.bcm2835_pm** %6, align 8
  %72 = getelementptr inbounds %struct.bcm2835_pm, %struct.bcm2835_pm* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %2, align 4
  br label %87

75:                                               ; preds = %59
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load i32, i32* @bcm2835_power_devs, align 4
  %78 = load i32, i32* @bcm2835_power_devs, align 4
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = call i32 @devm_mfd_add_devices(%struct.device* %76, i32 -1, i32 %77, i32 %79, i32* null, i32 0, i32* null)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %87

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %53
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %83, %70, %51, %38, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.bcm2835_pm* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm2835_pm*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
