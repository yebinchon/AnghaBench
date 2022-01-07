; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_select_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_select_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov772x_color_format = type { i64 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32 }
%struct.ov772x_win_size = type { i32 }

@ov772x_cfmts = common dso_local global %struct.ov772x_color_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_mbus_framefmt*, %struct.ov772x_color_format**, %struct.ov772x_win_size**)* @ov772x_select_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov772x_select_params(%struct.v4l2_mbus_framefmt* %0, %struct.ov772x_color_format** %1, %struct.ov772x_win_size** %2) #0 {
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.ov772x_color_format**, align 8
  %6 = alloca %struct.ov772x_win_size**, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %4, align 8
  store %struct.ov772x_color_format** %1, %struct.ov772x_color_format*** %5, align 8
  store %struct.ov772x_win_size** %2, %struct.ov772x_win_size*** %6, align 8
  %8 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** @ov772x_cfmts, align 8
  %9 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %8, i64 0
  %10 = load %struct.ov772x_color_format**, %struct.ov772x_color_format*** %5, align 8
  store %struct.ov772x_color_format* %9, %struct.ov772x_color_format** %10, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** @ov772x_cfmts, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.ov772x_color_format* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** @ov772x_cfmts, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %20, i64 %22
  %24 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** @ov772x_cfmts, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %28, i64 %30
  %32 = load %struct.ov772x_color_format**, %struct.ov772x_color_format*** %5, align 8
  store %struct.ov772x_color_format* %31, %struct.ov772x_color_format** %32, align 8
  br label %37

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %27, %11
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.ov772x_win_size* @ov772x_select_win(i32 %40, i32 %43)
  %45 = load %struct.ov772x_win_size**, %struct.ov772x_win_size*** %6, align 8
  store %struct.ov772x_win_size* %44, %struct.ov772x_win_size** %45, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ov772x_color_format*) #1

declare dso_local %struct.ov772x_win_size* @ov772x_select_win(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
