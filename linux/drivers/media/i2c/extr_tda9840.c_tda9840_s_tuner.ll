; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda9840.c_tda9840_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda9840.c_tda9840_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TDA9840_SET_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@TDA9840_SET_STEREO = common dso_local global i32 0, align 4
@TDA9840_SET_BOTH = common dso_local global i32 0, align 4
@TDA9840_SET_LANG2 = common dso_local global i32 0, align 4
@TDA9840_SET_LANG1 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TDA9840_SWITCH: 0x%02x\0A\00", align 1
@SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @tda9840_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9840_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call i32 @tda9840_status(%struct.v4l2_subdev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 96
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @TDA9840_SET_MONO, align 4
  store i32 %31, i32* %7, align 4
  br label %59

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 64
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @TDA9840_SET_MONO, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @TDA9840_SET_STEREO, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %7, align 4
  br label %58

47:                                               ; preds = %32
  %48 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %55 [
    i32 129, label %51
    i32 128, label %53
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @TDA9840_SET_BOTH, align 4
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @TDA9840_SET_LANG2, align 4
  store i32 %54, i32* %7, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @TDA9840_SET_LANG1, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %53, %51
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %30
  %60 = load i32, i32* @debug, align 4
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @v4l2_dbg(i32 1, i32 %60, %struct.v4l2_subdev* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %65 = load i32, i32* @SWITCH, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @tda9840_write(%struct.v4l2_subdev* %64, i32 %65, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %59, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @tda9840_status(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @tda9840_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
