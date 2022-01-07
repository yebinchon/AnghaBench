; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_select_fps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_select_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov772x_priv = type { i32 }
%struct.v4l2_fract = type { i32, i32 }

@ov772x_frame_intervals = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov772x_priv*, %struct.v4l2_fract*)* @ov772x_select_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_select_fps(%struct.ov772x_priv* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca %struct.ov772x_priv*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ov772x_priv* %0, %struct.ov772x_priv** %3, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %4, align 8
  %10 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = udiv i32 %17, %20
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i32 [ %21, %14 ], [ %25, %22 ]
  store i32 %27, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %49, %26
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** @ov772x_frame_intervals, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** @ov772x_frame_intervals, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %34, %39
  %41 = call i32 @abs(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32*, i32** @ov772x_frame_intervals, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  ret i32 %57
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
