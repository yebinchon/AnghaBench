; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_as3711.c_as3711_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_as3711.c_as3711_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.i2c_client = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.as3711 = type { %struct.TYPE_11__*, i32 }
%struct.as3711_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Platform data not found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"IRQ not supported yet\0A\00", align 1
@as3711_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"regmap initialization failed: %d\0A\00", align 1
@AS3711_ASIC_ID_1 = common dso_local global i32 0, align 4
@AS3711_ASIC_ID_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"regmap_read() failed: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"AS3711 detected: %x:%x\0A\00", align 1
@as3711_subdevs = common dso_local global %struct.TYPE_12__* null, align 8
@AS3711_REGULATOR = common dso_local global i64 0, align 8
@AS3711_BACKLIGHT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"add mfd devices failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @as3711_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3711_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.as3711*, align 8
  %7 = alloca %struct.as3711_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call %struct.as3711_platform_data* @dev_get_platdata(%struct.TYPE_11__* %18)
  store %struct.as3711_platform_data* %19, %struct.as3711_platform_data** %7, align 8
  %20 = load %struct.as3711_platform_data*, %struct.as3711_platform_data** %7, align 8
  %21 = icmp ne %struct.as3711_platform_data* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(%struct.TYPE_11__* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %16
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kzalloc(%struct.TYPE_11__* %29, i32 8, i32 %30)
  %32 = bitcast i8* %31 to %struct.as3711_platform_data*
  store %struct.as3711_platform_data* %32, %struct.as3711_platform_data** %7, align 8
  %33 = load %struct.as3711_platform_data*, %struct.as3711_platform_data** %7, align 8
  %34 = icmp ne %struct.as3711_platform_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %179

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @devm_kzalloc(%struct.TYPE_11__* %41, i32 16, i32 %42)
  %44 = bitcast i8* %43 to %struct.as3711*
  store %struct.as3711* %44, %struct.as3711** %6, align 8
  %45 = load %struct.as3711*, %struct.as3711** %6, align 8
  %46 = icmp ne %struct.as3711* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %179

50:                                               ; preds = %39
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.as3711*, %struct.as3711** %6, align 8
  %54 = getelementptr inbounds %struct.as3711, %struct.as3711* %53, i32 0, i32 0
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load %struct.as3711*, %struct.as3711** %6, align 8
  %57 = call i32 @i2c_set_clientdata(%struct.i2c_client* %55, %struct.as3711* %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 @dev_notice(%struct.TYPE_11__* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %50
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %67, i32* @as3711_regmap_config)
  %69 = load %struct.as3711*, %struct.as3711** %6, align 8
  %70 = getelementptr inbounds %struct.as3711, %struct.as3711* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.as3711*, %struct.as3711** %6, align 8
  %72 = getelementptr inbounds %struct.as3711, %struct.as3711* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = load %struct.as3711*, %struct.as3711** %6, align 8
  %78 = getelementptr inbounds %struct.as3711, %struct.as3711* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @dev_err(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %179

86:                                               ; preds = %66
  %87 = load %struct.as3711*, %struct.as3711** %6, align 8
  %88 = getelementptr inbounds %struct.as3711, %struct.as3711* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AS3711_ASIC_ID_1, align 4
  %91 = call i32 @regmap_read(i32 %89, i32 %90, i32* %8)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %86
  %95 = load %struct.as3711*, %struct.as3711** %6, align 8
  %96 = getelementptr inbounds %struct.as3711, %struct.as3711* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @AS3711_ASIC_ID_2, align 4
  %99 = call i32 @regmap_read(i32 %97, i32 %98, i32* %9)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %94, %86
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @dev_err(%struct.TYPE_11__* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %179

109:                                              ; preds = %100
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 139
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %179

115:                                              ; preds = %109
  %116 = load %struct.as3711*, %struct.as3711** %6, align 8
  %117 = getelementptr inbounds %struct.as3711, %struct.as3711* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @dev_info(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.as3711_platform_data*, %struct.as3711_platform_data** %7, align 8
  %123 = icmp ne %struct.as3711_platform_data* %122, null
  br i1 %123, label %124, label %145

124:                                              ; preds = %115
  %125 = load %struct.as3711_platform_data*, %struct.as3711_platform_data** %7, align 8
  %126 = getelementptr inbounds %struct.as3711_platform_data, %struct.as3711_platform_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %128 = load i64, i64* @AS3711_REGULATOR, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i32* %126, i32** %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %132 = load i64, i64* @AS3711_REGULATOR, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32 4, i32* %134, align 8
  %135 = load %struct.as3711_platform_data*, %struct.as3711_platform_data** %7, align 8
  %136 = getelementptr inbounds %struct.as3711_platform_data, %struct.as3711_platform_data* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %138 = load i64, i64* @AS3711_BACKLIGHT, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store i32* %136, i32** %140, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %142 = load i64, i64* @AS3711_BACKLIGHT, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  store i32 4, i32* %144, align 8
  br label %162

145:                                              ; preds = %115
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %147 = load i64, i64* @AS3711_REGULATOR, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %151 = load i64, i64* @AS3711_REGULATOR, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %155 = load i64, i64* @AS3711_BACKLIGHT, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store i32* null, i32** %157, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %159 = load i64, i64* @AS3711_BACKLIGHT, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %145, %124
  %163 = load %struct.as3711*, %struct.as3711** %6, align 8
  %164 = getelementptr inbounds %struct.as3711, %struct.as3711* %163, i32 0, i32 0
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** @as3711_subdevs, align 8
  %168 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %167)
  %169 = call i32 @devm_mfd_add_devices(%struct.TYPE_11__* %165, i32 -1, %struct.TYPE_12__* %166, i32 %168, i32* null, i32 0, i32* null)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 0
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @dev_err(%struct.TYPE_11__* %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %172, %162
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %112, %103, %76, %47, %35
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.as3711_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.as3711*) #1

declare dso_local i32 @dev_notice(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
