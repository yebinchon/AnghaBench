; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-i2c.c_arizona_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-i2c.c_arizona_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.i2c_client = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.arizona = type { i64, i32, %struct.TYPE_4__*, i32 }

@CONFIG_MFD_WM5102 = common dso_local global i32 0, align 4
@wm5102_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_WM5110 = common dso_local global i32 0, align 4
@wm5110_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_WM8997 = common dso_local global i32 0, align 4
@wm8997_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_WM8998 = common dso_local global i32 0, align 4
@wm8998_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown device type %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"No kernel support for device type %ld\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @arizona_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.regmap_config* null, %struct.regmap_config** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = call i64 @arizona_of_get_type(%struct.TYPE_4__* %17)
  store i64 %18, i64* %8, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i64, i64* %8, align 8
  switch i64 %24, label %49 [
    i64 132, label %25
    i64 131, label %31
    i64 130, label %31
    i64 129, label %37
    i64 128, label %43
    i64 133, label %43
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @CONFIG_MFD_WM5102, align 4
  %27 = call i32 @IS_ENABLED(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.regmap_config* @wm5102_i2c_regmap, %struct.regmap_config** %7, align 8
  br label %30

30:                                               ; preds = %29, %25
  br label %57

31:                                               ; preds = %23, %23
  %32 = load i32, i32* @CONFIG_MFD_WM5110, align 4
  %33 = call i32 @IS_ENABLED(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.regmap_config* @wm5110_i2c_regmap, %struct.regmap_config** %7, align 8
  br label %36

36:                                               ; preds = %35, %31
  br label %57

37:                                               ; preds = %23
  %38 = load i32, i32* @CONFIG_MFD_WM8997, align 4
  %39 = call i32 @IS_ENABLED(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.regmap_config* @wm8997_i2c_regmap, %struct.regmap_config** %7, align 8
  br label %42

42:                                               ; preds = %41, %37
  br label %57

43:                                               ; preds = %23, %23
  %44 = load i32, i32* @CONFIG_MFD_WM8998, align 4
  %45 = call i32 @IS_ENABLED(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.regmap_config* @wm8998_i2c_regmap, %struct.regmap_config** %7, align 8
  br label %48

48:                                               ; preds = %47, %43
  br label %57

49:                                               ; preds = %23
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @dev_err(%struct.TYPE_4__* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %48, %42, %36, %30
  %58 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %59 = icmp ne %struct.regmap_config* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load i64, i64* %8, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @dev_err(%struct.TYPE_4__* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %114

68:                                               ; preds = %57
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 1
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.arizona* @devm_kzalloc(%struct.TYPE_4__* %70, i32 32, i32 %71)
  store %struct.arizona* %72, %struct.arizona** %6, align 8
  %73 = load %struct.arizona*, %struct.arizona** %6, align 8
  %74 = icmp eq %struct.arizona* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %114

78:                                               ; preds = %68
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %81 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %79, %struct.regmap_config* %80)
  %82 = load %struct.arizona*, %struct.arizona** %6, align 8
  %83 = getelementptr inbounds %struct.arizona, %struct.arizona* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.arizona*, %struct.arizona** %6, align 8
  %85 = getelementptr inbounds %struct.arizona, %struct.arizona* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %78
  %90 = load %struct.arizona*, %struct.arizona** %6, align 8
  %91 = getelementptr inbounds %struct.arizona, %struct.arizona* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 1
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dev_err(%struct.TYPE_4__* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %114

99:                                               ; preds = %78
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.arizona*, %struct.arizona** %6, align 8
  %102 = getelementptr inbounds %struct.arizona, %struct.arizona* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 1
  %105 = load %struct.arizona*, %struct.arizona** %6, align 8
  %106 = getelementptr inbounds %struct.arizona, %struct.arizona* %105, i32 0, i32 2
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %106, align 8
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.arizona*, %struct.arizona** %6, align 8
  %111 = getelementptr inbounds %struct.arizona, %struct.arizona* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.arizona*, %struct.arizona** %6, align 8
  %113 = call i32 @arizona_dev_init(%struct.arizona* %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %99, %89, %75, %60, %49
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @arizona_of_get_type(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local %struct.arizona* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @arizona_dev_init(%struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
