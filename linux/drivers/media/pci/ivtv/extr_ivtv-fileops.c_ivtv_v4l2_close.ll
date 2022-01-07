; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.ivtv_open_id = type { i64, i32, %struct.ivtv* }
%struct.ivtv = type { i32, i64, i32, %struct.ivtv_stream*, %struct.TYPE_2__, i32, i32, i32 }
%struct.ivtv_stream = type { i64, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"close %s\0A\00", align 1
@IVTV_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@IVTV_HW_SAA711X = common dso_local global i32 0, align 4
@s_crystal_freq = common dso_local global i32 0, align 4
@SAA7115_FREQ_32_11_MHZ = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_VIDEO = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_VOUT = common dso_local global i64 0, align 8
@V4L2_DEC_CMD_STOP_TO_BLACK = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_STOP_IMMEDIATELY = common dso_local global i32 0, align 4
@OUT_NONE = common dso_local global i64 0, align 8
@IVTV_F_S_APPL_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_v4l2_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.v4l2_fh*, align 8
  %4 = alloca %struct.ivtv_open_id*, align 8
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %8 = load %struct.file*, %struct.file** %2, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %9, align 8
  store %struct.v4l2_fh* %10, %struct.v4l2_fh** %3, align 8
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %12 = call %struct.ivtv_open_id* @fh2id(%struct.v4l2_fh* %11)
  store %struct.ivtv_open_id* %12, %struct.ivtv_open_id** %4, align 8
  %13 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 2
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %5, align 8
  %16 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 3
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %17, align 8
  %19 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %20 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i64 %21
  store %struct.ivtv_stream* %22, %struct.ivtv_stream** %6, align 8
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @IVTV_DEBUG_FILE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %31 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IVTV_ENC_STREAM_TYPE_RAD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %1
  %36 = load %struct.file*, %struct.file** %2, align 8
  %37 = call i64 @v4l2_fh_is_singular_file(%struct.file* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %92

39:                                               ; preds = %35
  %40 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %41 = call i32 @ivtv_mute(%struct.ivtv* %40)
  %42 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %43 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %44 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %43, i32 0, i32 7
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %47 = load i32, i32* @video, align 4
  %48 = load i32, i32* @s_std, align 4
  %49 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ivtv_call_all(%struct.ivtv* %46, i32 %47, i32 %48, i32 %51)
  %53 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %54 = call i32 @ivtv_audio_set_io(%struct.ivtv* %53)
  %55 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %56 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IVTV_HW_SAA711X, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %39
  %62 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %63 = load i32, i32* @IVTV_HW_SAA711X, align 4
  %64 = load i32, i32* @video, align 4
  %65 = load i32, i32* @s_crystal_freq, align 4
  %66 = load i32, i32* @SAA7115_FREQ_32_11_MHZ, align 4
  %67 = call i32 @ivtv_call_hw(%struct.ivtv* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %61, %39
  %69 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 5
  %71 = call i64 @atomic_read(i32* %70)
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %75 = load i32, i32* @CX2341X_ENC_MUTE_VIDEO, align 4
  %76 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %77 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @v4l2_ctrl_g_ctrl(i32 %79)
  %81 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %82 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @v4l2_ctrl_g_ctrl(i32 %84)
  %86 = shl i32 %85, 8
  %87 = or i32 %80, %86
  %88 = call i32 @ivtv_vapi(%struct.ivtv* %74, i32 %75, i32 1, i32 %87)
  br label %89

89:                                               ; preds = %73, %68
  %90 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %91 = call i32 @ivtv_unmute(%struct.ivtv* %90)
  br label %92

92:                                               ; preds = %89, %35, %1
  %93 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %94 = call i32 @v4l2_fh_del(%struct.v4l2_fh* %93)
  %95 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %96 = call i32 @v4l2_fh_exit(%struct.v4l2_fh* %95)
  %97 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %98 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %101 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %100, i32 0, i32 1
  %102 = icmp ne i32* %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %140

104:                                              ; preds = %92
  %105 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %106 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %104
  %111 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %112 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %111, i32 0, i32 3
  %113 = load %struct.ivtv_stream*, %struct.ivtv_stream** %112, align 8
  %114 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VOUT, align 8
  %115 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %113, i64 %114
  store %struct.ivtv_stream* %115, %struct.ivtv_stream** %7, align 8
  %116 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %117 = load i32, i32* @V4L2_DEC_CMD_STOP_TO_BLACK, align 4
  %118 = load i32, i32* @V4L2_DEC_CMD_STOP_IMMEDIATELY, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @ivtv_stop_decoding(%struct.ivtv_open_id* %116, i32 %119, i32 0)
  %121 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %122 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @OUT_NONE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %110
  %127 = load i32, i32* @IVTV_F_S_APPL_IO, align 4
  %128 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %129 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %128, i32 0, i32 1
  %130 = call i32 @test_bit(i32 %127, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %134 = call i32 @ivtv_disable_cc(%struct.ivtv* %133)
  br label %135

135:                                              ; preds = %132, %126, %110
  br label %139

136:                                              ; preds = %104
  %137 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %138 = call i32 @ivtv_stop_capture(%struct.ivtv_open_id* %137, i32 0)
  br label %139

139:                                              ; preds = %136, %135
  br label %140

140:                                              ; preds = %139, %103
  %141 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %142 = call i32 @kfree(%struct.ivtv_open_id* %141)
  %143 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %144 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %143, i32 0, i32 2
  %145 = call i32 @mutex_unlock(i32* %144)
  ret i32 0
}

declare dso_local %struct.ivtv_open_id* @fh2id(%struct.v4l2_fh*) #1

declare dso_local i32 @IVTV_DEBUG_FILE(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @ivtv_mute(%struct.ivtv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @ivtv_audio_set_io(%struct.ivtv*) #1

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @ivtv_unmute(%struct.ivtv*) #1

declare dso_local i32 @v4l2_fh_del(%struct.v4l2_fh*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.v4l2_fh*) #1

declare dso_local i32 @ivtv_stop_decoding(%struct.ivtv_open_id*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ivtv_disable_cc(%struct.ivtv*) #1

declare dso_local i32 @ivtv_stop_capture(%struct.ivtv_open_id*, i32) #1

declare dso_local i32 @kfree(%struct.ivtv_open_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
