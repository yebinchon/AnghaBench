; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_calc_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_calc_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v011 = type { i32 }

@R03_MT9V011_HEIGHT = common dso_local global i32 0, align 4
@R04_MT9V011_WIDTH = common dso_local global i32 0, align 4
@R05_MT9V011_HBLANK = common dso_local global i32 0, align 4
@R06_MT9V011_VBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @calc_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_speed(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt9v011*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %18 = call %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev* %17)
  store %struct.mt9v011* %18, %struct.mt9v011** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  br label %76

25:                                               ; preds = %21
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %27 = load i32, i32* @R03_MT9V011_HEIGHT, align 4
  %28 = call i32 @mt9v011_read(%struct.v4l2_subdev* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %30 = load i32, i32* @R04_MT9V011_WIDTH, align 4
  %31 = call i32 @mt9v011_read(%struct.v4l2_subdev* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %33 = load i32, i32* @R05_MT9V011_HBLANK, align 4
  %34 = call i32 @mt9v011_read(%struct.v4l2_subdev* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %36 = load i32, i32* @R06_MT9V011_VBLANK, align 4
  %37 = call i32 @mt9v011_read(%struct.v4l2_subdev* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, 113
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add i32 %42, %43
  %45 = add i32 %44, 1
  store i32 %45, i32* %14, align 4
  %46 = load %struct.mt9v011*, %struct.mt9v011** %8, align 8
  %47 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sdiv i32 %51, 2
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @do_div(i32 %55, i32 %56)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul i32 %60, %61
  %63 = call i32 @do_div(i32 %59, i32 %62)
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %25
  store i32 0, i32* %16, align 4
  br label %70

67:                                               ; preds = %25
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = load i32, i32* %16, align 4
  %72 = icmp sgt i32 %71, 15
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 15, i32* %4, align 4
  br label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %73, %24
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev*) #1

declare dso_local i32 @mt9v011_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
