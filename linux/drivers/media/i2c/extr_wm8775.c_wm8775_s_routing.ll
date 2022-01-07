; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_wm8775.c_wm8775_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_wm8775.c_wm8775_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.wm8775_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid input %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @wm8775_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8775_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8775_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.wm8775_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.wm8775_state* %12, %struct.wm8775_state** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 15
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @v4l2_err(%struct.v4l2_subdev* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %41

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.wm8775_state*, %struct.wm8775_state** %10, align 8
  %24 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.wm8775_state*, %struct.wm8775_state** %10, align 8
  %26 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @v4l2_ctrl_g_ctrl(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %41

31:                                               ; preds = %21
  %32 = load %struct.wm8775_state*, %struct.wm8775_state** %10, align 8
  %33 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @v4l2_ctrl_g_ctrl(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %40 = call i32 @wm8775_set_audio(%struct.v4l2_subdev* %39, i32 1)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %37, %30, %15
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.wm8775_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i64 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @wm8775_set_audio(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
