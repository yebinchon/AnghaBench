; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-i2c.c_mc13xxx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-i2c.c_mc13xxx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.mc13xxx = type { i8*, i32, i32 }
%struct.of_device_id = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mc13xxx_regmap_i2c_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialize regmap: %d\0A\00", align 1
@mc13xxx_dt_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mc13xxx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13xxx_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mc13xxx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.of_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mc13xxx* @devm_kzalloc(%struct.TYPE_6__* %10, i32 16, i32 %11)
  store %struct.mc13xxx* %12, %struct.mc13xxx** %6, align 8
  %13 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %14 = icmp ne %struct.mc13xxx* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %22 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %20, %struct.mc13xxx* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %27 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %28, i32* @mc13xxx_regmap_i2c_config)
  %30 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %31 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %33 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %18
  %38 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %39 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_err(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %18
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32, i32* @mc13xxx_dt_ids, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call %struct.of_device_id* @of_match_device(i32 %54, %struct.TYPE_6__* %56)
  store %struct.of_device_id* %57, %struct.of_device_id** %8, align 8
  %58 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %59 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %62 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %70

63:                                               ; preds = %47
  %64 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %69 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %63, %53
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = call i32 @mc13xxx_common_init(%struct.TYPE_6__* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %37, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.mc13xxx* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, %struct.mc13xxx*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mc13xxx_common_init(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
