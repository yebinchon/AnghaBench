; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-cards.c_ivtv_get_audio_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-cards.c_ivtv_get_audio_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.v4l2_audioout = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"A/V Audio Out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_get_audio_output(%struct.ivtv* %0, i64 %1, %struct.v4l2_audioout* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.v4l2_audioout*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.v4l2_audioout* %2, %struct.v4l2_audioout** %7, align 8
  %8 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %7, align 8
  %9 = call i32 @memset(%struct.v4l2_audioout* %8, i32 0, i32 4)
  %10 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %16
  %23 = load %struct.v4l2_audioout*, %struct.v4l2_audioout** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strscpy(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @memset(%struct.v4l2_audioout*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
