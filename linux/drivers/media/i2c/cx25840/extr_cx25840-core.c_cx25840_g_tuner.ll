; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32, i32 }
%struct.cx25840_state = type { i32, i64 }
%struct.i2c_client = type { i32 }

@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_SAP = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_SAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @cx25840_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_g_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.cx25840_state* %12, %struct.cx25840_state** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %16 = call i32 @cx25840_read(%struct.i2c_client* %15, i32 1038)
  %17 = and i32 %16, 32
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %19 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 65535, i32 0
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %31 = call i64 @is_cx2583x(%struct.cx25840_state* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %86

34:                                               ; preds = %23
  %35 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %36 = load i32, i32* @V4L2_TUNER_CAP_LANG1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @V4L2_TUNER_CAP_LANG2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @V4L2_TUNER_CAP_SAP, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %47 = call i32 @cx25840_read(%struct.i2c_client* %46, i32 2052)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 15
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %34
  %52 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %59

55:                                               ; preds = %34
  %56 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %67 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 16
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @V4L2_TUNER_SUB_SAP, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %82 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %77, %33, %22
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i64 @is_cx2583x(%struct.cx25840_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
