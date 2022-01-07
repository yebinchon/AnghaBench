; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_tea5764_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_tea5764_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.v4l2_device*, i32* }
%struct.v4l2_device = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tea5764_device = type { %struct.TYPE_4__, i32, %struct.tea5764_regs, %struct.i2c_client*, %struct.v4l2_ctrl_handler, %struct.v4l2_device }
%struct.tea5764_regs = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not register v4l2_device\0A\00", align 1
@tea5764_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not register controls\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"chipid = %04X, manid = %04X\00", align 1
@TEA5764_CHIPID = common dso_local global i64 0, align 8
@TEA5764_MANID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"This chip is not a TEA5764!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tea5764_radio_template = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Could not register video device!\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"registered.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tea5764_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tea5764_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tea5764_device*, align 8
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca %struct.tea5764_regs*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tea5764_device* @kzalloc(i32 72, i32 %12)
  store %struct.tea5764_device* %13, %struct.tea5764_device** %6, align 8
  %14 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %15 = icmp ne %struct.tea5764_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %145

19:                                               ; preds = %2
  %20 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %21 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %20, i32 0, i32 5
  store %struct.v4l2_device* %21, %struct.v4l2_device** %7, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %25 = call i32 @v4l2_device_register(i32* %23, %struct.v4l2_device* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %30 = call i32 @v4l2_err(%struct.v4l2_device* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %141

31:                                               ; preds = %19
  %32 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %33 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %32, i32 0, i32 4
  store %struct.v4l2_ctrl_handler* %33, %struct.v4l2_ctrl_handler** %8, align 8
  %34 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %35 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %34, i32 1)
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %37 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %38 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @tea5764_ctrl_ops, i32 %37, i32 0, i32 1, i32 1, i32 1)
  %39 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %40 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %40, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %39, %struct.v4l2_ctrl_handler** %41, align 8
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %51 = call i32 @v4l2_err(%struct.v4l2_device* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %136

52:                                               ; preds = %31
  %53 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %54 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %53, i32 0, i32 1
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %58 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %57, i32 0, i32 3
  store %struct.i2c_client* %56, %struct.i2c_client** %58, align 8
  %59 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %60 = call i32 @tea5764_i2c_read(%struct.tea5764_device* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %136

64:                                               ; preds = %52
  %65 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %66 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %65, i32 0, i32 2
  store %struct.tea5764_regs* %66, %struct.tea5764_regs** %9, align 8
  %67 = load %struct.tea5764_regs*, %struct.tea5764_regs** %9, align 8
  %68 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tea5764_regs*, %struct.tea5764_regs** %9, align 8
  %71 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, ...) @PDEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %69, i32 %72)
  %74 = load %struct.tea5764_regs*, %struct.tea5764_regs** %9, align 8
  %75 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TEA5764_CHIPID, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %86, label %79

79:                                               ; preds = %64
  %80 = load %struct.tea5764_regs*, %struct.tea5764_regs** %9, align 8
  %81 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 4095
  %84 = load i32, i32* @TEA5764_MANID, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79, %64
  %87 = call i32 @PWARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %136

90:                                               ; preds = %79
  %91 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %92 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %91, i32 0, i32 0
  %93 = bitcast %struct.TYPE_4__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 bitcast (%struct.TYPE_4__* @tea5764_radio_template to i8*), i64 24, i1 false)
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %96 = call i32 @i2c_set_clientdata(%struct.i2c_client* %94, %struct.tea5764_device* %95)
  %97 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %98 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %97, i32 0, i32 0
  %99 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %100 = call i32 @video_set_drvdata(%struct.TYPE_4__* %98, %struct.tea5764_device* %99)
  %101 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %102 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %101, i32 0, i32 1
  %103 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %104 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32* %102, i32** %105, align 8
  %106 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %107 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %108 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store %struct.v4l2_device* %106, %struct.v4l2_device** %109, align 8
  %110 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %111 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %114 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %117 = call i32 @tea5764_i2c_read(%struct.tea5764_device* %116)
  %118 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %119 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %120 = call i32 @tea5764_set_audout_mode(%struct.tea5764_device* %118, i32 %119)
  %121 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %122 = call i32 @tea5764_mute(%struct.tea5764_device* %121, i32 1)
  %123 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %124 = call i32 @tea5764_power_down(%struct.tea5764_device* %123)
  %125 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %126 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %125, i32 0, i32 0
  %127 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %128 = load i32, i32* @radio_nr, align 4
  %129 = call i32 @video_register_device(%struct.TYPE_4__* %126, i32 %127, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %90
  %133 = call i32 @PWARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %136

134:                                              ; preds = %90
  %135 = call i32 @PINFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %145

136:                                              ; preds = %132, %86, %63, %46
  %137 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %138 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %137)
  %139 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %140 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %139)
  br label %141

141:                                              ; preds = %136, %28
  %142 = load %struct.tea5764_device*, %struct.tea5764_device** %6, align 8
  %143 = call i32 @kfree(%struct.tea5764_device* %142)
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %141, %134, %16
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @PDEBUG(i8*, ...) #1

declare dso_local %struct.tea5764_device* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.v4l2_device*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tea5764_i2c_read(%struct.tea5764_device*) #1

declare dso_local i32 @PWARN(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tea5764_device*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_4__*, %struct.tea5764_device*) #1

declare dso_local i32 @tea5764_set_audout_mode(%struct.tea5764_device*, i32) #1

declare dso_local i32 @tea5764_mute(%struct.tea5764_device*, i32) #1

declare dso_local i32 @tea5764_power_down(%struct.tea5764_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @PINFO(i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

declare dso_local i32 @kfree(%struct.tea5764_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
