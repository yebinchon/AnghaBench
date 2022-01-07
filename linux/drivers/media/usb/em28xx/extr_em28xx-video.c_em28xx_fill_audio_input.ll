; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_fill_audio_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_fill_audio_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32*, i64 }
%struct.v4l2_audio = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Television alt\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Phone\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: audio input index %d is '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i8*, %struct.v4l2_audio*, i32)* @em28xx_fill_audio_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_fill_audio_input(%struct.em28xx* %0, i8* %1, %struct.v4l2_audio* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.v4l2_audio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 130
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 134, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %22, %4
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %69 [
    i32 129, label %28
    i32 134, label %33
    i32 128, label %38
    i32 131, label %43
    i32 133, label %48
    i32 135, label %53
    i32 136, label %58
    i32 132, label %63
    i32 130, label %68
  ]

28:                                               ; preds = %26
  %29 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %30 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strscpy(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %72

33:                                               ; preds = %26
  %34 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %35 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strscpy(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %72

38:                                               ; preds = %26
  %39 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %40 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strscpy(i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %72

43:                                               ; preds = %26
  %44 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strscpy(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %72

48:                                               ; preds = %26
  %49 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strscpy(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 4)
  br label %72

53:                                               ; preds = %26
  %54 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strscpy(i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %72

58:                                               ; preds = %26
  %59 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strscpy(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 4)
  br label %72

63:                                               ; preds = %26
  %64 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strscpy(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 4)
  br label %72

68:                                               ; preds = %26
  br label %69

69:                                               ; preds = %26, %68
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %87

72:                                               ; preds = %63, %58, %53, %48, %43, %38, %33, %28
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %75 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %77 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %78 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %84 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @em28xx_videodbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %79, i32 %82, i32 %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %72, %69
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @em28xx_videodbg(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
