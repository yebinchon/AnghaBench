; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ov9640_priv = type { %struct.TYPE_7__, i8*, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Camera power\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Camera reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@ov9640_subdev_ops = common dso_local global i32 0, align 4
@ov9640_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov9640_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9640_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ov9640_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ov9640_priv* @devm_kzalloc(i32* %9, i32 48, i32 %10)
  store %struct.ov9640_priv* %11, %struct.ov9640_priv** %6, align 8
  %12 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %13 = icmp ne %struct.ov9640_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %129

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %21 = call i8* @devm_gpiod_get(i32* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %24, i32 0, i32 4
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @IS_ERR(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @PTR_ERR(i8* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %129

35:                                               ; preds = %17
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %39 = call i8* @devm_gpiod_get(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %43 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %49 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %129

53:                                               ; preds = %35
  %54 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %54, i32 0, i32 2
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__* %55, %struct.i2c_client* %56, i32* @ov9640_subdev_ops)
  %58 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %59 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %58, i32 0, i32 0
  %60 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__* %59, i32 2)
  %61 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %62 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %61, i32 0, i32 0
  %63 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %64 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_7__* %62, i32* @ov9640_ctrl_ops, i32 %63, i32 0, i32 1, i32 1, i32 0)
  %65 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %66 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %65, i32 0, i32 0
  %67 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %68 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_7__* %66, i32* @ov9640_ctrl_ops, i32 %67, i32 0, i32 1, i32 1, i32 0)
  %69 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %70 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %53
  %75 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %76 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  br label %124

79:                                               ; preds = %53
  %80 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %81 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %80, i32 0, i32 0
  %82 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %83 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %84, align 8
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = call i8* @v4l2_clk_get(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %89 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %91 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %79
  %96 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %97 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @PTR_ERR(i8* %98)
  store i32 %99, i32* %7, align 4
  br label %124

100:                                              ; preds = %79
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = call i32 @ov9640_video_probe(%struct.i2c_client* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %119

106:                                              ; preds = %100
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %110 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32* %108, i32** %111, align 8
  %112 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %113 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %112, i32 0, i32 2
  %114 = call i32 @v4l2_async_register_subdev(%struct.TYPE_6__* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %119

118:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %129

119:                                              ; preds = %117, %105
  %120 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %121 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @v4l2_clk_put(i8* %122)
  br label %124

124:                                              ; preds = %119, %95, %74
  %125 = load %struct.ov9640_priv*, %struct.ov9640_priv** %6, align 8
  %126 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %125, i32 0, i32 0
  %127 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__* %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %124, %118, %47, %29, %14
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.ov9640_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_clk_get(i32*, i8*) #1

declare dso_local i32 @ov9640_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_clk_put(i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
