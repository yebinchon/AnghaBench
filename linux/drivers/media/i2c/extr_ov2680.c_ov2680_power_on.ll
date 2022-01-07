; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_dev = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@OV2680_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to enable regulators: %d\0A\00", align 1
@OV2680_REG_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"sensor soft reset failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*)* @ov2680_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_power_on(%struct.ov2680_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov2680_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %3, align 8
  %6 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %7 = call %struct.device* @ov2680_to_dev(%struct.ov2680_dev* %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %9 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load i32, i32* @OV2680_NUM_SUPPLIES, align 4
  %15 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regulator_bulk_enable(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %13
  %27 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %28 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %33 = load i32, i32* @OV2680_REG_SOFT_RESET, align 4
  %34 = call i32 @ov2680_write_reg(%struct.ov2680_dev* %32, i32 %33, i32 1)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %65

41:                                               ; preds = %31
  %42 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %48

43:                                               ; preds = %26
  %44 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %45 = call i32 @ov2680_power_down(%struct.ov2680_dev* %44)
  %46 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %47 = call i32 @ov2680_power_up(%struct.ov2680_dev* %46)
  br label %48

48:                                               ; preds = %43, %41
  %49 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %50 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_prepare_enable(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %48
  %58 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %59 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %61 = call i32 @ov2680_stream_enable(%struct.ov2680_dev* %60)
  %62 = call i32 @usleep_range(i32 1000, i32 2000)
  %63 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %64 = call i32 @ov2680_stream_disable(%struct.ov2680_dev* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %55, %37, %21, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.device* @ov2680_to_dev(%struct.ov2680_dev*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ov2680_write_reg(%struct.ov2680_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ov2680_power_down(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_power_up(%struct.ov2680_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @ov2680_stream_enable(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_stream_disable(%struct.ov2680_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
