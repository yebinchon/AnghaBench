; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vpfe_config = type { i32 }
%struct.vpfe_device = type { i32, %struct.TYPE_5__, i32, i32, %struct.vpfe_config*, i32*, %struct.vpfe_ccdc }
%struct.TYPE_5__ = type { i32* }
%struct.vpfe_ccdc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@vpfe_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"vpfe_capture0\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to request interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to register v4l2 device.\0A\00", align 1
@vpfe_async_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Error registering async notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpfe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vpfe_config*, align 8
  %5 = alloca %struct.vpfe_device*, align 8
  %6 = alloca %struct.vpfe_ccdc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vpfe_device* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.vpfe_device* %12, %struct.vpfe_device** %5, align 8
  %13 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %14 = icmp ne %struct.vpfe_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %161

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %22 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %21, i32 0, i32 5
  store i32* %20, i32** %22, align 8
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %24 = call %struct.vpfe_config* @vpfe_get_pdata(%struct.vpfe_device* %23)
  store %struct.vpfe_config* %24, %struct.vpfe_config** %4, align 8
  %25 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %26 = icmp ne %struct.vpfe_config* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %161

33:                                               ; preds = %18
  %34 = load %struct.vpfe_config*, %struct.vpfe_config** %4, align 8
  %35 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %36 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %35, i32 0, i32 4
  store %struct.vpfe_config* %34, %struct.vpfe_config** %36, align 8
  %37 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %38 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %37, i32 0, i32 6
  store %struct.vpfe_ccdc* %38, %struct.vpfe_ccdc** %6, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %7, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = call i32 @devm_ioremap_resource(i32* %43, %struct.resource* %44)
  %46 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %6, align 8
  %47 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %6, align 8
  %50 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %33
  %56 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %6, align 8
  %57 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %8, align 4
  br label %156

61:                                               ; preds = %33
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = call i32 @platform_get_irq(%struct.platform_device* %62, i32 0)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %156

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %72 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %74 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %77 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @vpfe_isr, align 4
  %80 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %81 = call i32 @devm_request_irq(i32* %75, i32 %78, i32 %79, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.vpfe_device* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %69
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %156

90:                                               ; preds = %69
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %94 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %93, i32 0, i32 2
  %95 = call i32 @v4l2_device_register(i32* %92, i32* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %100 = call i32 @vpfe_err(%struct.vpfe_device* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %156

101:                                              ; preds = %90
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.vpfe_device* %103)
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @pm_runtime_enable(i32* %106)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @pm_runtime_get_sync(i32* %109)
  %111 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %6, align 8
  %112 = call i32 @vpfe_ccdc_config_defaults(%struct.vpfe_ccdc* %111)
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @pm_runtime_put_sync(i32* %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %119 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %118, i32 0, i32 4
  %120 = load %struct.vpfe_config*, %struct.vpfe_config** %119, align 8
  %121 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ARRAY_SIZE(i32 %122)
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i32 @devm_kcalloc(i32* %117, i32 %123, i32 8, i32 %124)
  %126 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %127 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %129 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %101
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %8, align 4
  br label %152

135:                                              ; preds = %101
  %136 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %137 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32* @vpfe_async_ops, i32** %138, align 8
  %139 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %140 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %139, i32 0, i32 2
  %141 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %142 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %141, i32 0, i32 1
  %143 = call i32 @v4l2_async_notifier_register(i32* %140, %struct.TYPE_5__* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %135
  %147 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %148 = call i32 @vpfe_err(%struct.vpfe_device* %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %8, align 4
  br label %152

151:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %161

152:                                              ; preds = %146, %132
  %153 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %154 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %153, i32 0, i32 2
  %155 = call i32 @v4l2_device_unregister(i32* %154)
  br label %156

156:                                              ; preds = %152, %98, %84, %66, %55
  %157 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %158 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %157, i32 0, i32 1
  %159 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_5__* %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %156, %151, %27, %15
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.vpfe_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.vpfe_config* @vpfe_get_pdata(%struct.vpfe_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.vpfe_device*) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local i32 @vpfe_err(%struct.vpfe_device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vpfe_device*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @vpfe_ccdc_config_defaults(%struct.vpfe_ccdc*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
