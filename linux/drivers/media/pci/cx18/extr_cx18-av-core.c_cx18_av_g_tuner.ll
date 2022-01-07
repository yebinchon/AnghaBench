; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32, i32 }
%struct.cx18_av_state = type { i32, i64 }
%struct.cx18 = type { i32 }

@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_SAP = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_SAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @cx18_av_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_av_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.cx18_av_state*, align 8
  %7 = alloca %struct.cx18*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev* %11)
  store %struct.cx18_av_state* %12, %struct.cx18_av_state** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.cx18* %14, %struct.cx18** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %16 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

20:                                               ; preds = %2
  %21 = load %struct.cx18*, %struct.cx18** %7, align 8
  %22 = call i32 @cx18_av_read(%struct.cx18* %21, i32 1038)
  %23 = and i32 %22, 32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 65535, i32 0
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %31 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @V4L2_TUNER_CAP_SAP, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.cx18*, %struct.cx18** %7, align 8
  %42 = call i32 @cx18_av_read(%struct.cx18* %41, i32 2052)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 15
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %20
  %47 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %54

50:                                               ; preds = %20
  %51 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %64

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %62 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 16
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @V4L2_TUNER_SUB_SAP, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %77 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %19
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
