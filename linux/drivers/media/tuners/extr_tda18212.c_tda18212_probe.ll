; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18212.c_tda18212_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18212.c_tda18212_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.tda18212_config = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.tda18212_dev* }
%struct.TYPE_5__ = type { i32, i32 (%struct.dvb_frontend*, i32)* }
%struct.tda18212_dev = type { %struct.i2c_client*, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tda18212_config* }
%struct.i2c_device_id = type { i32 }

@tda18212_probe.regmap_config = internal constant %struct.regmap_config { i32 8, i32 8 }, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kzalloc() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"chip_id=%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"NXP TDA18212HN/%s successfully identified\0A\00", align 1
@tda18212_tuner_ops = common dso_local global %struct.tda18212_config zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tda18212_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18212_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tda18212_config*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.tda18212_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.tda18212_config*, %struct.tda18212_config** %14, align 8
  store %struct.tda18212_config* %15, %struct.tda18212_config** %6, align 8
  %16 = load %struct.tda18212_config*, %struct.tda18212_config** %6, align 8
  %17 = getelementptr inbounds %struct.tda18212_config, %struct.tda18212_config* %16, i32 0, i32 0
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %17, align 8
  store %struct.dvb_frontend* %18, %struct.dvb_frontend** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tda18212_dev* @kzalloc(i32 16, i32 %19)
  store %struct.tda18212_dev* %20, %struct.tda18212_dev** %8, align 8
  %21 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %22 = icmp eq %struct.tda18212_dev* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %115

29:                                               ; preds = %2
  %30 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %31 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %30, i32 0, i32 2
  %32 = load %struct.tda18212_config*, %struct.tda18212_config** %6, align 8
  %33 = call i32 @memcpy(i32* %31, %struct.tda18212_config* %32, i32 8)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %36 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %35, i32 0, i32 0
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %37, %struct.regmap_config* @tda18212_probe.regmap_config)
  %39 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %40 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %42 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %48 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %9, align 4
  br label %115

51:                                               ; preds = %29
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.dvb_frontend*, i32)* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %59 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %60, align 8
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %63 = call i32 %61(%struct.dvb_frontend* %62, i32 1)
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %66 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @regmap_read(i32 %67, i32 0, i32* %10)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %70 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %69, i32 0, i32 0
  %71 = load %struct.i2c_client*, %struct.i2c_client** %70, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @dev_dbg(%struct.TYPE_6__* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.dvb_frontend*, i32)* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %64
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %83, align 8
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %86 = call i32 %84(%struct.dvb_frontend* %85, i32 0)
  br label %87

87:                                               ; preds = %80, %64
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %115

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  switch i32 %92, label %95 [
    i32 199, label %93
    i32 71, label %94
  ]

93:                                               ; preds = %91
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %98

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %115

98:                                               ; preds = %94, %93
  %99 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %100 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %99, i32 0, i32 0
  %101 = load %struct.i2c_client*, %struct.i2c_client** %100, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @dev_info(%struct.TYPE_6__* %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  %105 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %106 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %107 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %106, i32 0, i32 1
  store %struct.tda18212_dev* %105, %struct.tda18212_dev** %107, align 8
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = call i32 @memcpy(i32* %110, %struct.tda18212_config* @tda18212_tuner_ops, i32 4)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %114 = call i32 @i2c_set_clientdata(%struct.i2c_client* %112, %struct.tda18212_dev* %113)
  store i32 0, i32* %3, align 4
  br label %123

115:                                              ; preds = %95, %90, %46, %23
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @dev_dbg(%struct.TYPE_6__* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load %struct.tda18212_dev*, %struct.tda18212_dev** %8, align 8
  %121 = call i32 @kfree(%struct.tda18212_dev* %120)
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %115, %98
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.tda18212_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.tda18212_config*, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tda18212_dev*) #1

declare dso_local i32 @kfree(%struct.tda18212_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
