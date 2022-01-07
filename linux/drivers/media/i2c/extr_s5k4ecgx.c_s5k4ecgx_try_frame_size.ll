; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_try_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_try_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k4ecgx_frmsize = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.v4l2_mbus_framefmt = type { i64, i64 }

@s5k4ecgx_prev_sizes = common dso_local global %struct.s5k4ecgx_frmsize* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_mbus_framefmt*, %struct.s5k4ecgx_frmsize**)* @s5k4ecgx_try_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_try_frame_size(%struct.v4l2_mbus_framefmt* %0, %struct.s5k4ecgx_frmsize** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.s5k4ecgx_frmsize**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s5k4ecgx_frmsize*, align 8
  %9 = alloca %struct.s5k4ecgx_frmsize*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %4, align 8
  store %struct.s5k4ecgx_frmsize** %1, %struct.s5k4ecgx_frmsize*** %5, align 8
  store i32 -1, i32* %6, align 4
  %11 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** @s5k4ecgx_prev_sizes, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.s5k4ecgx_frmsize* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** @s5k4ecgx_prev_sizes, align 8
  %14 = getelementptr inbounds %struct.s5k4ecgx_frmsize, %struct.s5k4ecgx_frmsize* %13, i64 0
  store %struct.s5k4ecgx_frmsize* %14, %struct.s5k4ecgx_frmsize** %8, align 8
  store %struct.s5k4ecgx_frmsize* null, %struct.s5k4ecgx_frmsize** %9, align 8
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** %8, align 8
  %21 = getelementptr inbounds %struct.s5k4ecgx_frmsize, %struct.s5k4ecgx_frmsize* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = call i32 @abs(i64 %27)
  %29 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** %8, align 8
  %30 = getelementptr inbounds %struct.s5k4ecgx_frmsize, %struct.s5k4ecgx_frmsize* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i32 @abs(i64 %36)
  %38 = add nsw i32 %28, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %19
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** %8, align 8
  store %struct.s5k4ecgx_frmsize* %44, %struct.s5k4ecgx_frmsize** %9, align 8
  br label %45

45:                                               ; preds = %42, %19
  %46 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** %8, align 8
  %47 = getelementptr inbounds %struct.s5k4ecgx_frmsize, %struct.s5k4ecgx_frmsize* %46, i32 1
  store %struct.s5k4ecgx_frmsize* %47, %struct.s5k4ecgx_frmsize** %8, align 8
  br label %15

48:                                               ; preds = %15
  %49 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** %9, align 8
  %50 = icmp ne %struct.s5k4ecgx_frmsize* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** %9, align 8
  %53 = getelementptr inbounds %struct.s5k4ecgx_frmsize, %struct.s5k4ecgx_frmsize* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** %9, align 8
  %59 = getelementptr inbounds %struct.s5k4ecgx_frmsize, %struct.s5k4ecgx_frmsize* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.s5k4ecgx_frmsize**, %struct.s5k4ecgx_frmsize*** %5, align 8
  %65 = icmp ne %struct.s5k4ecgx_frmsize** %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %51
  %67 = load %struct.s5k4ecgx_frmsize*, %struct.s5k4ecgx_frmsize** %9, align 8
  %68 = load %struct.s5k4ecgx_frmsize**, %struct.s5k4ecgx_frmsize*** %5, align 8
  store %struct.s5k4ecgx_frmsize* %67, %struct.s5k4ecgx_frmsize** %68, align 8
  br label %69

69:                                               ; preds = %66, %51
  store i32 0, i32* %3, align 4
  br label %73

70:                                               ; preds = %48
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %69
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ARRAY_SIZE(%struct.s5k4ecgx_frmsize*) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
