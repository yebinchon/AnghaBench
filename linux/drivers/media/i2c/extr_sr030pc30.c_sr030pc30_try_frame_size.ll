; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_try_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_try_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sr030pc30_frmsize = type { i64, i64 }
%struct.v4l2_mbus_framefmt = type { i64, i64 }

@sr030pc30_sizes = common dso_local global %struct.sr030pc30_frmsize* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_mbus_framefmt*)* @sr030pc30_try_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr030pc30_try_frame_size(%struct.v4l2_mbus_framefmt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sr030pc30_frmsize*, align 8
  %7 = alloca %struct.sr030pc30_frmsize*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %3, align 8
  store i32 -1, i32* %4, align 4
  %9 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** @sr030pc30_sizes, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.sr030pc30_frmsize* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** @sr030pc30_sizes, align 8
  %12 = getelementptr inbounds %struct.sr030pc30_frmsize, %struct.sr030pc30_frmsize* %11, i64 0
  store %struct.sr030pc30_frmsize* %12, %struct.sr030pc30_frmsize** %6, align 8
  store %struct.sr030pc30_frmsize* null, %struct.sr030pc30_frmsize** %7, align 8
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** %6, align 8
  %19 = getelementptr inbounds %struct.sr030pc30_frmsize, %struct.sr030pc30_frmsize* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = call i32 @abs(i64 %24)
  %26 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** %6, align 8
  %27 = getelementptr inbounds %struct.sr030pc30_frmsize, %struct.sr030pc30_frmsize* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = call i32 @abs(i64 %32)
  %34 = add nsw i32 %25, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %17
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  %40 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** %6, align 8
  store %struct.sr030pc30_frmsize* %40, %struct.sr030pc30_frmsize** %7, align 8
  br label %41

41:                                               ; preds = %38, %17
  %42 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** %6, align 8
  %43 = getelementptr inbounds %struct.sr030pc30_frmsize, %struct.sr030pc30_frmsize* %42, i32 1
  store %struct.sr030pc30_frmsize* %43, %struct.sr030pc30_frmsize** %6, align 8
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** %7, align 8
  %46 = icmp ne %struct.sr030pc30_frmsize* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** %7, align 8
  %49 = getelementptr inbounds %struct.sr030pc30_frmsize, %struct.sr030pc30_frmsize* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.sr030pc30_frmsize*, %struct.sr030pc30_frmsize** %7, align 8
  %54 = getelementptr inbounds %struct.sr030pc30_frmsize, %struct.sr030pc30_frmsize* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %2, align 4
  br label %61

58:                                               ; preds = %44
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ARRAY_SIZE(%struct.sr030pc30_frmsize*) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
