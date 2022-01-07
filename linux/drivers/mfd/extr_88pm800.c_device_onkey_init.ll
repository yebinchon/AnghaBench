; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_device_onkey_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_device_onkey_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm80x_chip = type { i32 }
%struct.pm80x_platform_data = type { i32 }

@onkey_devs = common dso_local global i32* null, align 8
@onkey_resources = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to add onkey subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm80x_chip*, %struct.pm80x_platform_data*)* @device_onkey_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_onkey_init(%struct.pm80x_chip* %0, %struct.pm80x_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm80x_chip*, align 8
  %5 = alloca %struct.pm80x_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.pm80x_chip* %0, %struct.pm80x_chip** %4, align 8
  store %struct.pm80x_platform_data* %1, %struct.pm80x_platform_data** %5, align 8
  %7 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %8 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @onkey_devs, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32*, i32** @onkey_devs, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = load i32*, i32** @onkey_resources, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @mfd_add_devices(i32 %9, i32 0, i32* %11, i32 %13, i32* %15, i32 0, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.pm80x_chip*, %struct.pm80x_chip** %4, align 8
  %21 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @mfd_add_devices(i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
