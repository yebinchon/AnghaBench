; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp514x_reg = type { i64, i64, i32 }

@TOK_TERM = common dso_local global i64 0, align 8
@TOK_DELAY = common dso_local global i64 0, align 8
@TOK_SKIP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Write failed. Err[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.tvp514x_reg*)* @tvp514x_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_write_regs(%struct.v4l2_subdev* %0, %struct.tvp514x_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.tvp514x_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tvp514x_reg*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.tvp514x_reg* %1, %struct.tvp514x_reg** %5, align 8
  %8 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %5, align 8
  store %struct.tvp514x_reg* %8, %struct.tvp514x_reg** %7, align 8
  br label %9

9:                                                ; preds = %51, %2
  %10 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %7, align 8
  %11 = getelementptr inbounds %struct.tvp514x_reg, %struct.tvp514x_reg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TOK_TERM, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %9
  %16 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %7, align 8
  %17 = getelementptr inbounds %struct.tvp514x_reg, %struct.tvp514x_reg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TOK_DELAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %7, align 8
  %23 = getelementptr inbounds %struct.tvp514x_reg, %struct.tvp514x_reg* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @msleep(i64 %24)
  br label %51

26:                                               ; preds = %15
  %27 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %7, align 8
  %28 = getelementptr inbounds %struct.tvp514x_reg, %struct.tvp514x_reg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TOK_SKIP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %51

33:                                               ; preds = %26
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %35 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %7, align 8
  %36 = getelementptr inbounds %struct.tvp514x_reg, %struct.tvp514x_reg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %7, align 8
  %39 = getelementptr inbounds %struct.tvp514x_reg, %struct.tvp514x_reg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %34, i32 %37, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @v4l2_err(%struct.v4l2_subdev* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %32, %21
  %52 = load %struct.tvp514x_reg*, %struct.tvp514x_reg** %7, align 8
  %53 = getelementptr inbounds %struct.tvp514x_reg, %struct.tvp514x_reg* %52, i32 1
  store %struct.tvp514x_reg* %53, %struct.tvp514x_reg** %7, align 8
  br label %9

54:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @tvp514x_write_reg(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
