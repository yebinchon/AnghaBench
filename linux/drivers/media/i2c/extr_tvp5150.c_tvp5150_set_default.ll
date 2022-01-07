; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_set_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i64, i64 }

@TVP5150_H_MAX = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@TVP5150_V_MAX_525_60 = common dso_local global i32 0, align 4
@TVP5150_V_MAX_OTHERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.v4l2_rect*)* @tvp5150_set_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvp5150_set_default(i32 %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_rect*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %5 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @TVP5150_H_MAX, align 4
  %10 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @V4L2_STD_525_60, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @TVP5150_V_MAX_525_60, align 4
  %18 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @TVP5150_V_MAX_OTHERS, align 4
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
