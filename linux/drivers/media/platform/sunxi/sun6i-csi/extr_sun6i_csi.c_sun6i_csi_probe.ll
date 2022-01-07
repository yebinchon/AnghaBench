; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sun6i_csi_dev = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PHYS_OFFSET = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun6i_csi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_csi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sun6i_csi_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sun6i_csi_dev* @devm_kzalloc(%struct.TYPE_4__* %7, i32 16, i32 %8)
  store %struct.sun6i_csi_dev* %9, %struct.sun6i_csi_dev** %4, align 8
  %10 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %4, align 8
  %11 = icmp ne %struct.sun6i_csi_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %4, align 8
  %19 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %18, i32 0, i32 1
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load i32, i32* @PHYS_OFFSET, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %4, align 8
  %24 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %4, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @sun6i_csi_resource_request(%struct.sun6i_csi_dev* %27, %struct.platform_device* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %15
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %15
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %4, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.sun6i_csi_dev* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %4, align 8
  %41 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %4, align 8
  %44 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %43, i32 0, i32 0
  %45 = call i32 @sun6i_csi_v4l2_init(%struct.TYPE_3__* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %32, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.sun6i_csi_dev* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @sun6i_csi_resource_request(%struct.sun6i_csi_dev*, %struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sun6i_csi_dev*) #1

declare dso_local i32 @sun6i_csi_v4l2_init(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
