; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__, %struct.i2c_adapter* }
%struct.TYPE_6__ = type { %struct.tw9910_video_info* }
%struct.tw9910_video_info = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tw9910_priv = type { i32*, i32*, i32, %struct.tw9910_video_info* }

@.str = private unnamed_addr constant [32 x i8] c"TW9910: missing platform data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE_DATA\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tw9910_subdev_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"xti\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to get xti clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pdn\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to get GPIO \22pdn\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tw9910_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tw9910_priv*, align 8
  %7 = alloca %struct.tw9910_video_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.tw9910_video_info*, %struct.tw9910_video_info** %15, align 8
  %17 = icmp ne %struct.tw9910_video_info* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %139

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.tw9910_video_info*, %struct.tw9910_video_info** %27, align 8
  store %struct.tw9910_video_info* %28, %struct.tw9910_video_info** %7, align 8
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %30 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %31 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %139

39:                                               ; preds = %24
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.tw9910_priv* @devm_kzalloc(%struct.TYPE_6__* %41, i32 32, i32 %42)
  store %struct.tw9910_priv* %43, %struct.tw9910_priv** %6, align 8
  %44 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %45 = icmp ne %struct.tw9910_priv* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %139

49:                                               ; preds = %39
  %50 = load %struct.tw9910_video_info*, %struct.tw9910_video_info** %7, align 8
  %51 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %52 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %51, i32 0, i32 3
  store %struct.tw9910_video_info* %50, %struct.tw9910_video_info** %52, align 8
  %53 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %54 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %53, i32 0, i32 2
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = call i32 @v4l2_i2c_subdev_init(i32* %54, %struct.i2c_client* %55, i32* @tw9910_subdev_ops)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32* @clk_get(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %61 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %63 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @PTR_ERR(i32* %64)
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %71 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %87

72:                                               ; preds = %49
  %73 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %74 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @IS_ERR(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 @dev_err(%struct.TYPE_6__* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %83 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @PTR_ERR(i32* %84)
  store i32 %85, i32* %3, align 4
  br label %139

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86, %69
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %91 = call i32* @gpiod_get_optional(%struct.TYPE_6__* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %93 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %95 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @IS_ERR(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %87
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = call i32 @dev_info(%struct.TYPE_6__* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %104 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @PTR_ERR(i32* %105)
  store i32 %106, i32* %9, align 4
  br label %133

107:                                              ; preds = %87
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = call i32 @tw9910_video_probe(%struct.i2c_client* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %122

113:                                              ; preds = %107
  %114 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %115 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %114, i32 0, i32 2
  %116 = call i32 @v4l2_async_register_subdev(i32* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %139

122:                                              ; preds = %119, %112
  %123 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %124 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %129 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @gpiod_put(i32* %130)
  br label %132

132:                                              ; preds = %127, %122
  br label %133

133:                                              ; preds = %132, %99
  %134 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %135 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @clk_put(i32* %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %120, %78, %46, %33, %18
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.tw9910_priv* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32* @clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32* @gpiod_get_optional(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @tw9910_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_async_register_subdev(i32*) #1

declare dso_local i32 @gpiod_put(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
