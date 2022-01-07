; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tda10071_platform_data* }
%struct.tda10071_platform_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tda10071_dev = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.TYPE_4__ = type { %struct.tda10071_dev*, i32 }

@tda10071_probe.regmap_config = internal constant %struct.regmap_config { i32 8, i32 8 }, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@tda10071_ops = common dso_local global i32 0, align 4
@tda10071_get_dvb_frontend = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NXP TDA10071 successfully identified\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tda10071_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tda10071_dev*, align 8
  %7 = alloca %struct.tda10071_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.tda10071_platform_data*, %struct.tda10071_platform_data** %12, align 8
  store %struct.tda10071_platform_data* %13, %struct.tda10071_platform_data** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tda10071_dev* @kzalloc(i32 56, i32 %14)
  store %struct.tda10071_dev* %15, %struct.tda10071_dev** %6, align 8
  %16 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %17 = icmp ne %struct.tda10071_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %135

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %24 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %23, i32 0, i32 9
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %26 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %25, i32 0, i32 8
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.tda10071_platform_data*, %struct.tda10071_platform_data** %7, align 8
  %29 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %32 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tda10071_platform_data*, %struct.tda10071_platform_data** %7, align 8
  %34 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %37 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tda10071_platform_data*, %struct.tda10071_platform_data** %7, align 8
  %39 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %42 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.tda10071_platform_data*, %struct.tda10071_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %47 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.tda10071_platform_data*, %struct.tda10071_platform_data** %7, align 8
  %49 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %52 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tda10071_platform_data*, %struct.tda10071_platform_data** %7, align 8
  %54 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %57 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %58, %struct.regmap_config* @tda10071_probe.regmap_config)
  %60 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %61 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %63 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %21
  %68 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %69 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %8, align 4
  br label %132

72:                                               ; preds = %21
  %73 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %74 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @regmap_read(i32 %75, i32 255, i32* %9)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %132

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 15
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %132

86:                                               ; preds = %80
  %87 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %88 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @regmap_read(i32 %89, i32 221, i32* %9)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %132

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %132

100:                                              ; preds = %94
  %101 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %102 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @regmap_read(i32 %103, i32 254, i32* %9)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %132

108:                                              ; preds = %100
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %132

114:                                              ; preds = %108
  %115 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %116 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = call i32 @memcpy(i32* %117, i32* @tda10071_ops, i32 4)
  %119 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %120 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %121 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store %struct.tda10071_dev* %119, %struct.tda10071_dev** %122, align 8
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %125 = call i32 @i2c_set_clientdata(%struct.i2c_client* %123, %struct.tda10071_dev* %124)
  %126 = load i32, i32* @tda10071_get_dvb_frontend, align 4
  %127 = load %struct.tda10071_platform_data*, %struct.tda10071_platform_data** %7, align 8
  %128 = getelementptr inbounds %struct.tda10071_platform_data, %struct.tda10071_platform_data* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = call i32 @dev_info(%struct.TYPE_5__* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %141

132:                                              ; preds = %111, %107, %97, %93, %83, %79, %67
  %133 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %134 = call i32 @kfree(%struct.tda10071_dev* %133)
  br label %135

135:                                              ; preds = %132, %18
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @dev_dbg(%struct.TYPE_5__* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %135, %114
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.tda10071_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tda10071_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @kfree(%struct.tda10071_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
