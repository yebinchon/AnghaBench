; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.platform_device_id = type { i32 }
%struct.osd_state = type { i32*, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@osd_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"OSD sub device probe success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @osd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.platform_device_id*, align 8
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %7)
  store %struct.platform_device_id* %8, %struct.platform_device_id** %4, align 8
  %9 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %10 = icmp ne %struct.platform_device_id* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.osd_state* @devm_kzalloc(i32* %16, i32 32, i32 %17)
  store %struct.osd_state* %18, %struct.osd_state** %5, align 8
  %19 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %20 = icmp eq %struct.osd_state* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %76

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %28 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.platform_device_id*, %struct.platform_device_id** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %33 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %6, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = call i32 @devm_ioremap_resource(i32* %38, %struct.resource* %39)
  %41 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %42 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %44 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %24
  %49 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %50 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %76

53:                                               ; preds = %24
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %58 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = call i32 @resource_size(%struct.resource* %59)
  %61 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %62 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %64 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %63, i32 0, i32 2
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load i32, i32* @osd_ops, align 4
  %67 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %68 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.osd_state* %70)
  %72 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %73 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @dev_notice(i32* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %53, %48, %21, %11
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.osd_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.osd_state*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
