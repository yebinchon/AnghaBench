; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_mt9v011_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_mt9v011_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.mt9v011_platform_data* }
%struct.mt9v011_platform_data = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mt9v011 = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.v4l2_subdev, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9v011_ops = common dso_local global i32 0, align 4
@R00_MT9V011_CHIP_VERSION = common dso_local global i32 0, align 4
@MT9V011_VERSION = common dso_local global i64 0, align 8
@MT9V011_REV_B_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"*** unknown micron chip detected (0x%04x).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mt9v011_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"control initialization error %d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"xtal set to %d.%03d MHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"chip found @ 0x%02x (%s - chip version 0x%04x)\0A\00", align 1
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9v011_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v011_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mt9v011*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mt9v011_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(%struct.TYPE_11__* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %155

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mt9v011* @devm_kzalloc(%struct.TYPE_12__* %24, i32 48, i32 %25)
  store %struct.mt9v011* %26, %struct.mt9v011** %7, align 8
  %27 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %28 = icmp ne %struct.mt9v011* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %155

32:                                               ; preds = %22
  %33 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %34 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %33, i32 0, i32 6
  store %struct.v4l2_subdev* %34, %struct.v4l2_subdev** %8, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %35, %struct.i2c_client* %36, i32* @mt9v011_ops)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %39 = load i32, i32* @R00_MT9V011_CHIP_VERSION, align 4
  %40 = call i64 @mt9v011_read(%struct.v4l2_subdev* %38, i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @MT9V011_VERSION, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @MT9V011_REV_B_VERSION, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @v4l2_info(%struct.v4l2_subdev* %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %155

54:                                               ; preds = %44, %32
  %55 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %56 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %55, i32 0, i32 5
  %57 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %56, i32 5)
  %58 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %59 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %58, i32 0, i32 5
  %60 = load i32, i32* @V4L2_CID_GAIN, align 4
  %61 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %59, i32* @mt9v011_ctrl_ops, i32 %60, i32 0, i32 4063, i32 1, i32 32)
  %62 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %63 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %62, i32 0, i32 5
  %64 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %65 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %63, i32* @mt9v011_ctrl_ops, i32 %64, i32 0, i32 2047, i32 1, i32 508)
  %66 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %67 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %66, i32 0, i32 5
  %68 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %69 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %67, i32* @mt9v011_ctrl_ops, i32 %68, i32 -512, i32 511, i32 1, i32 0)
  %70 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %71 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %70, i32 0, i32 5
  %72 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %73 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %71, i32* @mt9v011_ctrl_ops, i32 %72, i32 -512, i32 511, i32 1, i32 0)
  %74 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %75 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %74, i32 0, i32 5
  %76 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %77 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %75, i32* @mt9v011_ctrl_ops, i32 %76, i32 0, i32 1, i32 1, i32 0)
  %78 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %79 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %78, i32 0, i32 5
  %80 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %81 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %79, i32* @mt9v011_ctrl_ops, i32 %80, i32 0, i32 1, i32 1, i32 0)
  %82 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %83 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %54
  %88 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %89 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @v4l2_err(%struct.v4l2_subdev* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %96 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %95, i32 0, i32 5
  %97 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__* %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %155

99:                                               ; preds = %54
  %100 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %101 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %100, i32 0, i32 5
  %102 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %103 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %103, i32 0, i32 0
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %104, align 8
  %105 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %106 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %105, i32 0, i32 0
  store i32 36, i32* %106, align 8
  %107 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %108 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %107, i32 0, i32 1
  store i32 508, i32* %108, align 4
  %109 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %110 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %109, i32 0, i32 2
  store i32 640, i32* %110, align 8
  %111 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %112 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %111, i32 0, i32 3
  store i32 480, i32* %112, align 4
  %113 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %114 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %113, i32 0, i32 4
  store i32 27000000, i32* %114, align 8
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.mt9v011_platform_data*, %struct.mt9v011_platform_data** %117, align 8
  %119 = icmp ne %struct.mt9v011_platform_data* %118, null
  br i1 %119, label %120, label %142

120:                                              ; preds = %99
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load %struct.mt9v011_platform_data*, %struct.mt9v011_platform_data** %123, align 8
  store %struct.mt9v011_platform_data* %124, %struct.mt9v011_platform_data** %10, align 8
  %125 = load %struct.mt9v011_platform_data*, %struct.mt9v011_platform_data** %10, align 8
  %126 = getelementptr inbounds %struct.mt9v011_platform_data, %struct.mt9v011_platform_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %129 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @debug, align 4
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %132 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %133 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %134, 1000000
  %136 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %137 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = sdiv i32 %138, 1000
  %140 = srem i32 %139, 1000
  %141 = call i32 @v4l2_dbg(i32 1, i32 %130, %struct.v4l2_subdev* %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %140)
  br label %142

142:                                              ; preds = %120, %99
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = shl i32 %146, 1
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %6, align 8
  %154 = call i32 @v4l_info(%struct.i2c_client* %143, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %152, i64 %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %142, %87, %48, %29, %19
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.mt9v011* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i64 @mt9v011_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
