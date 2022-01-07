; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32, i64, i64 }

@TVP5150_BLACK_SCREEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64, i64)* @tvp5150_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_s_routing(%struct.v4l2_subdev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tvp5150*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %10)
  store %struct.tvp5150* %11, %struct.tvp5150** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.tvp5150*, %struct.tvp5150** %9, align 8
  %14 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.tvp5150*, %struct.tvp5150** %9, align 8
  %17 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @TVP5150_BLACK_SCREEN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.tvp5150*, %struct.tvp5150** %9, align 8
  %23 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %27

24:                                               ; preds = %4
  %25 = load %struct.tvp5150*, %struct.tvp5150** %9, align 8
  %26 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %29 = call i32 @tvp5150_selmux(%struct.v4l2_subdev* %28)
  ret i32 0
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp5150_selmux(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
