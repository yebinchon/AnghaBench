; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_update_geom_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_update_geom_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m032 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.i2c_client = type { i32 }

@MT9M032_COLUMN_SIZE = common dso_local global i32 0, align 4
@MT9M032_ROW_SIZE = common dso_local global i32 0, align 4
@MT9M032_COLUMN_START = common dso_local global i32 0, align 4
@MT9M032_ROW_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m032*)* @mt9m032_update_geom_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m032_update_geom_timing(%struct.mt9m032* %0) #0 {
  %2 = alloca %struct.mt9m032*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.mt9m032* %0, %struct.mt9m032** %2, align 8
  %5 = load %struct.mt9m032*, %struct.mt9m032** %2, align 8
  %6 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %5, i32 0, i32 1
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = load i32, i32* @MT9M032_COLUMN_SIZE, align 4
  %10 = load %struct.mt9m032*, %struct.mt9m032** %2, align 8
  %11 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i32 @mt9m032_write(%struct.i2c_client* %8, i32 %9, i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load i32, i32* @MT9M032_ROW_SIZE, align 4
  %21 = load %struct.mt9m032*, %struct.mt9m032** %2, align 8
  %22 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @mt9m032_write(%struct.i2c_client* %19, i32 %20, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load i32, i32* @MT9M032_COLUMN_START, align 4
  %33 = load %struct.mt9m032*, %struct.mt9m032** %2, align 8
  %34 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @mt9m032_write(%struct.i2c_client* %31, i32 %32, i64 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = load i32, i32* @MT9M032_ROW_START, align 4
  %44 = load %struct.mt9m032*, %struct.mt9m032** %2, align 8
  %45 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mt9m032_write(%struct.i2c_client* %42, i32 %43, i64 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %41, %38
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.mt9m032*, %struct.mt9m032** %2, align 8
  %54 = call i32 @mt9m032_update_timing(%struct.mt9m032* %53, i32* null)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9m032_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mt9m032_update_timing(%struct.mt9m032*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
