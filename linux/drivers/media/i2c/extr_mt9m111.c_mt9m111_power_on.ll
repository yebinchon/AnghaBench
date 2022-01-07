; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m111 = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to resume the sensor: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m111*)* @mt9m111_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_power_on(%struct.mt9m111* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9m111*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %3, align 8
  %6 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %7 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %6, i32 0, i32 2
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %10 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @v4l2_clk_enable(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %19 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regulator_enable(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %37

25:                                               ; preds = %17
  %26 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %27 = call i32 @mt9m111_resume(%struct.mt9m111* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %47

32:                                               ; preds = %30
  %33 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %34 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_disable(i32 %35)
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %39 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @v4l2_clk_disable(i32 %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %37, %31, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @v4l2_clk_enable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @mt9m111_resume(%struct.mt9m111*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @v4l2_clk_disable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
