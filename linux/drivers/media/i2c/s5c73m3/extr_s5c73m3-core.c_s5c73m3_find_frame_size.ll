; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_find_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_find_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3_frame_size = type { i64, i64 }
%struct.v4l2_mbus_framefmt = type { i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@s5c73m3_resolutions = common dso_local global %struct.s5c73m3_frame_size** null, align 8
@s5c73m3_resolutions_len = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s5c73m3_frame_size* (%struct.v4l2_mbus_framefmt*, i32)* @s5c73m3_find_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s5c73m3_frame_size* @s5c73m3_find_frame_size(%struct.v4l2_mbus_framefmt* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5c73m3_frame_size*, align 8
  %6 = alloca %struct.s5c73m3_frame_size*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @INT_MAX, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.s5c73m3_frame_size**, %struct.s5c73m3_frame_size*** @s5c73m3_resolutions, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %11, i64 %13
  %15 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %14, align 8
  store %struct.s5c73m3_frame_size* %15, %struct.s5c73m3_frame_size** %5, align 8
  store %struct.s5c73m3_frame_size* null, %struct.s5c73m3_frame_size** %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %51, %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** @s5c73m3_resolutions_len, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %16
  %25 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %5, align 8
  %26 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = call i32 @abs(i64 %31)
  %33 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %5, align 8
  %34 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = call i32 @abs(i64 %39)
  %41 = add nsw i32 %32, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %24
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %5, align 8
  store %struct.s5c73m3_frame_size* %47, %struct.s5c73m3_frame_size** %6, align 8
  br label %48

48:                                               ; preds = %45, %24
  %49 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %5, align 8
  %50 = getelementptr inbounds %struct.s5c73m3_frame_size, %struct.s5c73m3_frame_size* %49, i32 1
  store %struct.s5c73m3_frame_size* %50, %struct.s5c73m3_frame_size** %5, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %16

54:                                               ; preds = %16
  %55 = load %struct.s5c73m3_frame_size*, %struct.s5c73m3_frame_size** %6, align 8
  ret %struct.s5c73m3_frame_size* %55
}

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
