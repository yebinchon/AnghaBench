; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_radio_tea5777_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_radio_tea5777_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.module* }
%struct.module = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.radio_tea5777 = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_11__*, %struct.TYPE_12__, %struct.TYPE_13__, i32, i32 }

@TEA5777_W_IFCE_SHIFT = common dso_local global i64 0, align 8
@TEA5777_W_IFW_SHIFT = common dso_local global i64 0, align 8
@TEA5777_W_INTEXT_SHIFT = common dso_local global i64 0, align 8
@TEA5777_W_CHP0_SHIFT = common dso_local global i64 0, align 8
@TEA5777_W_SLEV_SHIFT = common dso_local global i64 0, align 8
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't set initial freq (%d)\0A\00", align 1
@tea575x_radio = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_HW_FREQ_SEEK = common dso_local global i32 0, align 4
@tea575x_fops = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@tea575x_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"can't initialize controls\0A\00", align 1
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"can't register video device!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radio_tea5777_init(%struct.radio_tea5777* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radio_tea5777*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.radio_tea5777* %0, %struct.radio_tea5777** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load i64, i64* @TEA5777_W_IFCE_SHIFT, align 8
  %8 = shl i64 1, %7
  %9 = load i64, i64* @TEA5777_W_IFW_SHIFT, align 8
  %10 = shl i64 1, %9
  %11 = or i64 %8, %10
  %12 = load i64, i64* @TEA5777_W_INTEXT_SHIFT, align 8
  %13 = shl i64 1, %12
  %14 = or i64 %11, %13
  %15 = load i64, i64* @TEA5777_W_CHP0_SHIFT, align 8
  %16 = shl i64 1, %15
  %17 = or i64 %14, %16
  %18 = load i64, i64* @TEA5777_W_SLEV_SHIFT, align 8
  %19 = shl i64 1, %18
  %20 = or i64 %17, %19
  %21 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %22 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %24 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %23, i32 0, i32 1
  store i32 1448000, i32* %24, align 8
  %25 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %26 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %27 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %29 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %34 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %33, i32 0, i32 3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (%struct.TYPE_11__*, i8*, ...) @v4l2_err(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %140

39:                                               ; preds = %2
  %40 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %41 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %40, i32 0, i32 2
  %42 = bitcast %struct.TYPE_10__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_10__* @tea575x_radio to i8*), i64 48, i1 false)
  %43 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %44 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %43, i32 0, i32 2
  %45 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %46 = call i32 @video_set_drvdata(%struct.TYPE_10__* %44, %struct.radio_tea5777* %45)
  %47 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %48 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %47, i32 0, i32 6
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %51 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %55 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %54, i32 0, i32 3
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strscpy(i32 %53, i32 %58, i32 4)
  %60 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %61 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %60, i32 0, i32 6
  %62 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %63 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  store i32* %61, i32** %64, align 8
  %65 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %66 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %65, i32 0, i32 3
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %69 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %70, align 8
  %71 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %72 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @V4L2_CAP_HW_FREQ_SEEK, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %77 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %80 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %79, i32 0, i32 5
  %81 = bitcast %struct.TYPE_13__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 bitcast (%struct.TYPE_13__* @tea575x_fops to i8*), i64 8, i1 false)
  %82 = load %struct.module*, %struct.module** %5, align 8
  %83 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %84 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store %struct.module* %82, %struct.module** %85, align 8
  %86 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %87 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %86, i32 0, i32 5
  %88 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %89 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %90, align 8
  %91 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %92 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %91, i32 0, i32 4
  %93 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %94 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %95, align 8
  %96 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %97 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %96, i32 0, i32 4
  %98 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_12__* %97, i32 1)
  %99 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %100 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %99, i32 0, i32 4
  %101 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %102 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_12__* %100, i32* @tea575x_ctrl_ops, i32 %101, i32 0, i32 1, i32 1, i32 1)
  %103 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %104 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %39
  %110 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %111 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %110, i32 0, i32 3
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = call i32 (%struct.TYPE_11__*, i8*, ...) @v4l2_err(%struct.TYPE_11__* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %115 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %114, i32 0, i32 4
  %116 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_12__* %115)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %140

118:                                              ; preds = %39
  %119 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %120 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %119, i32 0, i32 4
  %121 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_12__* %120)
  %122 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %123 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %122, i32 0, i32 2
  %124 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %125 = call i32 @video_register_device(%struct.TYPE_10__* %123, i32 %124, i32 -1)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %118
  %129 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %130 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %129, i32 0, i32 3
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = call i32 (%struct.TYPE_11__*, i8*, ...) @v4l2_err(%struct.TYPE_11__* %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %133 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %134 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_12__* %136)
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %140

139:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %128, %109, %32
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @radio_tea5777_set_freq(%struct.radio_tea5777*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_11__*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_10__*, %struct.radio_tea5777*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_12__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_12__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_12__*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
