; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_set_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_set_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v011 = type { i32, i32 }

@R02_MT9V011_COLSTART = common dso_local global i32 0, align 4
@R04_MT9V011_WIDTH = common dso_local global i32 0, align 4
@R05_MT9V011_HBLANK = common dso_local global i32 0, align 4
@R01_MT9V011_ROWSTART = common dso_local global i32 0, align 4
@R03_MT9V011_HEIGHT = common dso_local global i32 0, align 4
@R06_MT9V011_VBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @set_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_res(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.mt9v011*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev* %6)
  store %struct.mt9v011* %7, %struct.mt9v011** %3, align 8
  %8 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %9 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 640, %10
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 20, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %15 = load i32, i32* @R02_MT9V011_COLSTART, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mt9v011_write(%struct.v4l2_subdev* %14, i32 %15, i32 %16)
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %19 = load i32, i32* @R04_MT9V011_WIDTH, align 4
  %20 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %21 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mt9v011_write(%struct.v4l2_subdev* %18, i32 %19, i32 %22)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %25 = load i32, i32* @R05_MT9V011_HBLANK, align 4
  %26 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %27 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 771, %28
  %30 = call i32 @mt9v011_write(%struct.v4l2_subdev* %24, i32 %25, i32 %29)
  %31 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %32 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 480, %33
  %35 = sdiv i32 %34, 2
  %36 = add nsw i32 8, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %38 = load i32, i32* @R01_MT9V011_ROWSTART, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @mt9v011_write(%struct.v4l2_subdev* %37, i32 %38, i32 %39)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %42 = load i32, i32* @R03_MT9V011_HEIGHT, align 4
  %43 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %44 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mt9v011_write(%struct.v4l2_subdev* %41, i32 %42, i32 %45)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %48 = load i32, i32* @R06_MT9V011_VBLANK, align 4
  %49 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %50 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 508, %51
  %53 = call i32 @mt9v011_write(%struct.v4l2_subdev* %47, i32 %48, i32 %52)
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %55 = call i32 @calc_fps(%struct.v4l2_subdev* %54, i32* null, i32* null)
  ret void
}

declare dso_local %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev*) #1

declare dso_local i32 @mt9v011_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @calc_fps(%struct.v4l2_subdev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
