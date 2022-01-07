; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8994-core.c_wm8994_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8994-core.c_wm8994_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.of_device_id = type { i64 }
%struct.wm8994 = type { i32, %struct.TYPE_4__*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8994_of_match = common dso_local global i32 0, align 4
@wm8994_base_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8994_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.wm8994*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wm8994* @devm_kzalloc(%struct.TYPE_4__* %10, i32 24, i32 %11)
  store %struct.wm8994* %12, %struct.wm8994** %7, align 8
  %13 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %14 = icmp eq %struct.wm8994* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.wm8994* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %25 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %24, i32 0, i32 1
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %30 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %18
  %37 = load i32, i32* @wm8994_of_match, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 1
  %40 = call %struct.of_device_id* @of_match_device(i32 %37, %struct.TYPE_4__* %39)
  store %struct.of_device_id* %40, %struct.of_device_id** %6, align 8
  %41 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %42 = icmp ne %struct.of_device_id* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %49 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %36
  br label %57

51:                                               ; preds = %18
  %52 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %56 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %50
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %58, i32* @wm8994_base_regmap_config)
  %60 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %61 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %63 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %57
  %68 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %69 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %73 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dev_err(%struct.TYPE_4__* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %84

78:                                               ; preds = %57
  %79 = load %struct.wm8994*, %struct.wm8994** %7, align 8
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @wm8994_device_init(%struct.wm8994* %79, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %67, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.wm8994* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8994*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @wm8994_device_init(%struct.wm8994*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
