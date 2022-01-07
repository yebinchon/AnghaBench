; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-spi.c_arizona_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-spi.c_arizona_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.spi_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.spi_device_id = type { i64 }
%struct.arizona = type { i64, i32, %struct.TYPE_4__*, i32 }

@CONFIG_MFD_WM5102 = common dso_local global i32 0, align 4
@wm5102_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_WM5110 = common dso_local global i32 0, align 4
@wm5110_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L24 = common dso_local global i32 0, align 4
@cs47l24_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown device type %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"No kernel support for device type %ld\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @arizona_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.arizona*, align 8
  %6 = alloca %struct.regmap_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %9)
  store %struct.spi_device_id* %10, %struct.spi_device_id** %4, align 8
  store %struct.regmap_config* null, %struct.regmap_config** %6, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = call i64 @arizona_of_get_type(%struct.TYPE_4__* %18)
  store i64 %19, i64* %7, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i64, i64* %7, align 8
  switch i64 %25, label %44 [
    i64 130, label %26
    i64 129, label %32
    i64 128, label %32
    i64 131, label %38
    i64 132, label %38
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @CONFIG_MFD_WM5102, align 4
  %28 = call i32 @IS_ENABLED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.regmap_config* @wm5102_spi_regmap, %struct.regmap_config** %6, align 8
  br label %31

31:                                               ; preds = %30, %26
  br label %52

32:                                               ; preds = %24, %24
  %33 = load i32, i32* @CONFIG_MFD_WM5110, align 4
  %34 = call i32 @IS_ENABLED(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store %struct.regmap_config* @wm5110_spi_regmap, %struct.regmap_config** %6, align 8
  br label %37

37:                                               ; preds = %36, %32
  br label %52

38:                                               ; preds = %24, %24
  %39 = load i32, i32* @CONFIG_MFD_CS47L24, align 4
  %40 = call i32 @IS_ENABLED(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.regmap_config* @cs47l24_spi_regmap, %struct.regmap_config** %6, align 8
  br label %43

43:                                               ; preds = %42, %38
  br label %52

44:                                               ; preds = %24
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 1
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @dev_err(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %109

52:                                               ; preds = %43, %37, %31
  %53 = load %struct.regmap_config*, %struct.regmap_config** %6, align 8
  %54 = icmp ne %struct.regmap_config* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 1
  %58 = load i64, i64* %7, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @dev_err(%struct.TYPE_4__* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %109

63:                                               ; preds = %52
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 1
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.arizona* @devm_kzalloc(%struct.TYPE_4__* %65, i32 32, i32 %66)
  store %struct.arizona* %67, %struct.arizona** %5, align 8
  %68 = load %struct.arizona*, %struct.arizona** %5, align 8
  %69 = icmp eq %struct.arizona* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %109

73:                                               ; preds = %63
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = load %struct.regmap_config*, %struct.regmap_config** %6, align 8
  %76 = call i32 @devm_regmap_init_spi(%struct.spi_device* %74, %struct.regmap_config* %75)
  %77 = load %struct.arizona*, %struct.arizona** %5, align 8
  %78 = getelementptr inbounds %struct.arizona, %struct.arizona* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.arizona*, %struct.arizona** %5, align 8
  %80 = getelementptr inbounds %struct.arizona, %struct.arizona* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load %struct.arizona*, %struct.arizona** %5, align 8
  %86 = getelementptr inbounds %struct.arizona, %struct.arizona* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 1
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @dev_err(%struct.TYPE_4__* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %109

94:                                               ; preds = %73
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.arizona*, %struct.arizona** %5, align 8
  %97 = getelementptr inbounds %struct.arizona, %struct.arizona* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %99 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %98, i32 0, i32 1
  %100 = load %struct.arizona*, %struct.arizona** %5, align 8
  %101 = getelementptr inbounds %struct.arizona, %struct.arizona* %100, i32 0, i32 2
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** %101, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.arizona*, %struct.arizona** %5, align 8
  %106 = getelementptr inbounds %struct.arizona, %struct.arizona* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.arizona*, %struct.arizona** %5, align 8
  %108 = call i32 @arizona_dev_init(%struct.arizona* %107)
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %94, %84, %70, %55, %44
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i64 @arizona_of_get_type(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local %struct.arizona* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @arizona_dev_init(%struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
