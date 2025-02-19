; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_enumaudio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_enumaudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_audio = type { i64 }
%struct.file = type { i32 }

@vivid_audio_inputs = common dso_local global %struct.v4l2_audio* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_enumaudio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_audio*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %7, align 8
  %8 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.v4l2_audio*, %struct.v4l2_audio** @vivid_audio_inputs, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.v4l2_audio* %11)
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %19 = load %struct.v4l2_audio*, %struct.v4l2_audio** @vivid_audio_inputs, align 8
  %20 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %19, i64 %22
  %24 = bitcast %struct.v4l2_audio* %18 to i8*
  %25 = bitcast %struct.v4l2_audio* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i64 @ARRAY_SIZE(%struct.v4l2_audio*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
