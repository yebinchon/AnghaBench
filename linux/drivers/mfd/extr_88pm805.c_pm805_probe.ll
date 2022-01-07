; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm805.c_pm805_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm805.c_pm805_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pm80x_chip = type { i32* }
%struct.pm80x_platform_data = type { i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)* }
%struct.pm80x_chip.0 = type opaque

@.str = private unnamed_addr constant [18 x i8] c"pm805_init fail!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to initialize 88pm805 devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pm805_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm805_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pm80x_chip*, align 8
  %7 = alloca %struct.pm80x_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = call %struct.pm80x_platform_data* @dev_get_platdata(i32* %9)
  store %struct.pm80x_platform_data* %10, %struct.pm80x_platform_data** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call i32 @pm80x_init(%struct.i2c_client* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = call %struct.pm80x_chip* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.pm80x_chip* %21, %struct.pm80x_chip** %6, align 8
  %22 = load %struct.pm80x_chip*, %struct.pm80x_chip** %6, align 8
  %23 = call i32 @device_805_init(%struct.pm80x_chip* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.pm80x_chip*, %struct.pm80x_chip** %6, align 8
  %28 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %48

31:                                               ; preds = %19
  %32 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %7, align 8
  %33 = icmp ne %struct.pm80x_platform_data* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %7, align 8
  %36 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %35, i32 0, i32 0
  %37 = load i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)*, i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)** %36, align 8
  %38 = icmp ne i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %7, align 8
  %41 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %40, i32 0, i32 0
  %42 = load i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)*, i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)** %41, align 8
  %43 = load %struct.pm80x_chip*, %struct.pm80x_chip** %6, align 8
  %44 = bitcast %struct.pm80x_chip* %43 to %struct.pm80x_chip.0*
  %45 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %7, align 8
  %46 = call i32 %42(%struct.pm80x_chip.0* %44, %struct.pm80x_platform_data* %45)
  br label %47

47:                                               ; preds = %39, %34, %31
  br label %48

48:                                               ; preds = %47, %26
  %49 = call i32 (...) @pm80x_deinit()
  br label %50

50:                                               ; preds = %48, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.pm80x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @pm80x_init(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.pm80x_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @device_805_init(%struct.pm80x_chip*) #1

declare dso_local i32 @pm80x_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
