; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_12__, %struct.i2c_adapter* }
%struct.TYPE_12__ = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.ov2640_priv = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"OV2640: I2C-Adapter doesn't support SMBUS\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"xvclk\00", align 1
@SVGA_WIDTH = common dso_local global i32 0, align 4
@SVGA_HEIGHT = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@ov2640_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@ov2640_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@ov2640_test_pattern_menu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"OV2640 Probed\0A\00", align 1
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov2640_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2640_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ov2640_priv*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  store %struct.i2c_adapter* %9, %struct.i2c_adapter** %5, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %167

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ov2640_priv* @devm_kzalloc(%struct.TYPE_12__* %22, i32 56, i32 %23)
  store %struct.ov2640_priv* %24, %struct.ov2640_priv** %4, align 8
  %25 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %26 = icmp ne %struct.ov2640_priv* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %167

30:                                               ; preds = %20
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(%struct.TYPE_12__* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %41 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %49 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %167

52:                                               ; preds = %36
  %53 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @clk_prepare_enable(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %167

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %65 = call i32 @ov2640_probe_dt(%struct.i2c_client* %63, %struct.ov2640_priv* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %161

69:                                               ; preds = %62
  %70 = load i32, i32* @SVGA_WIDTH, align 4
  %71 = load i32, i32* @SVGA_HEIGHT, align 4
  %72 = call i32 @ov2640_select_win(i32 %70, i32 %71)
  %73 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %74 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %76 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %77 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %79 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %78, i32 0, i32 3
  %80 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %81 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_13__* %79, %struct.i2c_client* %80, i32* @ov2640_subdev_ops)
  %82 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %83 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %86 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 8
  %90 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %91 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %90, i32 0, i32 1
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %94 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %93, i32 0, i32 2
  %95 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_14__* %94, i32 3)
  %96 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %96, i32 0, i32 1
  %98 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %99 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store i32* %97, i32** %100, align 8
  %101 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %102 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %101, i32 0, i32 2
  %103 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %104 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_14__* %102, i32* @ov2640_ctrl_ops, i32 %103, i32 0, i32 1, i32 1, i32 0)
  %105 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %106 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %105, i32 0, i32 2
  %107 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %108 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_14__* %106, i32* @ov2640_ctrl_ops, i32 %107, i32 0, i32 1, i32 1, i32 0)
  %109 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %110 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %109, i32 0, i32 2
  %111 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %112 = load i32, i32* @ov2640_test_pattern_menu, align 4
  %113 = call i64 @ARRAY_SIZE(i32 %112)
  %114 = sub nsw i64 %113, 1
  %115 = load i32, i32* @ov2640_test_pattern_menu, align 4
  %116 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_14__* %110, i32* @ov2640_ctrl_ops, i32 %111, i64 %114, i32 0, i32 0, i32 %115)
  %117 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %118 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %117, i32 0, i32 2
  %119 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %120 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %121, align 8
  %122 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %123 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %69
  %128 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %129 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %6, align 4
  br label %154

132:                                              ; preds = %69
  %133 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %134 = call i32 @ov2640_video_probe(%struct.i2c_client* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %149

138:                                              ; preds = %132
  %139 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %140 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %139, i32 0, i32 3
  %141 = call i32 @v4l2_async_register_subdev(%struct.TYPE_13__* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %149

145:                                              ; preds = %138
  %146 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %147 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %146, i32 0, i32 0
  %148 = call i32 @dev_info(i32* %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %167

149:                                              ; preds = %144, %137
  %150 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %151 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = call i32 @media_entity_cleanup(%struct.TYPE_15__* %152)
  br label %154

154:                                              ; preds = %149, %127
  %155 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %156 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %155, i32 0, i32 2
  %157 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_14__* %156)
  %158 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %159 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %158, i32 0, i32 1
  %160 = call i32 @mutex_destroy(i32* %159)
  br label %161

161:                                              ; preds = %154, %68
  %162 = load %struct.ov2640_priv*, %struct.ov2640_priv** %4, align 8
  %163 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @clk_disable_unprepare(i32 %164)
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %161, %145, %59, %47, %27, %14
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ov2640_priv* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @ov2640_probe_dt(%struct.i2c_client*, %struct.ov2640_priv*) #1

declare dso_local i32 @ov2640_select_win(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_13__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_14__*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ov2640_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_15__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
