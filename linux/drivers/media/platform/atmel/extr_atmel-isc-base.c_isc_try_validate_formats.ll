; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_try_validate_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_try_validate_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Format validation, requested rgb=%u, yuv=%u, grey=%u, bayer=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*)* @isc_try_validate_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_try_validate_formats(%struct.isc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %10 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %17 [
    i32 141, label %13
    i32 138, label %13
    i32 135, label %13
    i32 132, label %13
    i32 143, label %13
    i32 140, label %13
    i32 137, label %13
    i32 134, label %13
    i32 142, label %13
    i32 139, label %13
    i32 136, label %13
    i32 133, label %13
    i32 130, label %14
    i32 129, label %14
    i32 128, label %14
    i32 144, label %15
    i32 148, label %15
    i32 131, label %15
    i32 147, label %15
    i32 146, label %15
    i32 145, label %16
  ]

13:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %20

14:                                               ; preds = %1, %1, %1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %20

15:                                               ; preds = %1, %1, %1, %1, %1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %7, align 4
  br label %20

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %8, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %16, %15, %14, %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23, %20
  %27 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %28 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ISC_IS_FORMAT_RAW(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %26, %23
  %39 = load i32, i32* @debug, align 4
  %40 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %41 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @v4l2_dbg(i32 1, i32 %39, i32* %41, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %38, %35
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ISC_IS_FORMAT_RAW(i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
