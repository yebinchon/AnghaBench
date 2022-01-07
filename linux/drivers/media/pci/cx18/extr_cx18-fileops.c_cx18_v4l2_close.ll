; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_v4l2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_v4l2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.cx18_open_id = type { i64, i64, %struct.cx18* }
%struct.cx18 = type { i32, %struct.TYPE_2__, i32, i32, i32, %struct.cx18_stream* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cx18_stream = type { i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"close() of %s\0A\00", align 1
@CX18_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@CX18_CPU_SET_VIDEO_MUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_v4l2_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.v4l2_fh*, align 8
  %4 = alloca %struct.cx18_open_id*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_stream*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  store %struct.v4l2_fh* %9, %struct.v4l2_fh** %3, align 8
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %11 = call %struct.cx18_open_id* @fh2id(%struct.v4l2_fh* %10)
  store %struct.cx18_open_id* %11, %struct.cx18_open_id** %4, align 8
  %12 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %13 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %12, i32 0, i32 2
  %14 = load %struct.cx18*, %struct.cx18** %13, align 8
  store %struct.cx18* %14, %struct.cx18** %5, align 8
  %15 = load %struct.cx18*, %struct.cx18** %5, align 8
  %16 = getelementptr inbounds %struct.cx18, %struct.cx18* %15, i32 0, i32 5
  %17 = load %struct.cx18_stream*, %struct.cx18_stream** %16, align 8
  %18 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %19 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %17, i64 %20
  store %struct.cx18_stream* %21, %struct.cx18_stream** %6, align 8
  %22 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %23 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CX18_DEBUG_IOCTL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.cx18*, %struct.cx18** %5, align 8
  %27 = getelementptr inbounds %struct.cx18, %struct.cx18* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %30 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CX18_ENC_STREAM_TYPE_RAD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %1
  %35 = load %struct.file*, %struct.file** %2, align 8
  %36 = call i64 @v4l2_fh_is_singular_file(%struct.file* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load %struct.cx18*, %struct.cx18** %5, align 8
  %40 = call i32 @cx18_mute(%struct.cx18* %39)
  %41 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %42 = load %struct.cx18*, %struct.cx18** %5, align 8
  %43 = getelementptr inbounds %struct.cx18, %struct.cx18* %42, i32 0, i32 4
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load %struct.cx18*, %struct.cx18** %5, align 8
  %46 = load i32, i32* @video, align 4
  %47 = load i32, i32* @s_std, align 4
  %48 = load %struct.cx18*, %struct.cx18** %5, align 8
  %49 = getelementptr inbounds %struct.cx18, %struct.cx18* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cx18_call_all(%struct.cx18* %45, i32 %46, i32 %47, i32 %50)
  %52 = load %struct.cx18*, %struct.cx18** %5, align 8
  %53 = call i32 @cx18_audio_set_io(%struct.cx18* %52)
  %54 = load %struct.cx18*, %struct.cx18** %5, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 2
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %38
  %59 = load %struct.cx18*, %struct.cx18** %5, align 8
  %60 = load i32, i32* @CX18_CPU_SET_VIDEO_MUTE, align 4
  %61 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %62 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cx18*, %struct.cx18** %5, align 8
  %65 = getelementptr inbounds %struct.cx18, %struct.cx18* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @v4l2_ctrl_g_ctrl(i32 %67)
  %69 = load %struct.cx18*, %struct.cx18** %5, align 8
  %70 = getelementptr inbounds %struct.cx18, %struct.cx18* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @v4l2_ctrl_g_ctrl(i32 %72)
  %74 = shl i32 %73, 8
  %75 = or i32 %68, %74
  %76 = call i32 @cx18_vapi(%struct.cx18* %59, i32 %60, i32 2, i32 %63, i32 %75)
  br label %77

77:                                               ; preds = %58, %38
  %78 = load %struct.cx18*, %struct.cx18** %5, align 8
  %79 = call i32 @cx18_unmute(%struct.cx18* %78)
  br label %80

80:                                               ; preds = %77, %34, %1
  %81 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %82 = call i32 @v4l2_fh_del(%struct.v4l2_fh* %81)
  %83 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %84 = call i32 @v4l2_fh_exit(%struct.v4l2_fh* %83)
  %85 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %86 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %89 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %94 = call i32 @cx18_stop_capture(%struct.cx18_open_id* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %80
  %96 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %97 = call i32 @kfree(%struct.cx18_open_id* %96)
  %98 = load %struct.cx18*, %struct.cx18** %5, align 8
  %99 = getelementptr inbounds %struct.cx18, %struct.cx18* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  ret i32 0
}

declare dso_local %struct.cx18_open_id* @fh2id(%struct.v4l2_fh*) #1

declare dso_local i32 @CX18_DEBUG_IOCTL(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @cx18_mute(%struct.cx18*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @cx18_audio_set_io(%struct.cx18*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @cx18_unmute(%struct.cx18*) #1

declare dso_local i32 @v4l2_fh_del(%struct.v4l2_fh*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.v4l2_fh*) #1

declare dso_local i32 @cx18_stop_capture(%struct.cx18_open_id*, i32) #1

declare dso_local i32 @kfree(%struct.cx18_open_id*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
