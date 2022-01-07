; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tw2804 = type { i32, %struct.TYPE_4__, i32, %struct.v4l2_subdev }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_4__* }
%struct.v4l2_ctrl = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tw2804_ops = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@tw2804_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_COLOR_KILLER = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CID_CHROMA_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tw2804_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw2804_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.tw2804*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.v4l2_ctrl*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %148

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.tw2804* @devm_kzalloc(i32* %23, i32 24, i32 %24)
  store %struct.tw2804* %25, %struct.tw2804** %7, align 8
  %26 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %27 = icmp eq %struct.tw2804* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %148

31:                                               ; preds = %21
  %32 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %33 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %32, i32 0, i32 3
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %8, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %34, %struct.i2c_client* %35, i32* @tw2804_ops)
  %37 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %38 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load i32, i32* @V4L2_STD_NTSC, align 4
  %40 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %41 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %43 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %42, i32 0, i32 1
  %44 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_4__* %43, i32 10)
  %45 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %46 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %45, i32 0, i32 1
  %47 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %48 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %46, i32* @tw2804_ctrl_ops, i32 %47, i32 0, i32 255, i32 1, i32 128)
  %49 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %50 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %49, i32 0, i32 1
  %51 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %52 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %50, i32* @tw2804_ctrl_ops, i32 %51, i32 0, i32 255, i32 1, i32 128)
  %53 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %54 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %53, i32 0, i32 1
  %55 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %56 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %54, i32* @tw2804_ctrl_ops, i32 %55, i32 0, i32 255, i32 1, i32 128)
  %57 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %58 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %57, i32 0, i32 1
  %59 = load i32, i32* @V4L2_CID_HUE, align 4
  %60 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %58, i32* @tw2804_ctrl_ops, i32 %59, i32 0, i32 255, i32 1, i32 128)
  %61 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %62 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %61, i32 0, i32 1
  %63 = load i32, i32* @V4L2_CID_COLOR_KILLER, align 4
  %64 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %62, i32* @tw2804_ctrl_ops, i32 %63, i32 0, i32 1, i32 1, i32 0)
  %65 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %66 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %65, i32 0, i32 1
  %67 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %68 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %66, i32* @tw2804_ctrl_ops, i32 %67, i32 0, i32 1, i32 1, i32 0)
  %69 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %70 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %69, i32 0, i32 1
  %71 = load i32, i32* @V4L2_CID_GAIN, align 4
  %72 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %70, i32* @tw2804_ctrl_ops, i32 %71, i32 0, i32 255, i32 1, i32 128)
  store %struct.v4l2_ctrl* %72, %struct.v4l2_ctrl** %9, align 8
  %73 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %74 = icmp ne %struct.v4l2_ctrl* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %31
  %76 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %77 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %78 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %31
  %82 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %83 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %82, i32 0, i32 1
  %84 = load i32, i32* @V4L2_CID_CHROMA_GAIN, align 4
  %85 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %83, i32* @tw2804_ctrl_ops, i32 %84, i32 0, i32 255, i32 1, i32 128)
  store %struct.v4l2_ctrl* %85, %struct.v4l2_ctrl** %9, align 8
  %86 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %87 = icmp ne %struct.v4l2_ctrl* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %90 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %91 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %96 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %95, i32 0, i32 1
  %97 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %98 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %96, i32* @tw2804_ctrl_ops, i32 %97, i32 0, i32 255, i32 1, i32 122)
  store %struct.v4l2_ctrl* %98, %struct.v4l2_ctrl** %9, align 8
  %99 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %100 = icmp ne %struct.v4l2_ctrl* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %109 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %108, i32 0, i32 1
  %110 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %111 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__* %109, i32* @tw2804_ctrl_ops, i32 %110, i32 0, i32 255, i32 1, i32 122)
  store %struct.v4l2_ctrl* %111, %struct.v4l2_ctrl** %9, align 8
  %112 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %113 = icmp ne %struct.v4l2_ctrl* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %116 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %117 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %107
  %121 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %122 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %121, i32 0, i32 1
  %123 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %123, i32 0, i32 0
  store %struct.TYPE_4__* %122, %struct.TYPE_4__** %124, align 8
  %125 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %126 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %120
  %132 = load %struct.tw2804*, %struct.tw2804** %7, align 8
  %133 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %132, i32 0, i32 1
  %134 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_4__* %133)
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %3, align 4
  br label %148

136:                                              ; preds = %120
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = shl i32 %140, 1
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 1
  %144 = load %struct.i2c_adapter*, %struct.i2c_adapter** %143, align 8
  %145 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @v4l_info(%struct.i2c_client* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %141, i32 %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %136, %131, %28, %18
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.tw2804* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_4__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
