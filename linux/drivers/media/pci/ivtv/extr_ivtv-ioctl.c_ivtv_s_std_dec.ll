; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_std_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_std_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.yuv_playback_info }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.yuv_playback_info = type { i32, i32, %struct.TYPE_2__ }

@wait = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std_output = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@IVTV_REG_DEC_LINE_FIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Mode change failed to sync to decoder\0A\00", align 1
@CX2341X_DEC_SET_STANDARD = common dso_local global i32 0, align 4
@CX2341X_OSD_SET_FRAMEBUFFER_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_s_std_dec(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.yuv_playback_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 7
  store %struct.yuv_playback_info* %8, %struct.yuv_playback_info** %5, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DEFINE_WAIT(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @V4L2_STD_525_60, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %21 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %31 = load i32, i32* @video, align 4
  %32 = load i32, i32* @s_std_output, align 4
  %33 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %34 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ivtv_call_all(%struct.ivtv* %30, i32 %31, i32 %32, i32 %35)
  %37 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 5
  %39 = call i32 @mutex_unlock(i32* %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %56, %2
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %45 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %44, i32 0, i32 6
  %46 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %47 = call i32 @prepare_to_wait(i32* %45, i32* @wait, i32 %46)
  %48 = load i32, i32* @IVTV_REG_DEC_LINE_FIELD, align 4
  %49 = call i32 @read_reg(i32 %48)
  %50 = ashr i32 %49, 16
  %51 = icmp slt i32 %50, 100
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %59

53:                                               ; preds = %43
  %54 = call i32 @msecs_to_jiffies(i32 25)
  %55 = call i32 @schedule_timeout(i32 %54)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %40

59:                                               ; preds = %52, %40
  %60 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 6
  %62 = call i32 @finish_wait(i32* %61, i32* @wait)
  %63 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %64 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %63, i32 0, i32 5
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %59
  %71 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %72 = load i32, i32* @CX2341X_DEC_SET_STANDARD, align 4
  %73 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %74 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %71, i32 %72, i32 1, i32 %75)
  %77 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %78 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %81 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %84 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 720, i32* %85, align 8
  %86 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %87 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 576, i32 480
  %92 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %93 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %96 = load i32, i32* @CX2341X_OSD_SET_FRAMEBUFFER_WINDOW, align 4
  %97 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %98 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %95, i32 %96, i32 4, i32 720, i32 %100, i32 0, i32 0)
  %102 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %103 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %102, i32 0, i32 2
  %104 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %105 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %104, i32 0, i32 4
  %106 = bitcast %struct.TYPE_2__* %103 to i8*
  %107 = bitcast %struct.TYPE_2__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 24, i1 false)
  %108 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %109 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %70
  %113 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %114 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %113, i32 0, i32 0
  store i32 720, i32* %114, align 8
  %115 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %116 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 576, i32 480
  %121 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %122 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %112, %70
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IVTV_WARN(i8*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
