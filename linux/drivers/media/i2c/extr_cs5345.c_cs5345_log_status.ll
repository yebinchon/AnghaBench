; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_cs5345.c_cs5345_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_cs5345.c_cs5345_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Input:  %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" (muted)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Volume: %d dB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @cs5345_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5345_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call i32 @cs5345_read(%struct.v4l2_subdev* %6, i32 9)
  %8 = and i32 %7, 7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = call i32 @cs5345_read(%struct.v4l2_subdev* %9, i32 4)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %12 = call i32 @cs5345_read(%struct.v4l2_subdev* %11, i32 8)
  %13 = and i32 %12, 63
  store i32 %13, i32* %5, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 32
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 64
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_info(%struct.v4l2_subdev* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  ret i32 0
}

declare dso_local i32 @cs5345_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
