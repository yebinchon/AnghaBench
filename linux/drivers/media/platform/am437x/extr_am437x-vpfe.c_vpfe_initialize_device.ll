; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_initialize_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_initialize_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vpfe_device = type { i64, i32, i32, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { i32 }

@vpfe_standards = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*)* @vpfe_initialize_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_initialize_device(%struct.vpfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca %struct.vpfe_subdev_info*, align 8
  %5 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  %6 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %7 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %6, i32 0, i32 5
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %11 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %10, i64 0
  store %struct.vpfe_subdev_info* %11, %struct.vpfe_subdev_info** %4, align 8
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %13 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %4, align 8
  %18 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %20 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %22 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vpfe_standards, align 8
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vpfe_config_image_format(%struct.vpfe_device* %23, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %1
  %37 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %38 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pm_runtime_get_sync(i32 %39)
  %41 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %42 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %41, i32 0, i32 1
  %43 = call i32 @vpfe_config_enable(i32* %42, i32 1)
  %44 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %45 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %44, i32 0, i32 1
  %46 = call i32 @vpfe_ccdc_restore_defaults(i32* %45)
  %47 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %48 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %47, i32 0, i32 1
  %49 = call i32 @vpfe_clear_intr(i32* %48, i32 -1)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %36, %34
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @vpfe_config_image_format(%struct.vpfe_device*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @vpfe_config_enable(i32*, i32) #1

declare dso_local i32 @vpfe_ccdc_restore_defaults(i32*) #1

declare dso_local i32 @vpfe_clear_intr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
