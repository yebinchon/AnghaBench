; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_get_scratch_page_versions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_get_scratch_page_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCRATCH_REPORT = common dso_local global i32 0, align 4
@SCRATCH_REPORT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"si470x_get_scratch: si470x_get_report returned %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*)* @si470x_get_scratch_page_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_get_scratch_page_versions(%struct.si470x_device* %0) #0 {
  %2 = alloca %struct.si470x_device*, align 8
  %3 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %2, align 8
  %4 = load i32, i32* @SCRATCH_REPORT, align 4
  %5 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %6 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %4, i32* %8, align 4
  %9 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %10 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %11 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @SCRATCH_REPORT_SIZE, align 4
  %14 = call i32 @si470x_get_report(%struct.si470x_device* %9, i32* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %19 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %26 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %31 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %33 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %38 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %24, %17
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  ret i32 %47
}

declare dso_local i32 @si470x_get_report(%struct.si470x_device*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
