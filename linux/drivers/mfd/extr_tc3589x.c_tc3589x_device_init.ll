; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc3589x = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TC3589x_BLOCK_GPIO = common dso_local global i32 0, align 4
@tc3589x_dev_gpio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to add gpio child\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"added gpio block\0A\00", align 1
@TC3589x_BLOCK_KEYPAD = common dso_local global i32 0, align 4
@tc3589x_dev_keypad = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to keypad child\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"added keypad block\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc3589x*)* @tc3589x_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_device_init(%struct.tc3589x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc3589x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tc3589x* %0, %struct.tc3589x** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %7 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TC3589x_BLOCK_GPIO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %17 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @tc3589x_dev_gpio, align 4
  %20 = load i32, i32* @tc3589x_dev_gpio, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %23 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mfd_add_devices(i32 %18, i32 -1, i32 %19, i32 %21, i32* null, i32 0, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %30 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %70

34:                                               ; preds = %15
  %35 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %36 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TC3589x_BLOCK_KEYPAD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %46 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @tc3589x_dev_keypad, align 4
  %49 = load i32, i32* @tc3589x_dev_keypad, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %52 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mfd_add_devices(i32 %47, i32 -1, i32 %48, i32 %50, i32* null, i32 0, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %59 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %70

63:                                               ; preds = %44
  %64 = load %struct.tc3589x*, %struct.tc3589x** %3, align 8
  %65 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_info(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %39
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %57, %28
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @mfd_add_devices(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
