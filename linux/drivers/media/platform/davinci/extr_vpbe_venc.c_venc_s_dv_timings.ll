; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.venc_state = type { i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"venc_s_dv_timings\0A\00", align 1
@VPBE_VERSION_2 = common dso_local global i64 0, align 8
@VDAC_CONFIG_HD_V2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)* @venc_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_s_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.venc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.venc_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.venc_state* %10, %struct.venc_state** %6, align 8
  %11 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = call i32 @v4l2_dbg(i32 %15, i32 1, %struct.v4l2_subdev* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 576
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = call i32 @venc_set_576p50(%struct.v4l2_subdev* %21)
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 480
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = call i32 @venc_set_480p59_94(%struct.v4l2_subdev* %27)
  store i32 %28, i32* %3, align 4
  br label %67

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 720
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.venc_state*, %struct.venc_state** %6, align 8
  %34 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VPBE_VERSION_2, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %40 = call i32 @venc_set_720p60_internal(%struct.v4l2_subdev* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %42 = load i32, i32* @VDAC_CONFIG_HD_V2, align 4
  %43 = call i32 @vdaccfg_write(%struct.v4l2_subdev* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %32, %29
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1080
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.venc_state*, %struct.venc_state** %6, align 8
  %50 = getelementptr inbounds %struct.venc_state, %struct.venc_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VPBE_VERSION_2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %56 = call i32 @venc_set_1080i30_internal(%struct.v4l2_subdev* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %58 = load i32, i32* @VDAC_CONFIG_HD_V2, align 4
  %59 = call i32 @vdaccfg_write(%struct.v4l2_subdev* %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %67

61:                                               ; preds = %48, %45
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %54, %38, %26, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.venc_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @venc_set_576p50(%struct.v4l2_subdev*) #1

declare dso_local i32 @venc_set_480p59_94(%struct.v4l2_subdev*) #1

declare dso_local i32 @venc_set_720p60_internal(%struct.v4l2_subdev*) #1

declare dso_local i32 @vdaccfg_write(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @venc_set_1080i30_internal(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
