; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_cs53l32a.c_cs53l32a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_cs53l32a.c_cs53l32a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cs53l32a_state = type { %struct.TYPE_5__, %struct.v4l2_subdev }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_5__* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"cs53l32a\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs53l32a_ops = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Read Reg %d %02x\0A\00", align 1
@cs53l32a_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cs53l32a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs53l32a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.cs53l32a_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(%struct.TYPE_6__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %132

21:                                               ; preds = %2
  %22 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %23 = icmp ne %struct.i2c_device_id* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strscpy(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 1
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @v4l_info(%struct.i2c_client* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.cs53l32a_state* @devm_kzalloc(i32* %42, i32 16, i32 %43)
  store %struct.cs53l32a_state* %44, %struct.cs53l32a_state** %6, align 8
  %45 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %46 = icmp eq %struct.cs53l32a_state* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %132

50:                                               ; preds = %29
  %51 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %52 = getelementptr inbounds %struct.cs53l32a_state, %struct.cs53l32a_state* %51, i32 0, i32 1
  store %struct.v4l2_subdev* %52, %struct.v4l2_subdev** %7, align 8
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %53, %struct.i2c_client* %54, i32* @cs53l32a_ops)
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %68, %50
  %57 = load i32, i32* %8, align 4
  %58 = icmp sle i32 %57, 7
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @cs53l32a_read(%struct.v4l2_subdev* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @debug, align 4
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @v4l2_dbg(i32 1, i32 %63, %struct.v4l2_subdev* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %73 = getelementptr inbounds %struct.cs53l32a_state, %struct.cs53l32a_state* %72, i32 0, i32 0
  %74 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__* %73, i32 2)
  %75 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %76 = getelementptr inbounds %struct.cs53l32a_state, %struct.cs53l32a_state* %75, i32 0, i32 0
  %77 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %78 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_5__* %76, i32* @cs53l32a_ctrl_ops, i32 %77, i32 -96, i32 12, i32 1, i32 0)
  %79 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %80 = getelementptr inbounds %struct.cs53l32a_state, %struct.cs53l32a_state* %79, i32 0, i32 0
  %81 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %82 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_5__* %80, i32* @cs53l32a_ctrl_ops, i32 %81, i32 0, i32 1, i32 1, i32 0)
  %83 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %84 = getelementptr inbounds %struct.cs53l32a_state, %struct.cs53l32a_state* %83, i32 0, i32 0
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %85, i32 0, i32 0
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %86, align 8
  %87 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %88 = getelementptr inbounds %struct.cs53l32a_state, %struct.cs53l32a_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %71
  %93 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %94 = getelementptr inbounds %struct.cs53l32a_state, %struct.cs53l32a_state* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %10, align 4
  %97 = load %struct.cs53l32a_state*, %struct.cs53l32a_state** %6, align 8
  %98 = getelementptr inbounds %struct.cs53l32a_state, %struct.cs53l32a_state* %97, i32 0, i32 0
  %99 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__* %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  br label %132

101:                                              ; preds = %71
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %103 = call i32 @cs53l32a_write(%struct.v4l2_subdev* %102, i32 1, i32 33)
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %105 = call i32 @cs53l32a_write(%struct.v4l2_subdev* %104, i32 2, i32 41)
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %107 = call i32 @cs53l32a_write(%struct.v4l2_subdev* %106, i32 3, i32 48)
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %109 = call i32 @cs53l32a_write(%struct.v4l2_subdev* %108, i32 4, i32 0)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %111 = call i32 @cs53l32a_write(%struct.v4l2_subdev* %110, i32 5, i32 0)
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %113 = call i32 @cs53l32a_write(%struct.v4l2_subdev* %112, i32 6, i32 0)
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %115 = call i32 @cs53l32a_write(%struct.v4l2_subdev* %114, i32 7, i32 0)
  store i32 1, i32* %8, align 4
  br label %116

116:                                              ; preds = %128, %101
  %117 = load i32, i32* %8, align 4
  %118 = icmp sle i32 %117, 7
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @cs53l32a_read(%struct.v4l2_subdev* %120, i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* @debug, align 4
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @v4l2_dbg(i32 1, i32 %123, %struct.v4l2_subdev* %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %116

131:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %92, %47, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.cs53l32a_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @cs53l32a_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__*) #1

declare dso_local i32 @cs53l32a_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
