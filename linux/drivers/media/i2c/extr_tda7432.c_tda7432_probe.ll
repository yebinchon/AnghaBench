; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda7432.c_tda7432_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda7432.c_tda7432_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tda7432 = type { %struct.TYPE_7__, i8*, i8*, i8*, i8*, %struct.v4l2_subdev }
%struct.TYPE_7__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_7__* }

@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tda7432_ops = common dso_local global i32 0, align 4
@tda7432_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@maxvol = common dso_local global i64 0, align 8
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BASS = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_TREBLE = common dso_local global i32 0, align 4
@loudness = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"loudness parameter must be between 0 and 15\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tda7432_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda7432_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tda7432*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %12, 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @v4l_info(%struct.i2c_client* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.tda7432* @devm_kzalloc(i32* %21, i32 48, i32 %22)
  store %struct.tda7432* %23, %struct.tda7432** %6, align 8
  %24 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %25 = icmp ne %struct.tda7432* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %121

29:                                               ; preds = %2
  %30 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %31 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %30, i32 0, i32 5
  store %struct.v4l2_subdev* %31, %struct.v4l2_subdev** %7, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %32, %struct.i2c_client* %33, i32* @tda7432_ops)
  %35 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %36 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %35, i32 0, i32 0
  %37 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__* %36, i32 5)
  %38 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %39 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %38, i32 0, i32 0
  %40 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %41 = load i64, i64* @maxvol, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 104, i32 79
  %45 = load i64, i64* @maxvol, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 93, i32 71
  %49 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %39, i32* @tda7432_ctrl_ops, i32 %40, i32 0, i32 %44, i32 1, i32 %48)
  %50 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %51 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %50, i32 0, i32 0
  %52 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %53 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %51, i32* @tda7432_ctrl_ops, i32 %52, i32 0, i32 1, i32 1, i32 0)
  %54 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %55 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %57 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %56, i32 0, i32 0
  %58 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %59 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %57, i32* @tda7432_ctrl_ops, i32 %58, i32 -31, i32 31, i32 1, i32 0)
  %60 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %61 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %63 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %62, i32 0, i32 0
  %64 = load i32, i32* @V4L2_CID_AUDIO_BASS, align 4
  %65 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %63, i32* @tda7432_ctrl_ops, i32 %64, i32 0, i32 14, i32 1, i32 7)
  %66 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %67 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %69 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %68, i32 0, i32 0
  %70 = load i32, i32* @V4L2_CID_AUDIO_TREBLE, align 4
  %71 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_7__* %69, i32* @tda7432_ctrl_ops, i32 %70, i32 0, i32 14, i32 1, i32 7)
  %72 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %73 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %75 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %74, i32 0, i32 0
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %76, i32 0, i32 0
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %77, align 8
  %78 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %79 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %29
  %84 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %85 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %8, align 4
  %88 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %89 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %88, i32 0, i32 0
  %90 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %121

92:                                               ; preds = %29
  %93 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %94 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %93, i32 0, i32 2
  %95 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %94)
  %96 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %97 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %96, i32 0, i32 1
  %98 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %97)
  %99 = load %struct.tda7432*, %struct.tda7432** %6, align 8
  %100 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %99, i32 0, i32 0
  %101 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_7__* %100)
  %102 = load i32, i32* @loudness, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %92
  %105 = load i32, i32* @loudness, align 4
  %106 = icmp sgt i32 %105, 15
  br i1 %106, label %107, label %118

107:                                              ; preds = %104, %92
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %109 = call i32 @v4l2_warn(%struct.v4l2_subdev* %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @loudness, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* @loudness, align 4
  br label %113

113:                                              ; preds = %112, %107
  %114 = load i32, i32* @loudness, align 4
  %115 = icmp sgt i32 %114, 15
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 15, i32* @loudness, align 4
  br label %117

117:                                              ; preds = %116, %113
  br label %118

118:                                              ; preds = %117, %104
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %120 = call i32 @tda7432_set(%struct.v4l2_subdev* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %83, %26
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.tda7432* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @tda7432_set(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
