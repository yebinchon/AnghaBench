; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_wm8775.c_wm8775_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_wm8775.c_wm8775_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.wm8775_platform_data* }
%struct.wm8775_platform_data = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8775_state = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__, i8*, i8*, i8*, %struct.v4l2_subdev }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_8__* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8775_ops = common dso_local global i32 0, align 4
@wm8775_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_LOUDNESS = common dso_local global i32 0, align 4
@R23 = common dso_local global i32 0, align 4
@R7 = common dso_local global i32 0, align 4
@R11 = common dso_local global i32 0, align 4
@R12 = common dso_local global i32 0, align 4
@R13 = common dso_local global i32 0, align 4
@R14 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@R16 = common dso_local global i32 0, align 4
@R17 = common dso_local global i32 0, align 4
@ALC_EN = common dso_local global i32 0, align 4
@ALC_HOLD = common dso_local global i32 0, align 4
@R18 = common dso_local global i32 0, align 4
@R19 = common dso_local global i32 0, align 4
@R20 = common dso_local global i32 0, align 4
@R21 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8775_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8775_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8775_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8775_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.wm8775_platform_data*, %struct.wm8775_platform_data** %13, align 8
  %15 = icmp ne %struct.wm8775_platform_data* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.wm8775_platform_data*, %struct.wm8775_platform_data** %19, align 8
  store %struct.wm8775_platform_data* %20, %struct.wm8775_platform_data** %10, align 8
  %21 = load %struct.wm8775_platform_data*, %struct.wm8775_platform_data** %10, align 8
  %22 = getelementptr inbounds %struct.wm8775_platform_data, %struct.wm8775_platform_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %29 = call i32 @i2c_check_functionality(%struct.TYPE_9__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %180

34:                                               ; preds = %24
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 1
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @v4l_info(%struct.i2c_client* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.wm8775_state* @devm_kzalloc(%struct.TYPE_10__* %47, i32 56, i32 %48)
  store %struct.wm8775_state* %49, %struct.wm8775_state** %6, align 8
  %50 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %51 = icmp eq %struct.wm8775_state* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %180

55:                                               ; preds = %34
  %56 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %57 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %56, i32 0, i32 6
  store %struct.v4l2_subdev* %57, %struct.v4l2_subdev** %7, align 8
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %58, %struct.i2c_client* %59, i32* @wm8775_ops)
  %61 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %62 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %61, i32 0, i32 0
  store i32 2, i32* %62, align 8
  %63 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %64 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %63, i32 0, i32 2
  %65 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %64, i32 4)
  %66 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %67 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %66, i32 0, i32 2
  %68 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %69 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %67, i32* @wm8775_ctrl_ops, i32 %68, i32 0, i32 1, i32 1, i32 0)
  %70 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %71 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %73 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %72, i32 0, i32 2
  %74 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %75 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %73, i32* @wm8775_ctrl_ops, i32 %74, i32 0, i32 65535, i32 656, i32 52992)
  %76 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %77 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %79 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %78, i32 0, i32 2
  %80 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %81 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %79, i32* @wm8775_ctrl_ops, i32 %80, i32 0, i32 65535, i32 656, i32 32768)
  %82 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %83 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %85 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %84, i32 0, i32 2
  %86 = load i32, i32* @V4L2_CID_AUDIO_LOUDNESS, align 4
  %87 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_8__* %85, i32* @wm8775_ctrl_ops, i32 %86, i32 0, i32 1, i32 1, i32 1)
  %88 = bitcast i8* %87 to %struct.TYPE_7__*
  %89 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %90 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %89, i32 0, i32 1
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %90, align 8
  %91 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %92 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %91, i32 0, i32 2
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %93, i32 0, i32 0
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %94, align 8
  %95 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %96 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %55
  %102 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %103 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %102, i32 0, i32 2
  %104 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %180

106:                                              ; preds = %55
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %108 = load i32, i32* @R23, align 4
  %109 = call i32 @wm8775_write(%struct.v4l2_subdev* %107, i32 %108, i32 0)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %111 = load i32, i32* @R7, align 4
  %112 = call i32 @wm8775_write(%struct.v4l2_subdev* %110, i32 %111, i32 0)
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %114 = load i32, i32* @R11, align 4
  %115 = call i32 @wm8775_write(%struct.v4l2_subdev* %113, i32 %114, i32 33)
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %117 = load i32, i32* @R12, align 4
  %118 = call i32 @wm8775_write(%struct.v4l2_subdev* %116, i32 %117, i32 258)
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %120 = load i32, i32* @R13, align 4
  %121 = call i32 @wm8775_write(%struct.v4l2_subdev* %119, i32 %120, i32 0)
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %106
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %126 = load i32, i32* @R14, align 4
  %127 = call i32 @wm8775_write(%struct.v4l2_subdev* %125, i32 %126, i32 468)
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %129 = load i32, i32* @R15, align 4
  %130 = call i32 @wm8775_write(%struct.v4l2_subdev* %128, i32 %129, i32 468)
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %132 = load i32, i32* @R16, align 4
  %133 = call i32 @wm8775_write(%struct.v4l2_subdev* %131, i32 %132, i32 447)
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %135 = load i32, i32* @R17, align 4
  %136 = call i32 @wm8775_write(%struct.v4l2_subdev* %134, i32 %135, i32 389)
  br label %157

137:                                              ; preds = %106
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %139 = load i32, i32* @R16, align 4
  %140 = call i32 @wm8775_write(%struct.v4l2_subdev* %138, i32 %139, i32 443)
  %141 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %142 = load i32, i32* @R17, align 4
  %143 = load %struct.wm8775_state*, %struct.wm8775_state** %6, align 8
  %144 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i32, i32* @ALC_EN, align 4
  br label %152

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  %154 = load i32, i32* @ALC_HOLD, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @wm8775_write(%struct.v4l2_subdev* %141, i32 %142, i32 %155)
  br label %157

157:                                              ; preds = %152, %124
  %158 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %159 = load i32, i32* @R18, align 4
  %160 = call i32 @wm8775_write(%struct.v4l2_subdev* %158, i32 %159, i32 162)
  %161 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %162 = load i32, i32* @R19, align 4
  %163 = call i32 @wm8775_write(%struct.v4l2_subdev* %161, i32 %162, i32 5)
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %157
  %167 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %168 = load i32, i32* @R20, align 4
  %169 = call i32 @wm8775_write(%struct.v4l2_subdev* %167, i32 %168, i32 122)
  %170 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %171 = load i32, i32* @R21, align 4
  %172 = call i32 @wm8775_write(%struct.v4l2_subdev* %170, i32 %171, i32 258)
  br label %179

173:                                              ; preds = %157
  %174 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %175 = load i32, i32* @R20, align 4
  %176 = call i32 @wm8775_write(%struct.v4l2_subdev* %174, i32 %175, i32 251)
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %178 = call i32 @wm8775_set_audio(%struct.v4l2_subdev* %177, i32 1)
  br label %179

179:                                              ; preds = %173, %166
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %101, %52, %31
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.wm8775_state* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__*) #1

declare dso_local i32 @wm8775_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @wm8775_set_audio(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
