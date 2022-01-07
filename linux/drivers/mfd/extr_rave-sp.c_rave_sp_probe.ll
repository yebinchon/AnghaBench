; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rave_sp = type { i8*, i8*, i32, i32, i32, i32, %struct.serdev_device* }

@.str = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"'current-speed' is not specified in device node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@rave_sp_serdev_device_ops = common dso_local global i32 0, align 4
@SERDEV_PARITY_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to set parity\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to get firmware status: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Firmware version: %s\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Bootloader version: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @rave_sp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rave_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %9 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %10 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @of_property_read_u32(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.rave_sp* @devm_kzalloc(%struct.device* %22, i32 40, i32 %23)
  store %struct.rave_sp* %24, %struct.rave_sp** %6, align 8
  %25 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %26 = icmp ne %struct.rave_sp* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %110

30:                                               ; preds = %21
  %31 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %32 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %33 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %32, i32 0, i32 6
  store %struct.serdev_device* %31, %struct.serdev_device** %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %36 = call i32 @dev_set_drvdata(%struct.device* %34, %struct.rave_sp* %35)
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @of_device_get_match_data(%struct.device* %37)
  %39 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %40 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %42 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %110

48:                                               ; preds = %30
  %49 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %50 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %49, i32 0, i32 4
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %53 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %52, i32 0, i32 3
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %56 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %55, i32 0, i32 2
  %57 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %56)
  %58 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %59 = call i32 @serdev_device_set_client_ops(%struct.serdev_device* %58, i32* @rave_sp_serdev_device_ops)
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %62 = call i32 @devm_serdev_device_open(%struct.device* %60, %struct.serdev_device* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %110

67:                                               ; preds = %48
  %68 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @serdev_device_set_baudrate(%struct.serdev_device* %68, i32 %69)
  %71 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %72 = call i32 @serdev_device_set_flow_control(%struct.serdev_device* %71, i32 0)
  %73 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %74 = load i32, i32* @SERDEV_PARITY_NONE, align 4
  %75 = call i32 @serdev_device_set_parity(%struct.serdev_device* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %110

82:                                               ; preds = %67
  %83 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %84 = call i32 @rave_sp_get_status(%struct.rave_sp* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dev_warn(%struct.device* %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %5, align 8
  %92 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %93 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %96 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %87, %82
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %100 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @dev_info(%struct.device* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.rave_sp*, %struct.rave_sp** %6, align 8
  %105 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @dev_info(%struct.device* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %106)
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 @devm_of_platform_populate(%struct.device* %108)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %97, %78, %65, %45, %27, %16
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.rave_sp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.rave_sp*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @serdev_device_set_client_ops(%struct.serdev_device*, i32*) #1

declare dso_local i32 @devm_serdev_device_open(%struct.device*, %struct.serdev_device*) #1

declare dso_local i32 @serdev_device_set_baudrate(%struct.serdev_device*, i32) #1

declare dso_local i32 @serdev_device_set_flow_control(%struct.serdev_device*, i32) #1

declare dso_local i32 @serdev_device_set_parity(%struct.serdev_device*, i32) #1

declare dso_local i32 @rave_sp_get_status(%struct.rave_sp*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
