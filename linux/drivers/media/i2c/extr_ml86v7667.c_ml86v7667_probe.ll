; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ml86v7667.c_ml86v7667_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ml86v7667.c_ml86v7667_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ml86v7667_priv = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ml86v7667_subdev_ops = common dso_local global i32 0, align 4
@ml86v7667_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_CHROMA_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_COLOR_KILLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to probe @ 0x%02x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ml86v7667_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ml86v7667_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ml86v7667_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = call i32 @i2c_check_functionality(%struct.TYPE_10__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %117

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ml86v7667_priv* @devm_kzalloc(i32* %19, i32 16, i32 %20)
  store %struct.ml86v7667_priv* %21, %struct.ml86v7667_priv** %6, align 8
  %22 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %23 = icmp ne %struct.ml86v7667_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %117

27:                                               ; preds = %17
  %28 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %28, i32 0, i32 0
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_8__* %29, %struct.i2c_client* %30, i32* @ml86v7667_subdev_ops)
  %32 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %33 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %32, i32 0, i32 1
  %34 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %33, i32 8)
  %35 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %36 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %35, i32 0, i32 1
  %37 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %38 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %36, i32* @ml86v7667_ctrl_ops, i32 %37, i32 -64, i32 63, i32 1, i32 0)
  %39 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %40 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %39, i32 0, i32 1
  %41 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %42 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %40, i32* @ml86v7667_ctrl_ops, i32 %41, i32 -8, i32 7, i32 1, i32 0)
  %43 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %44 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %43, i32 0, i32 1
  %45 = load i32, i32* @V4L2_CID_CHROMA_GAIN, align 4
  %46 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %44, i32* @ml86v7667_ctrl_ops, i32 %45, i32 -32, i32 31, i32 1, i32 0)
  %47 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %48 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %47, i32 0, i32 1
  %49 = load i32, i32* @V4L2_CID_HUE, align 4
  %50 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %48, i32* @ml86v7667_ctrl_ops, i32 %49, i32 -128, i32 127, i32 1, i32 0)
  %51 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %52 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %51, i32 0, i32 1
  %53 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %54 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %52, i32* @ml86v7667_ctrl_ops, i32 %53, i32 -4, i32 3, i32 1, i32 0)
  %55 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %55, i32 0, i32 1
  %57 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %58 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %56, i32* @ml86v7667_ctrl_ops, i32 %57, i32 -4, i32 3, i32 1, i32 0)
  %59 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %60 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %59, i32 0, i32 1
  %61 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %62 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %60, i32* @ml86v7667_ctrl_ops, i32 %61, i32 0, i32 1, i32 1, i32 0)
  %63 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %64 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %63, i32 0, i32 1
  %65 = load i32, i32* @V4L2_CID_COLOR_KILLER, align 4
  %66 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %64, i32* @ml86v7667_ctrl_ops, i32 %65, i32 0, i32 1, i32 1, i32 0)
  %67 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %68 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %67, i32 0, i32 1
  %69 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %70 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %71, align 8
  %72 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %73 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %27
  br label %99

79:                                               ; preds = %27
  %80 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %81 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %80, i32 0, i32 1
  %82 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__* %81)
  %83 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %84 = call i32 @ml86v7667_init(%struct.ml86v7667_priv* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %99

88:                                               ; preds = %79
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @v4l_info(%struct.i2c_client* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %97)
  store i32 0, i32* %3, align 4
  br label %117

99:                                               ; preds = %87, %78
  %100 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %101 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %100, i32 0, i32 1
  %102 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %101)
  %103 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %104 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %103, i32 0, i32 0
  %105 = call i32 @v4l2_device_unregister_subdev(%struct.TYPE_8__* %104)
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @v4l_err(%struct.i2c_client* %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %99, %88, %24, %14
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.ml86v7667_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_8__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__*) #1

declare dso_local i32 @ml86v7667_init(%struct.ml86v7667_priv*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
