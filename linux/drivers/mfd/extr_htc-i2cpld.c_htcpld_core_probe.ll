; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.htcpld_data = type { i64, i64, i32 }
%struct.htcpld_core_platform_data = type { i64, i64 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Platform data not found for htcpld core!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@htcpld_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to setup chained irq handler: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"htcpld-core\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Unable to request int_reset_gpio_hi -- interrupts may not work\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Unable to request int_reset_gpio_lo -- interrupts may not work\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Initialized successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @htcpld_core_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpld_core_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.htcpld_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.htcpld_core_platform_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %143

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.htcpld_core_platform_data* @dev_get_platdata(%struct.device* %18)
  store %struct.htcpld_core_platform_data* %19, %struct.htcpld_core_platform_data** %6, align 8
  %20 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %21 = icmp ne %struct.htcpld_core_platform_data* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %143

27:                                               ; preds = %17
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.htcpld_data* @devm_kzalloc(%struct.device* %28, i32 24, i32 %29)
  store %struct.htcpld_data* %30, %struct.htcpld_data** %4, align 8
  %31 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %32 = icmp ne %struct.htcpld_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %143

36:                                               ; preds = %27
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_IRQ, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %7, align 8
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = icmp ne %struct.resource* %40, null
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %47 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %49 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IRQF_ONESHOT, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %54 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @htcpld_handler, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %62 = call i32 @request_threaded_irq(i32 %55, i32* null, i32 %56, i32 %57, i32 %60, %struct.htcpld_data* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %42
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %143

70:                                               ; preds = %42
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 @device_init_wakeup(%struct.device* %71, i32 0)
  br label %73

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73, %36
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.htcpld_data* %76)
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = call i32 @htcpld_setup_chips(%struct.platform_device* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %143

84:                                               ; preds = %74
  %85 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %86 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %84
  %90 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %91 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @gpio_request(i64 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %97, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %100 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  br label %111

101:                                              ; preds = %89
  %102 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %103 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %106 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %108 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @gpio_set_value(i64 %109, i32 1)
  br label %111

111:                                              ; preds = %101, %96
  br label %112

112:                                              ; preds = %111, %84
  %113 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %114 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %112
  %118 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %119 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @gpio_request(i64 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %125, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %128 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %139

129:                                              ; preds = %117
  %130 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %6, align 8
  %131 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %134 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.htcpld_data*, %struct.htcpld_data** %4, align 8
  %136 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @gpio_set_value(i64 %137, i32 0)
  br label %139

139:                                              ; preds = %129, %124
  br label %140

140:                                              ; preds = %139, %112
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = call i32 @dev_info(%struct.device* %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %82, %65, %33, %22, %14
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.htcpld_core_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local %struct.htcpld_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.htcpld_data*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.htcpld_data*) #1

declare dso_local i32 @htcpld_setup_chips(%struct.platform_device*) #1

declare dso_local i32 @gpio_request(i64, i8*) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
