; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-i2c.c_madera_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-i2c.c_madera_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.madera = type { i64, i8*, i32, i32*, i8*, i8* }

@CONFIG_MFD_CS47L15 = common dso_local global i32 0, align 4
@cs47l15_16bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l15_32bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L35 = common dso_local global i32 0, align 4
@cs47l35_16bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l35_32bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L85 = common dso_local global i32 0, align 4
@cs47l85_16bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l85_32bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L90 = common dso_local global i32 0, align 4
@cs47l90_16bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l90_32bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@CONFIG_MFD_CS47L92 = common dso_local global i32 0, align 4
@cs47l92_16bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@cs47l92_32bit_i2c_regmap = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unknown Madera I2C device type %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Kernel does not include support for %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to allocate 16-bit register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to allocate 32-bit register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @madera_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.madera*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca %struct.regmap_config*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.regmap_config* null, %struct.regmap_config** %7, align 8
  store %struct.regmap_config* null, %struct.regmap_config** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = call i8* @of_device_get_match_data(i32* %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %9, align 8
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %10, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i64, i64* %10, align 8
  switch i64 %26, label %57 [
    i64 135, label %27
    i64 134, label %33
    i64 133, label %39
    i64 128, label %39
    i64 132, label %45
    i64 131, label %45
    i64 136, label %51
    i64 130, label %51
    i64 129, label %51
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @CONFIG_MFD_CS47L15, align 4
  %29 = call i32 @IS_ENABLED(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store %struct.regmap_config* @cs47l15_16bit_i2c_regmap, %struct.regmap_config** %7, align 8
  store %struct.regmap_config* @cs47l15_32bit_i2c_regmap, %struct.regmap_config** %8, align 8
  br label %32

32:                                               ; preds = %31, %27
  br label %64

33:                                               ; preds = %25
  %34 = load i32, i32* @CONFIG_MFD_CS47L35, align 4
  %35 = call i32 @IS_ENABLED(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store %struct.regmap_config* @cs47l35_16bit_i2c_regmap, %struct.regmap_config** %7, align 8
  store %struct.regmap_config* @cs47l35_32bit_i2c_regmap, %struct.regmap_config** %8, align 8
  br label %38

38:                                               ; preds = %37, %33
  br label %64

39:                                               ; preds = %25, %25
  %40 = load i32, i32* @CONFIG_MFD_CS47L85, align 4
  %41 = call i32 @IS_ENABLED(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.regmap_config* @cs47l85_16bit_i2c_regmap, %struct.regmap_config** %7, align 8
  store %struct.regmap_config* @cs47l85_32bit_i2c_regmap, %struct.regmap_config** %8, align 8
  br label %44

44:                                               ; preds = %43, %39
  br label %64

45:                                               ; preds = %25, %25
  %46 = load i32, i32* @CONFIG_MFD_CS47L90, align 4
  %47 = call i32 @IS_ENABLED(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store %struct.regmap_config* @cs47l90_16bit_i2c_regmap, %struct.regmap_config** %7, align 8
  store %struct.regmap_config* @cs47l90_32bit_i2c_regmap, %struct.regmap_config** %8, align 8
  br label %50

50:                                               ; preds = %49, %45
  br label %64

51:                                               ; preds = %25, %25, %25
  %52 = load i32, i32* @CONFIG_MFD_CS47L92, align 4
  %53 = call i32 @IS_ENABLED(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store %struct.regmap_config* @cs47l92_16bit_i2c_regmap, %struct.regmap_config** %7, align 8
  store %struct.regmap_config* @cs47l92_32bit_i2c_regmap, %struct.regmap_config** %8, align 8
  br label %56

56:                                               ; preds = %55, %51
  br label %64

57:                                               ; preds = %25
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = load i64, i64* %10, align 8
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %146

64:                                               ; preds = %56, %50, %44, %38, %32
  %65 = load i64, i64* %10, align 8
  %66 = call i8* @madera_name_from_type(i64 %65)
  store i8* %66, i8** %11, align 8
  %67 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %68 = icmp ne %struct.regmap_config* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 1
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %146

76:                                               ; preds = %64
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 1
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.madera* @devm_kzalloc(i32* %78, i32 48, i32 %79)
  store %struct.madera* %80, %struct.madera** %6, align 8
  %81 = load %struct.madera*, %struct.madera** %6, align 8
  %82 = icmp ne %struct.madera* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %146

86:                                               ; preds = %76
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %89 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %87, %struct.regmap_config* %88)
  %90 = load %struct.madera*, %struct.madera** %6, align 8
  %91 = getelementptr inbounds %struct.madera, %struct.madera* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load %struct.madera*, %struct.madera** %6, align 8
  %93 = getelementptr inbounds %struct.madera, %struct.madera* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %86
  %98 = load %struct.madera*, %struct.madera** %6, align 8
  %99 = getelementptr inbounds %struct.madera, %struct.madera* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @PTR_ERR(i8* %100)
  store i32 %101, i32* %12, align 4
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 1
  %104 = load i32, i32* %12, align 4
  %105 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %3, align 4
  br label %146

107:                                              ; preds = %86
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = load %struct.regmap_config*, %struct.regmap_config** %8, align 8
  %110 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %108, %struct.regmap_config* %109)
  %111 = load %struct.madera*, %struct.madera** %6, align 8
  %112 = getelementptr inbounds %struct.madera, %struct.madera* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.madera*, %struct.madera** %6, align 8
  %114 = getelementptr inbounds %struct.madera, %struct.madera* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @IS_ERR(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %107
  %119 = load %struct.madera*, %struct.madera** %6, align 8
  %120 = getelementptr inbounds %struct.madera, %struct.madera* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %12, align 4
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 1
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %3, align 4
  br label %146

128:                                              ; preds = %107
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.madera*, %struct.madera** %6, align 8
  %131 = getelementptr inbounds %struct.madera, %struct.madera* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load %struct.madera*, %struct.madera** %6, align 8
  %134 = getelementptr inbounds %struct.madera, %struct.madera* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 1
  %137 = load %struct.madera*, %struct.madera** %6, align 8
  %138 = getelementptr inbounds %struct.madera, %struct.madera* %137, i32 0, i32 3
  store i32* %136, i32** %138, align 8
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.madera*, %struct.madera** %6, align 8
  %143 = getelementptr inbounds %struct.madera, %struct.madera* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.madera*, %struct.madera** %6, align 8
  %145 = call i32 @madera_dev_init(%struct.madera* %144)
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %128, %118, %97, %83, %69, %57
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i8* @of_device_get_match_data(i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @madera_name_from_type(i64) #1

declare dso_local %struct.madera* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @madera_dev_init(%struct.madera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
