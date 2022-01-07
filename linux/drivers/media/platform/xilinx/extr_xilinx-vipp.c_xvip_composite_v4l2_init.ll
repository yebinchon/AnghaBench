; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_composite_v4l2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vipp.c_xvip_composite_v4l2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_composite_device = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [30 x i8] c"Xilinx Video Composite Device\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"V4L2 device registration failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvip_composite_device*)* @xvip_composite_v4l2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvip_composite_v4l2_init(%struct.xvip_composite_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xvip_composite_device*, align 8
  %4 = alloca i32, align 4
  store %struct.xvip_composite_device* %0, %struct.xvip_composite_device** %3, align 8
  %5 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %6 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %9 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %12 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @strscpy(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %17 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %20 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %19, i32 0, i32 0
  %21 = call i32 @media_device_init(%struct.TYPE_5__* %20)
  %22 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %23 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %22, i32 0, i32 0
  %24 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %25 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %28 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %31 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %30, i32 0, i32 2
  %32 = call i32 @v4l2_device_register(i32 %29, %struct.TYPE_4__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %1
  %36 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %37 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %3, align 8
  %42 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %41, i32 0, i32 0
  %43 = call i32 @media_device_cleanup(%struct.TYPE_5__* %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @media_device_init(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_device_register(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @media_device_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
