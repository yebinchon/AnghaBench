; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_am654.c_sdhci_am654_get_of_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci_am654.c_sdhci_am654_get_of_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sdhci_am654_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ti,otap-del-sel\00", align 1
@DLL_PRESENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ti,trm-icp\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ti,driver-strength-ohm\00", align 1
@DRIVER_STRENGTH_50_OHM = common dso_local global i32 0, align 4
@DRIVER_STRENGTH_33_OHM = common dso_local global i32 0, align 4
@DRIVER_STRENGTH_66_OHM = common dso_local global i32 0, align 4
@DRIVER_STRENGTH_100_OHM = common dso_local global i32 0, align 4
@DRIVER_STRENGTH_40_OHM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid driver strength\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"ti,strobe-sel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.sdhci_am654_data*)* @sdhci_am654_get_of_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_am654_get_of_property(%struct.platform_device* %0, %struct.sdhci_am654_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.sdhci_am654_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.sdhci_am654_data* %1, %struct.sdhci_am654_data** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %13 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %12, i32 0, i32 0
  %14 = call i32 @device_property_read_u32(%struct.device* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %2
  %20 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %21 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DLL_PRESENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %29 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %28, i32 0, i32 2
  %30 = call i32 @device_property_read_u32(%struct.device* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %77

35:                                               ; preds = %26
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @device_property_read_u32(%struct.device* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %64 [
    i32 50, label %44
    i32 33, label %48
    i32 66, label %52
    i32 100, label %56
    i32 40, label %60
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @DRIVER_STRENGTH_50_OHM, align 4
  %46 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %47 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  br label %69

48:                                               ; preds = %42
  %49 = load i32, i32* @DRIVER_STRENGTH_33_OHM, align 4
  %50 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %51 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %69

52:                                               ; preds = %42
  %53 = load i32, i32* @DRIVER_STRENGTH_66_OHM, align 4
  %54 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %55 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  br label %69

56:                                               ; preds = %42
  %57 = load i32, i32* @DRIVER_STRENGTH_100_OHM, align 4
  %58 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %59 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  br label %69

60:                                               ; preds = %42
  %61 = load i32, i32* @DRIVER_STRENGTH_40_OHM, align 4
  %62 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %63 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  br label %69

64:                                               ; preds = %42
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %60, %56, %52, %48, %44
  br label %70

70:                                               ; preds = %69, %19
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load %struct.sdhci_am654_data*, %struct.sdhci_am654_data** %5, align 8
  %73 = getelementptr inbounds %struct.sdhci_am654_data, %struct.sdhci_am654_data* %72, i32 0, i32 3
  %74 = call i32 @device_property_read_u32(%struct.device* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %73)
  %75 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %76 = call i32 @sdhci_get_of_property(%struct.platform_device* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %64, %40, %33, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
