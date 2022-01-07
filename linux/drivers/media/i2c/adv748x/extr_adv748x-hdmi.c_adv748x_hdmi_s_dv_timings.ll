; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.adv748x_hdmi = type { %struct.v4l2_dv_timings }
%struct.adv748x_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@adv748x_hdmi_timings_cap = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ADV748X_CP_VID_ADJ_2 = common dso_local global i32 0, align 4
@ADV748X_CP_VID_ADJ_2_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)* @adv748x_hdmi_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_s_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.adv748x_hdmi*, align 8
  %7 = alloca %struct.adv748x_state*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev* %9)
  store %struct.adv748x_hdmi* %10, %struct.adv748x_hdmi** %6, align 8
  %11 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %12 = call %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi* %11)
  store %struct.adv748x_state* %12, %struct.adv748x_state** %7, align 8
  %13 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %14 = icmp ne %struct.v4l2_dv_timings* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %20 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %19, i32 0, i32 0
  %21 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %22 = call i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %20, %struct.v4l2_dv_timings* %21, i32 0, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %72

25:                                               ; preds = %18
  %26 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %27 = call i32 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %26, i32* @adv748x_hdmi_timings_cap, i32* null, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ERANGE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %72

32:                                               ; preds = %25
  %33 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %34 = call i32 @adv748x_fill_optional_dv_timings(%struct.v4l2_dv_timings* %33)
  %35 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %36 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %39 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %40 = call i32 @adv748x_hdmi_set_video_timings(%struct.adv748x_state* %38, %struct.v4l2_dv_timings* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %67

44:                                               ; preds = %32
  %45 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %46 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %45, i32 0, i32 0
  %47 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %48 = bitcast %struct.v4l2_dv_timings* %46 to i8*
  %49 = bitcast %struct.v4l2_dv_timings* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  %50 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %51 = load i32, i32* @ADV748X_CP_VID_ADJ_2, align 4
  %52 = load i32, i32* @ADV748X_CP_VID_ADJ_2_INTERLACED, align 4
  %53 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* @ADV748X_CP_VID_ADJ_2_INTERLACED, align 4
  br label %61

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = call i32 @cp_clrset(%struct.adv748x_state* %50, i32 %51, i32 %52, i32 %62)
  %64 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %65 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %3, align 4
  br label %72

67:                                               ; preds = %43
  %68 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %69 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %61, %29, %24, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi*) #1

declare dso_local i64 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, %struct.v4l2_dv_timings*, i32, i32) #1

declare dso_local i32 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings*, i32*, i32*, i32*) #1

declare dso_local i32 @adv748x_fill_optional_dv_timings(%struct.v4l2_dv_timings*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adv748x_hdmi_set_video_timings(%struct.adv748x_state*, %struct.v4l2_dv_timings*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cp_clrset(%struct.adv748x_state*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
