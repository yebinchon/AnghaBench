; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_dump_reg_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_dump_reg_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"too much data to dump\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s reg %02x = %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i8*, i32, i32, i32)* @dump_reg_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_reg_range(%struct.v4l2_subdev* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 16
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dprintk0(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %71

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %67, %22
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 %37, %38
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i32 [ %35, %34 ], [ %39, %36 ]
  store i32 %41, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %55, %40
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @tvp5150_read(%struct.v4l2_subdev* %47, i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %66 = call i32 (i32, i8*, ...) @dprintk0(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %62, i32 %63, i32 %64, i32* %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %24

71:                                               ; preds = %17, %24
  ret void
}

declare dso_local i32 @dprintk0(i32, i8*, ...) #1

declare dso_local i32 @tvp5150_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
