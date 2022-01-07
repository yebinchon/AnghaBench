; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vtc.c_xvtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vtc.c_xvtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xvtc_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xvtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xvtc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.xvtc_device* @devm_kzalloc(i32* %7, i32 8, i32 %8)
  store %struct.xvtc_device* %9, %struct.xvtc_device** %4, align 8
  %10 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %11 = icmp ne %struct.xvtc_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %19 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32* %17, i32** %20, align 8
  %21 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %22 = call i32 @xvtc_parse_of(%struct.xvtc_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %15
  %28 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %29 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %28, i32 0, i32 0
  %30 = call i32 @xvip_init_resources(%struct.TYPE_3__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.xvtc_device* %37)
  %39 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %40 = getelementptr inbounds %struct.xvtc_device, %struct.xvtc_device* %39, i32 0, i32 0
  %41 = call i32 @xvip_print_version(%struct.TYPE_3__* %40)
  %42 = load %struct.xvtc_device*, %struct.xvtc_device** %4, align 8
  %43 = call i32 @xvtc_register_device(%struct.xvtc_device* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %33, %25, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.xvtc_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @xvtc_parse_of(%struct.xvtc_device*) #1

declare dso_local i32 @xvip_init_resources(%struct.TYPE_3__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xvtc_device*) #1

declare dso_local i32 @xvip_print_version(%struct.TYPE_3__*) #1

declare dso_local i32 @xvtc_register_device(%struct.xvtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
