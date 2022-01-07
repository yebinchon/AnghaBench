; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32 }
%struct.cx18_av_state = type { i32, i64 }
%struct.cx18 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @cx18_av_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_av_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca %struct.cx18_av_state*, align 8
  %7 = alloca %struct.cx18*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev* %9)
  store %struct.cx18_av_state* %10, %struct.cx18_av_state** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.cx18* %12, %struct.cx18** %7, align 8
  %13 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %14 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.cx18*, %struct.cx18** %7, align 8
  %20 = call i32 @cx18_av_read(%struct.cx18* %19, i32 2057)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, -16
  store i32 %22, i32* %8, align 4
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %36 [
    i32 129, label %26
    i32 128, label %27
    i32 132, label %27
    i32 131, label %30
    i32 130, label %33
  ]

26:                                               ; preds = %18
  br label %39

27:                                               ; preds = %18, %18
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, 4
  store i32 %29, i32* %8, align 4
  br label %39

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, 7
  store i32 %32, i32* %8, align 4
  br label %39

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %33, %30, %27, %26
  %40 = load %struct.cx18*, %struct.cx18** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @cx18_av_write_expect(%struct.cx18* %40, i32 2057, i32 %41, i32 %42, i32 255)
  %44 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %48 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %36, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_write_expect(%struct.cx18*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
