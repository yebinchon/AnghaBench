; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.bt819 = type { i32, %struct.TYPE_6__, i64, i32, %struct.v4l2_subdev }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bt819_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bt819a\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"bt817a\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"bt815a\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unknown chip version 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s found @ 0x%x (%s)\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"init status %d\0A\00", align 1
@bt819_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bt819_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bt819*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(%struct.TYPE_7__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %122

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.bt819* @devm_kzalloc(i32* %23, i32 32, i32 %24)
  store %struct.bt819* %25, %struct.bt819** %8, align 8
  %26 = load %struct.bt819*, %struct.bt819** %8, align 8
  %27 = icmp eq %struct.bt819* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %122

31:                                               ; preds = %21
  %32 = load %struct.bt819*, %struct.bt819** %8, align 8
  %33 = getelementptr inbounds %struct.bt819, %struct.bt819* %32, i32 0, i32 4
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %9, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %34, %struct.i2c_client* %35, i32* @bt819_ops)
  %37 = load %struct.bt819*, %struct.bt819** %8, align 8
  %38 = call i32 @bt819_read(%struct.bt819* %37, i32 23)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 240
  switch i32 %40, label %44 [
    i32 112, label %41
    i32 96, label %42
    i32 32, label %43
  ]

41:                                               ; preds = %31
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %51

42:                                               ; preds = %31
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %51

43:                                               ; preds = %31
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %51

44:                                               ; preds = %31
  %45 = load i32, i32* @debug, align 4
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @v4l2_dbg(i32 1, i32 %45, %struct.v4l2_subdev* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %122

51:                                               ; preds = %43, %42, %41
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 1
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @v4l_info(%struct.i2c_client* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 %57, i32 %62)
  %64 = load i32, i32* @V4L2_STD_NTSC, align 4
  %65 = load %struct.bt819*, %struct.bt819** %8, align 8
  %66 = getelementptr inbounds %struct.bt819, %struct.bt819* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bt819*, %struct.bt819** %8, align 8
  %68 = getelementptr inbounds %struct.bt819, %struct.bt819* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.bt819*, %struct.bt819** %8, align 8
  %70 = getelementptr inbounds %struct.bt819, %struct.bt819* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %72 = call i32 @bt819_init(%struct.v4l2_subdev* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %51
  %76 = load i32, i32* @debug, align 4
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @v4l2_dbg(i32 1, i32 %76, %struct.v4l2_subdev* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %51
  %81 = load %struct.bt819*, %struct.bt819** %8, align 8
  %82 = getelementptr inbounds %struct.bt819, %struct.bt819* %81, i32 0, i32 1
  %83 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %82, i32 4)
  %84 = load %struct.bt819*, %struct.bt819** %8, align 8
  %85 = getelementptr inbounds %struct.bt819, %struct.bt819* %84, i32 0, i32 1
  %86 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %87 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %85, i32* @bt819_ctrl_ops, i32 %86, i32 -128, i32 127, i32 1, i32 0)
  %88 = load %struct.bt819*, %struct.bt819** %8, align 8
  %89 = getelementptr inbounds %struct.bt819, %struct.bt819* %88, i32 0, i32 1
  %90 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %91 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %89, i32* @bt819_ctrl_ops, i32 %90, i32 0, i32 511, i32 1, i32 216)
  %92 = load %struct.bt819*, %struct.bt819** %8, align 8
  %93 = getelementptr inbounds %struct.bt819, %struct.bt819* %92, i32 0, i32 1
  %94 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %95 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %93, i32* @bt819_ctrl_ops, i32 %94, i32 0, i32 511, i32 1, i32 254)
  %96 = load %struct.bt819*, %struct.bt819** %8, align 8
  %97 = getelementptr inbounds %struct.bt819, %struct.bt819* %96, i32 0, i32 1
  %98 = load i32, i32* @V4L2_CID_HUE, align 4
  %99 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %97, i32* @bt819_ctrl_ops, i32 %98, i32 -128, i32 127, i32 1, i32 0)
  %100 = load %struct.bt819*, %struct.bt819** %8, align 8
  %101 = getelementptr inbounds %struct.bt819, %struct.bt819* %100, i32 0, i32 1
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %103 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %102, i32 0, i32 0
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %103, align 8
  %104 = load %struct.bt819*, %struct.bt819** %8, align 8
  %105 = getelementptr inbounds %struct.bt819, %struct.bt819* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %80
  %110 = load %struct.bt819*, %struct.bt819** %8, align 8
  %111 = getelementptr inbounds %struct.bt819, %struct.bt819* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %11, align 4
  %114 = load %struct.bt819*, %struct.bt819** %8, align 8
  %115 = getelementptr inbounds %struct.bt819, %struct.bt819* %114, i32 0, i32 1
  %116 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %122

118:                                              ; preds = %80
  %119 = load %struct.bt819*, %struct.bt819** %8, align 8
  %120 = getelementptr inbounds %struct.bt819, %struct.bt819* %119, i32 0, i32 1
  %121 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %109, %44, %28, %18
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.bt819* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @bt819_read(%struct.bt819*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i8*, i32, i32) #1

declare dso_local i32 @bt819_init(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
