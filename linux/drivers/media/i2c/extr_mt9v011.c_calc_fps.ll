; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_calc_fps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_calc_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v011 = type { i64 }

@R03_MT9V011_HEIGHT = common dso_local global i32 0, align 4
@R04_MT9V011_WIDTH = common dso_local global i32 0, align 4
@R05_MT9V011_HBLANK = common dso_local global i32 0, align 4
@R06_MT9V011_VBLANK = common dso_local global i32 0, align 4
@R0A_MT9V011_CLK_SPEED = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Programmed to %u.%03u fps (%d pixel clcks)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32*, i32*)* @calc_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_fps(%struct.v4l2_subdev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mt9v011*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = call %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev* %17)
  store %struct.mt9v011* %18, %struct.mt9v011** %7, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = load i32, i32* @R03_MT9V011_HEIGHT, align 4
  %21 = call i32 @mt9v011_read(%struct.v4l2_subdev* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = load i32, i32* @R04_MT9V011_WIDTH, align 4
  %24 = call i32 @mt9v011_read(%struct.v4l2_subdev* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = load i32, i32* @R05_MT9V011_HBLANK, align 4
  %27 = call i32 @mt9v011_read(%struct.v4l2_subdev* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load i32, i32* @R06_MT9V011_VBLANK, align 4
  %30 = call i32 @mt9v011_read(%struct.v4l2_subdev* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = load i32, i32* @R0A_MT9V011_CLK_SPEED, align 4
  %33 = call i32 @mt9v011_read(%struct.v4l2_subdev* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 113
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* %12, align 4
  %39 = add i32 %38, 2
  %40 = mul i32 %37, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %42, %43
  %45 = add i32 %44, 1
  %46 = mul i32 %41, %45
  store i32 %46, i32* %14, align 4
  %47 = load %struct.mt9v011*, %struct.mt9v011** %7, align 8
  %48 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = mul nsw i64 %49, 1000
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @do_div(i32 %52, i32 %53)
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @debug, align 4
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %58 = load i32, i32* %16, align 4
  %59 = udiv i32 %58, 1000
  %60 = load i32, i32* %16, align 4
  %61 = urem i32 %60, 1000
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @v4l2_dbg(i32 1, i32 %56, %struct.v4l2_subdev* %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %61, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %3
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  store i32 1000, i32* %70, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %66, %3
  ret void
}

declare dso_local %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev*) #1

declare dso_local i32 @mt9v011_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
