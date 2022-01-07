; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ov6650 = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ov6650_subdev_ops = common dso_local global i32 0, align 4
@ov6550_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@DEF_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@DEF_BLUE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@DEF_RED = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@HUE_MASK = common dso_local global i32 0, align 4
@DEF_HUE = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@DEF_AECH = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@DEF_HSTRT = common dso_local global i32 0, align 4
@DEF_VSTRT = common dso_local global i32 0, align 4
@W_CIF = common dso_local global i32 0, align 4
@H_CIF = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@ov6650_internal_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov6650_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6650_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ov6650*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ov6650* @devm_kzalloc(i32* %9, i32 104, i32 %10)
  store %struct.ov6650* %11, %struct.ov6650** %6, align 8
  %12 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %13 = icmp ne %struct.ov6650* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %165

17:                                               ; preds = %2
  %18 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %19 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_9__* %19, %struct.i2c_client* %20, i32* @ov6650_subdev_ops)
  %22 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %23 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %22, i32 0, i32 1
  %24 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %23, i32 13)
  %25 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %26 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %25, i32 0, i32 1
  %27 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %26, i32* @ov6550_ctrl_ops, i32 %27, i32 0, i32 1, i32 1, i32 0)
  %29 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %30 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %29, i32 0, i32 1
  %31 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %32 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %30, i32* @ov6550_ctrl_ops, i32 %31, i32 0, i32 1, i32 1, i32 0)
  %33 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %34 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %33, i32 0, i32 1
  %35 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %36 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %34, i32* @ov6550_ctrl_ops, i32 %35, i32 0, i32 1, i32 1, i32 1)
  %37 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %38 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %40 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %39, i32 0, i32 1
  %41 = load i32, i32* @V4L2_CID_GAIN, align 4
  %42 = load i32, i32* @DEF_GAIN, align 4
  %43 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %40, i32* @ov6550_ctrl_ops, i32 %41, i32 0, i32 63, i32 1, i32 %42)
  %44 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %45 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %44, i32 0, i32 12
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %47 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %46, i32 0, i32 1
  %48 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %49 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %47, i32* @ov6550_ctrl_ops, i32 %48, i32 0, i32 1, i32 1, i32 1)
  %50 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %51 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %53 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %52, i32 0, i32 1
  %54 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %55 = load i32, i32* @DEF_BLUE, align 4
  %56 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %53, i32* @ov6550_ctrl_ops, i32 %54, i32 0, i32 255, i32 1, i32 %55)
  %57 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %58 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %57, i32 0, i32 11
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %60 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %59, i32 0, i32 1
  %61 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %62 = load i32, i32* @DEF_RED, align 4
  %63 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %60, i32* @ov6550_ctrl_ops, i32 %61, i32 0, i32 255, i32 1, i32 %62)
  %64 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %65 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %67 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %66, i32 0, i32 1
  %68 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %69 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %67, i32* @ov6550_ctrl_ops, i32 %68, i32 0, i32 15, i32 1, i32 8)
  %70 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %71 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %70, i32 0, i32 1
  %72 = load i32, i32* @V4L2_CID_HUE, align 4
  %73 = load i32, i32* @HUE_MASK, align 4
  %74 = load i32, i32* @DEF_HUE, align 4
  %75 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %71, i32* @ov6550_ctrl_ops, i32 %72, i32 0, i32 %73, i32 1, i32 %74)
  %76 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %77 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %76, i32 0, i32 1
  %78 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %79 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %77, i32* @ov6550_ctrl_ops, i32 %78, i32 0, i32 255, i32 1, i32 128)
  %80 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %81 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %80, i32 0, i32 1
  %82 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %83 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %84 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %85 = call i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %81, i32* @ov6550_ctrl_ops, i32 %82, i32 %83, i32 0, i32 %84)
  %86 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %87 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %89 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %88, i32 0, i32 1
  %90 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %91 = load i32, i32* @DEF_AECH, align 4
  %92 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %89, i32* @ov6550_ctrl_ops, i32 %90, i32 0, i32 255, i32 1, i32 %91)
  %93 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %94 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %93, i32 0, i32 9
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %96 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %95, i32 0, i32 1
  %97 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %98 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %96, i32* @ov6550_ctrl_ops, i32 %97, i32 0, i32 255, i32 1, i32 18)
  %99 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %100 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %99, i32 0, i32 1
  %101 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %102 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %103, align 8
  %104 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %105 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %17
  %110 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %111 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %3, align 4
  br label %165

114:                                              ; preds = %17
  %115 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %116 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %115, i32 0, i32 8
  %117 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %116, i32 0, i32 1)
  %118 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %119 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %118, i32 0, i32 7
  %120 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %119, i32 0, i32 1)
  %121 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %122 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %121, i32 0, i32 6
  %123 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %124 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %122, i32 %123, i32 1)
  %125 = load i32, i32* @DEF_HSTRT, align 4
  %126 = shl i32 %125, 1
  %127 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %128 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load i32, i32* @DEF_VSTRT, align 4
  %131 = shl i32 %130, 1
  %132 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %133 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @W_CIF, align 4
  %136 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %137 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @H_CIF, align 4
  %140 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %141 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 8
  %143 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %144 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  %145 = load i32, i32* @MEDIA_BUS_FMT_YUYV8_2X8, align 4
  %146 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %147 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %149 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %150 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %152 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  store i32* @ov6650_internal_ops, i32** %153, align 8
  %154 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %155 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %154, i32 0, i32 2
  %156 = call i32 @v4l2_async_register_subdev(%struct.TYPE_9__* %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %114
  %160 = load %struct.ov6650*, %struct.ov6650** %6, align 8
  %161 = getelementptr inbounds %struct.ov6650, %struct.ov6650* %160, i32 0, i32 1
  %162 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__* %161)
  br label %163

163:                                              ; preds = %159, %114
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %109, %14
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.ov6650* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_9__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
