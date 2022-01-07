; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_device_rtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_device_rtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.pm80x_chip = type { i32 }
%struct.pm80x_platform_data = type { i64 }

@rtc_devs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to add rtc subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm80x_chip*, %struct.pm80x_platform_data*)* @device_rtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_rtc_init(%struct.pm80x_chip* %0, %struct.pm80x_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm80x_chip*, align 8
  %5 = alloca %struct.pm80x_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.pm80x_chip* %0, %struct.pm80x_chip** %4, align 8
  store %struct.pm80x_platform_data* %1, %struct.pm80x_platform_data** %5, align 8
  %7 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %8 = icmp ne %struct.pm80x_platform_data* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %11 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtc_devs, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i64 %12, i64* %15, align 8
  %16 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %5, align 8
  %17 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i64 4, i64 0
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtc_devs, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %26

26:                                               ; preds = %9, %2
  %27 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %28 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtc_devs, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rtc_devs, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %32)
  %34 = call i32 @mfd_add_devices(i32 %29, i32 0, %struct.TYPE_4__* %31, i32 %33, i32* null, i32 0, i32* null)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %39 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
