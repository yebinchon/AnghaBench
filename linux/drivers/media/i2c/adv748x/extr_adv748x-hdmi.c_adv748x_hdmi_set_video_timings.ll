; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_set_video_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_set_video_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_hdmi_video_standards = type { i32, i32, i32 }
%struct.adv748x_state = type { i32 }
%struct.v4l2_dv_timings = type { i32 }

@adv748x_hdmi_video_standards = common dso_local global %struct.adv748x_hdmi_video_standards* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADV748X_IO_VID_STD = common dso_local global i32 0, align 4
@ADV748X_IO_DATAPATH = common dso_local global i32 0, align 4
@ADV748X_IO_DATAPATH_VFREQ_M = common dso_local global i32 0, align 4
@ADV748X_IO_DATAPATH_VFREQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*, %struct.v4l2_dv_timings*)* @adv748x_hdmi_set_video_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_set_video_timings(%struct.adv748x_state* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv748x_state*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.adv748x_hdmi_video_standards*, align 8
  %7 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %8 = load %struct.adv748x_hdmi_video_standards*, %struct.adv748x_hdmi_video_standards** @adv748x_hdmi_video_standards, align 8
  store %struct.adv748x_hdmi_video_standards* %8, %struct.adv748x_hdmi_video_standards** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.adv748x_hdmi_video_standards*, %struct.adv748x_hdmi_video_standards** @adv748x_hdmi_video_standards, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.adv748x_hdmi_video_standards* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %16 = load %struct.adv748x_hdmi_video_standards*, %struct.adv748x_hdmi_video_standards** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.adv748x_hdmi_video_standards, %struct.adv748x_hdmi_video_standards* %16, i64 %18
  %20 = getelementptr inbounds %struct.adv748x_hdmi_video_standards, %struct.adv748x_hdmi_video_standards* %19, i32 0, i32 2
  %21 = call i32 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %15, i32* %20, i32 250000, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.adv748x_hdmi_video_standards*, %struct.adv748x_hdmi_video_standards** @adv748x_hdmi_video_standards, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.adv748x_hdmi_video_standards* %30)
  %32 = icmp uge i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %74

36:                                               ; preds = %28
  %37 = load %struct.adv748x_hdmi_video_standards*, %struct.adv748x_hdmi_video_standards** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.adv748x_hdmi_video_standards, %struct.adv748x_hdmi_video_standards* %37, i64 %39
  %41 = getelementptr inbounds %struct.adv748x_hdmi_video_standards, %struct.adv748x_hdmi_video_standards* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %49 [
    i32 83, label %43
    i32 84, label %46
    i32 94, label %46
  ]

43:                                               ; preds = %36
  %44 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %45 = call i32 @adv748x_hdmi_set_de_timings(%struct.adv748x_state* %44, i32 -40)
  br label %52

46:                                               ; preds = %36, %36
  %47 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %48 = call i32 @adv748x_hdmi_set_de_timings(%struct.adv748x_state* %47, i32 -44)
  br label %52

49:                                               ; preds = %36
  %50 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %51 = call i32 @adv748x_hdmi_set_de_timings(%struct.adv748x_state* %50, i32 0)
  br label %52

52:                                               ; preds = %49, %46, %43
  %53 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %54 = load i32, i32* @ADV748X_IO_VID_STD, align 4
  %55 = load %struct.adv748x_hdmi_video_standards*, %struct.adv748x_hdmi_video_standards** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.adv748x_hdmi_video_standards, %struct.adv748x_hdmi_video_standards* %55, i64 %57
  %59 = getelementptr inbounds %struct.adv748x_hdmi_video_standards, %struct.adv748x_hdmi_video_standards* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @io_write(%struct.adv748x_state* %53, i32 %54, i32 %60)
  %62 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %63 = load i32, i32* @ADV748X_IO_DATAPATH, align 4
  %64 = load i32, i32* @ADV748X_IO_DATAPATH_VFREQ_M, align 4
  %65 = load %struct.adv748x_hdmi_video_standards*, %struct.adv748x_hdmi_video_standards** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.adv748x_hdmi_video_standards, %struct.adv748x_hdmi_video_standards* %65, i64 %67
  %69 = getelementptr inbounds %struct.adv748x_hdmi_video_standards, %struct.adv748x_hdmi_video_standards* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ADV748X_IO_DATAPATH_VFREQ_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = call i32 @io_clrset(%struct.adv748x_state* %62, i32 %63, i32 %64, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %52, %33
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ARRAY_SIZE(%struct.adv748x_hdmi_video_standards*) #1

declare dso_local i32 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, i32*, i32, i32) #1

declare dso_local i32 @adv748x_hdmi_set_de_timings(%struct.adv748x_state*, i32) #1

declare dso_local i32 @io_write(%struct.adv748x_state*, i32, i32) #1

declare dso_local i32 @io_clrset(%struct.adv748x_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
