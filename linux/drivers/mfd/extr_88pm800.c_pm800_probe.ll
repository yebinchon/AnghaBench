; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_pm800_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_pm800_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.pm80x_chip = type { i32*, %struct.pm80x_subchip* }
%struct.pm80x_subchip = type { i64, i64 }
%struct.pm80x_platform_data = type { i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)* }
%struct.pm80x_chip.0 = type opaque

@.str = private unnamed_addr constant [17 x i8] c"pm800_init fail\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"pm800_pages_init failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to initialize 88pm800 devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pm800_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm800_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm80x_chip*, align 8
  %8 = alloca %struct.pm80x_platform_data*, align 8
  %9 = alloca %struct.pm80x_subchip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.pm80x_platform_data* @dev_get_platdata(i32* %11)
  store %struct.pm80x_platform_data* %12, %struct.pm80x_platform_data** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call i32 @pm80x_init(%struct.i2c_client* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call %struct.pm80x_chip* @i2c_get_clientdata(%struct.i2c_client* %22)
  store %struct.pm80x_chip* %23, %struct.pm80x_chip** %7, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.pm80x_subchip* @devm_kzalloc(i32* %25, i32 16, i32 %26)
  store %struct.pm80x_subchip* %27, %struct.pm80x_subchip** %9, align 8
  %28 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %9, align 8
  %29 = icmp ne %struct.pm80x_subchip* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %88

33:                                               ; preds = %21
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %9, align 8
  %39 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 2
  %44 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %9, align 8
  %45 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %9, align 8
  %47 = load %struct.pm80x_chip*, %struct.pm80x_chip** %7, align 8
  %48 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %47, i32 0, i32 1
  store %struct.pm80x_subchip* %46, %struct.pm80x_subchip** %48, align 8
  %49 = load %struct.pm80x_chip*, %struct.pm80x_chip** %7, align 8
  %50 = call i32 @pm800_pages_init(%struct.pm80x_chip* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %33
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %85

57:                                               ; preds = %33
  %58 = load %struct.pm80x_chip*, %struct.pm80x_chip** %7, align 8
  %59 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %8, align 8
  %60 = call i32 @device_800_init(%struct.pm80x_chip* %58, %struct.pm80x_platform_data* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.pm80x_chip*, %struct.pm80x_chip** %7, align 8
  %65 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %85

68:                                               ; preds = %57
  %69 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %8, align 8
  %70 = icmp ne %struct.pm80x_platform_data* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %8, align 8
  %73 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %72, i32 0, i32 0
  %74 = load i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)*, i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)** %73, align 8
  %75 = icmp ne i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %8, align 8
  %78 = getelementptr inbounds %struct.pm80x_platform_data, %struct.pm80x_platform_data* %77, i32 0, i32 0
  %79 = load i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)*, i32 (%struct.pm80x_chip.0*, %struct.pm80x_platform_data*)** %78, align 8
  %80 = load %struct.pm80x_chip*, %struct.pm80x_chip** %7, align 8
  %81 = bitcast %struct.pm80x_chip* %80 to %struct.pm80x_chip.0*
  %82 = load %struct.pm80x_platform_data*, %struct.pm80x_platform_data** %8, align 8
  %83 = call i32 %79(%struct.pm80x_chip.0* %81, %struct.pm80x_platform_data* %82)
  br label %84

84:                                               ; preds = %76, %71, %68
  store i32 0, i32* %3, align 4
  br label %92

85:                                               ; preds = %63, %53
  %86 = load %struct.pm80x_chip*, %struct.pm80x_chip** %7, align 8
  %87 = call i32 @pm800_pages_exit(%struct.pm80x_chip* %86)
  br label %88

88:                                               ; preds = %85, %30
  %89 = call i32 (...) @pm80x_deinit()
  br label %90

90:                                               ; preds = %88, %17
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.pm80x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @pm80x_init(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.pm80x_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.pm80x_subchip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pm800_pages_init(%struct.pm80x_chip*) #1

declare dso_local i32 @device_800_init(%struct.pm80x_chip*, %struct.pm80x_platform_data*) #1

declare dso_local i32 @pm800_pages_exit(%struct.pm80x_chip*) #1

declare dso_local i32 @pm80x_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
