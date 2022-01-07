; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-spi.c_madera_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-spi.c_madera_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.spi_device_id = type { i64 }
%struct.madera = type { i64, i8*, i32, i32*, i8*, i8* }

@CONFIG_MFD_CS47L15 = common dso_local global i32 0, align 4
@cs47l15_16bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l15_32bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L35 = common dso_local global i32 0, align 4
@cs47l35_16bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l35_32bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L85 = common dso_local global i32 0, align 4
@cs47l85_16bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l85_32bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L90 = common dso_local global i32 0, align 4
@cs47l90_16bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l90_32bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L92 = common dso_local global i32 0, align 4
@cs47l92_16bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l92_32bit_spi_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unknown Madera SPI device type %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Kernel does not include support for %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to allocate 16-bit register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to allocate 32-bit register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @madera_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.madera*, align 8
  %6 = alloca %struct.regmap_config*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %12)
  store %struct.spi_device_id* %13, %struct.spi_device_id** %4, align 8
  store %struct.regmap_config* null, %struct.regmap_config** %6, align 8
  store %struct.regmap_config* null, %struct.regmap_config** %7, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = call i8* @of_device_get_match_data(i32* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %8, align 8
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %9, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %24 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i64, i64* %9, align 8
  switch i64 %27, label %58 [
    i64 135, label %28
    i64 134, label %34
    i64 133, label %40
    i64 128, label %40
    i64 132, label %46
    i64 131, label %46
    i64 136, label %52
    i64 130, label %52
    i64 129, label %52
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @CONFIG_MFD_CS47L15, align 4
  %30 = call i32 @IS_ENABLED(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store %struct.regmap_config* @cs47l15_16bit_spi_regmap, %struct.regmap_config** %6, align 8
  store %struct.regmap_config* @cs47l15_32bit_spi_regmap, %struct.regmap_config** %7, align 8
  br label %33

33:                                               ; preds = %32, %28
  br label %65

34:                                               ; preds = %26
  %35 = load i32, i32* @CONFIG_MFD_CS47L35, align 4
  %36 = call i32 @IS_ENABLED(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct.regmap_config* @cs47l35_16bit_spi_regmap, %struct.regmap_config** %6, align 8
  store %struct.regmap_config* @cs47l35_32bit_spi_regmap, %struct.regmap_config** %7, align 8
  br label %39

39:                                               ; preds = %38, %34
  br label %65

40:                                               ; preds = %26, %26
  %41 = load i32, i32* @CONFIG_MFD_CS47L85, align 4
  %42 = call i32 @IS_ENABLED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store %struct.regmap_config* @cs47l85_16bit_spi_regmap, %struct.regmap_config** %6, align 8
  store %struct.regmap_config* @cs47l85_32bit_spi_regmap, %struct.regmap_config** %7, align 8
  br label %45

45:                                               ; preds = %44, %40
  br label %65

46:                                               ; preds = %26, %26
  %47 = load i32, i32* @CONFIG_MFD_CS47L90, align 4
  %48 = call i32 @IS_ENABLED(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store %struct.regmap_config* @cs47l90_16bit_spi_regmap, %struct.regmap_config** %6, align 8
  store %struct.regmap_config* @cs47l90_32bit_spi_regmap, %struct.regmap_config** %7, align 8
  br label %51

51:                                               ; preds = %50, %46
  br label %65

52:                                               ; preds = %26, %26, %26
  %53 = load i32, i32* @CONFIG_MFD_CS47L92, align 4
  %54 = call i32 @IS_ENABLED(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store %struct.regmap_config* @cs47l92_16bit_spi_regmap, %struct.regmap_config** %6, align 8
  store %struct.regmap_config* @cs47l92_32bit_spi_regmap, %struct.regmap_config** %7, align 8
  br label %57

57:                                               ; preds = %56, %52
  br label %65

58:                                               ; preds = %26
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 1
  %61 = load i64, i64* %9, align 8
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %147

65:                                               ; preds = %57, %51, %45, %39, %33
  %66 = load i64, i64* %9, align 8
  %67 = call i8* @madera_name_from_type(i64 %66)
  store i8* %67, i8** %10, align 8
  %68 = load %struct.regmap_config*, %struct.regmap_config** %6, align 8
  %69 = icmp ne %struct.regmap_config* %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 1
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %147

77:                                               ; preds = %65
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 1
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.madera* @devm_kzalloc(i32* %79, i32 48, i32 %80)
  store %struct.madera* %81, %struct.madera** %5, align 8
  %82 = load %struct.madera*, %struct.madera** %5, align 8
  %83 = icmp ne %struct.madera* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %147

87:                                               ; preds = %77
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = load %struct.regmap_config*, %struct.regmap_config** %6, align 8
  %90 = call i8* @devm_regmap_init_spi(%struct.spi_device* %88, %struct.regmap_config* %89)
  %91 = load %struct.madera*, %struct.madera** %5, align 8
  %92 = getelementptr inbounds %struct.madera, %struct.madera* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load %struct.madera*, %struct.madera** %5, align 8
  %94 = getelementptr inbounds %struct.madera, %struct.madera* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %87
  %99 = load %struct.madera*, %struct.madera** %5, align 8
  %100 = getelementptr inbounds %struct.madera, %struct.madera* %99, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %11, align 4
  %103 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %104 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %103, i32 0, i32 1
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %2, align 4
  br label %147

108:                                              ; preds = %87
  %109 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %110 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %111 = call i8* @devm_regmap_init_spi(%struct.spi_device* %109, %struct.regmap_config* %110)
  %112 = load %struct.madera*, %struct.madera** %5, align 8
  %113 = getelementptr inbounds %struct.madera, %struct.madera* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.madera*, %struct.madera** %5, align 8
  %115 = getelementptr inbounds %struct.madera, %struct.madera* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %108
  %120 = load %struct.madera*, %struct.madera** %5, align 8
  %121 = getelementptr inbounds %struct.madera, %struct.madera* %120, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @PTR_ERR(i8* %122)
  store i32 %123, i32* %11, align 4
  %124 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %125 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %124, i32 0, i32 1
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %2, align 4
  br label %147

129:                                              ; preds = %108
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.madera*, %struct.madera** %5, align 8
  %132 = getelementptr inbounds %struct.madera, %struct.madera* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load %struct.madera*, %struct.madera** %5, align 8
  %135 = getelementptr inbounds %struct.madera, %struct.madera* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %137 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %136, i32 0, i32 1
  %138 = load %struct.madera*, %struct.madera** %5, align 8
  %139 = getelementptr inbounds %struct.madera, %struct.madera* %138, i32 0, i32 3
  store i32* %137, i32** %139, align 8
  %140 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %141 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.madera*, %struct.madera** %5, align 8
  %144 = getelementptr inbounds %struct.madera, %struct.madera* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.madera*, %struct.madera** %5, align 8
  %146 = call i32 @madera_dev_init(%struct.madera* %145)
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %129, %119, %98, %84, %70, %58
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i8* @of_device_get_match_data(i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @madera_name_from_type(i64) #1

declare dso_local %struct.madera* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_regmap_init_spi(%struct.spi_device*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @madera_dev_init(%struct.madera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
