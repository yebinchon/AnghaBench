; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp7002 = type { i32 }

@TVP7002_MISC_CTL_2 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Fail to set streaming\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tvp7002_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp7002_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tvp7002*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.tvp7002* @to_tvp7002(%struct.v4l2_subdev* %8)
  store %struct.tvp7002* %9, %struct.tvp7002** %6, align 8
  %10 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %11 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = load i32, i32* @TVP7002_MISC_CTL_2, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 3
  %23 = call i32 @tvp7002_write(%struct.v4l2_subdev* %17, i32 %18, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* @debug, align 4
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = call i32 @v4l2_dbg(i32 1, i32 %27, %struct.v4l2_subdev* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %34 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.tvp7002* @to_tvp7002(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp7002_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
