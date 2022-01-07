; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_apply_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_apply_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.mt9m001_reg = type { i32, i32 }

@MT9M001_HORIZONTAL_BLANKING = common dso_local global i32 0, align 4
@MT9M001_DEFAULT_HBLANK = common dso_local global i32 0, align 4
@MT9M001_VERTICAL_BLANKING = common dso_local global i32 0, align 4
@MT9M001_DEFAULT_VBLANK = common dso_local global i32 0, align 4
@MT9M001_COLUMN_START = common dso_local global i32 0, align 4
@MT9M001_ROW_START = common dso_local global i32 0, align 4
@MT9M001_WINDOW_WIDTH = common dso_local global i32 0, align 4
@MT9M001_WINDOW_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @mt9m001_apply_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_apply_selection(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9m001*, align 8
  %5 = alloca [6 x %struct.mt9m001_reg], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %8)
  store %struct.mt9m001* %9, %struct.mt9m001** %4, align 8
  %10 = getelementptr inbounds [6 x %struct.mt9m001_reg], [6 x %struct.mt9m001_reg]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %10, i32 0, i32 0
  %12 = load i32, i32* @MT9M001_HORIZONTAL_BLANKING, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %10, i32 0, i32 1
  %14 = load i32, i32* @MT9M001_DEFAULT_HBLANK, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %10, i64 1
  %16 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %15, i32 0, i32 0
  %17 = load i32, i32* @MT9M001_VERTICAL_BLANKING, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %15, i32 0, i32 1
  %19 = load i32, i32* @MT9M001_DEFAULT_VBLANK, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %15, i64 1
  %21 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %20, i32 0, i32 0
  %22 = load i32, i32* @MT9M001_COLUMN_START, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %20, i32 0, i32 1
  %24 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %25 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %20, i64 1
  %29 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %28, i32 0, i32 0
  %30 = load i32, i32* @MT9M001_ROW_START, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %28, i32 0, i32 1
  %32 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %33 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %28, i64 1
  %37 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %36, i32 0, i32 0
  %38 = load i32, i32* @MT9M001_WINDOW_WIDTH, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %36, i32 0, i32 1
  %40 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %41 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %39, align 4
  %45 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %36, i64 1
  %46 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %45, i32 0, i32 0
  %47 = load i32, i32* @MT9M001_WINDOW_HEIGHT, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.mt9m001_reg, %struct.mt9m001_reg* %45, i32 0, i32 1
  %49 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %50 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %54 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = sub nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %48, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = getelementptr inbounds [6 x %struct.mt9m001_reg], [6 x %struct.mt9m001_reg]* %5, i64 0, i64 0
  %61 = getelementptr inbounds [6 x %struct.mt9m001_reg], [6 x %struct.mt9m001_reg]* %5, i64 0, i64 0
  %62 = call i32 @ARRAY_SIZE(%struct.mt9m001_reg* %61)
  %63 = call i32 @multi_reg_write(%struct.i2c_client* %59, %struct.mt9m001_reg* %60, i32 %62)
  ret i32 %63
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local i32 @multi_reg_write(%struct.i2c_client*, %struct.mt9m001_reg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mt9m001_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
