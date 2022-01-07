; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_lm3533_device_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_lm3533_device_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.lm3533 = type { i32, i32 }
%struct.lm3533_platform_data = type { i32, i32* }

@lm3533_led_devs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed to add LED devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3533*)* @lm3533_device_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3533_device_led_init(%struct.lm3533* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3533*, align 8
  %4 = alloca %struct.lm3533_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lm3533* %0, %struct.lm3533** %3, align 8
  %7 = load %struct.lm3533*, %struct.lm3533** %3, align 8
  %8 = getelementptr inbounds %struct.lm3533, %struct.lm3533* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.lm3533_platform_data* @dev_get_platdata(i32 %9)
  store %struct.lm3533_platform_data* %10, %struct.lm3533_platform_data** %4, align 8
  %11 = load %struct.lm3533_platform_data*, %struct.lm3533_platform_data** %4, align 8
  %12 = getelementptr inbounds %struct.lm3533_platform_data, %struct.lm3533_platform_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.lm3533_platform_data*, %struct.lm3533_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.lm3533_platform_data, %struct.lm3533_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %80

21:                                               ; preds = %15
  %22 = load %struct.lm3533_platform_data*, %struct.lm3533_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.lm3533_platform_data, %struct.lm3533_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lm3533_led_devs, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %25)
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lm3533_led_devs, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %29)
  %31 = load %struct.lm3533_platform_data*, %struct.lm3533_platform_data** %4, align 8
  %32 = getelementptr inbounds %struct.lm3533_platform_data, %struct.lm3533_platform_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %21
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.lm3533_platform_data*, %struct.lm3533_platform_data** %4, align 8
  %37 = getelementptr inbounds %struct.lm3533_platform_data, %struct.lm3533_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.lm3533_platform_data*, %struct.lm3533_platform_data** %4, align 8
  %42 = getelementptr inbounds %struct.lm3533_platform_data, %struct.lm3533_platform_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lm3533_led_devs, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32* %46, i32** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lm3533_led_devs, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  br label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load %struct.lm3533*, %struct.lm3533** %3, align 8
  %62 = getelementptr inbounds %struct.lm3533, %struct.lm3533* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lm3533_led_devs, align 8
  %65 = load %struct.lm3533_platform_data*, %struct.lm3533_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.lm3533_platform_data, %struct.lm3533_platform_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @mfd_add_devices(i32 %63, i32 0, %struct.TYPE_4__* %64, i32 %67, i32* null, i32 0, i32* null)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.lm3533*, %struct.lm3533** %3, align 8
  %73 = getelementptr inbounds %struct.lm3533, %struct.lm3533* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %80

77:                                               ; preds = %60
  %78 = load %struct.lm3533*, %struct.lm3533** %3, align 8
  %79 = getelementptr inbounds %struct.lm3533, %struct.lm3533* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %71, %20
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.lm3533_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
