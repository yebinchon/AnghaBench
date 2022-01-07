; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rj54n1 = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @rj54n1_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj54n1_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rj54n1*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = call %struct.rj54n1* @to_rj54n1(%struct.i2c_client* %10)
  store %struct.rj54n1* %11, %struct.rj54n1** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %16 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %21 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gpiod_set_value(i64 %22, i32 1)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %26 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %31 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @gpiod_set_value(i64 %32, i32 1)
  br label %34

34:                                               ; preds = %29, %24
  %35 = call i32 @msleep(i32 1)
  %36 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %37 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_prepare_enable(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %2
  %41 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %42 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  %45 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %46 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %51 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gpiod_set_value(i64 %52, i32 0)
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %56 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.rj54n1*, %struct.rj54n1** %7, align 8
  %61 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gpiod_set_value(i64 %62, i32 0)
  br label %64

64:                                               ; preds = %59, %54
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.rj54n1* @to_rj54n1(%struct.i2c_client*) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
