; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.pm860x_chip = type { i32 }
%struct.pm860x_platform_data = type { i32, i32* }

@led_devs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to add led subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_chip*, %struct.pm860x_platform_data*)* @device_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_led_init(%struct.pm860x_chip* %0, %struct.pm860x_platform_data* %1) #0 {
  %3 = alloca %struct.pm860x_chip*, align 8
  %4 = alloca %struct.pm860x_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %3, align 8
  store %struct.pm860x_platform_data* %1, %struct.pm860x_platform_data** %4, align 8
  %7 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %8 = icmp ne %struct.pm860x_platform_data* %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %2
  %10 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %9
  %15 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_devs, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %18)
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_devs, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %22)
  %24 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %14
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %4, align 8
  %35 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_devs, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32* %39, i32** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_devs, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 4, i32* %49, align 8
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %27

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53, %9, %2
  %55 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %56 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_devs, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @led_devs, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %59)
  %61 = call i32 @mfd_add_devices(i32 %57, i32 0, %struct.TYPE_4__* %58, i32 %60, i32* null, i32 0, i32* null)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %66 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %54
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
