; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_set_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_set_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9v011 = type { i32, i32, i32, i32 }

@R2B_MT9V011_GREEN_1_GAIN = common dso_local global i32 0, align 4
@R2E_MT9V011_GREEN_2_GAIN = common dso_local global i32 0, align 4
@R2C_MT9V011_BLUE_GAIN = common dso_local global i32 0, align 4
@R2D_MT9V011_RED_GAIN = common dso_local global i32 0, align 4
@R09_MT9V011_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @set_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_balance(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.mt9v011*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = call %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev* %9)
  store %struct.mt9v011* %10, %struct.mt9v011** %3, align 8
  %11 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %12 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %15 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @calc_mt9v011_gain(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %19 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %22 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %25 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sdiv i32 %27, 128
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @calc_mt9v011_gain(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %34 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %37 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mt9v011*, %struct.mt9v011** %3, align 8
  %40 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = sdiv i32 %42, 128
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @calc_mt9v011_gain(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %49 = load i32, i32* @R2B_MT9V011_GREEN_1_GAIN, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @mt9v011_write(%struct.v4l2_subdev* %48, i32 %49, i32 %50)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %53 = load i32, i32* @R2E_MT9V011_GREEN_2_GAIN, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @mt9v011_write(%struct.v4l2_subdev* %52, i32 %53, i32 %54)
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %57 = load i32, i32* @R2C_MT9V011_BLUE_GAIN, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @mt9v011_write(%struct.v4l2_subdev* %56, i32 %57, i32 %58)
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %61 = load i32, i32* @R2D_MT9V011_RED_GAIN, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @mt9v011_write(%struct.v4l2_subdev* %60, i32 %61, i32 %62)
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %65 = load i32, i32* @R09_MT9V011_SHUTTER_WIDTH, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @mt9v011_write(%struct.v4l2_subdev* %64, i32 %65, i32 %66)
  ret void
}

declare dso_local %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev*) #1

declare dso_local i32 @calc_mt9v011_gain(i32) #1

declare dso_local i32 @mt9v011_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
