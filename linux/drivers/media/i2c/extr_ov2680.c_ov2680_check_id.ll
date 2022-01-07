; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_check_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_check_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_dev = type { i32 }
%struct.device = type { i32 }

@OV2680_REG_CHIP_ID_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to read chip id high\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OV2680_CHIP_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"chip id: 0x%04x does not match expected 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*)* @ov2680_check_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_check_id(%struct.ov2680_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov2680_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %3, align 8
  %7 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %8 = call %struct.device* @ov2680_to_dev(%struct.ov2680_dev* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %10 = call i32 @ov2680_power_on(%struct.ov2680_dev* %9)
  %11 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %12 = load i32, i32* @OV2680_REG_CHIP_ID_HIGH, align 4
  %13 = call i32 @ov2680_read_reg16(%struct.ov2680_dev* %11, i32 %12, i64* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @OV2680_CHIP_ID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @OV2680_CHIP_ID, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %25, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.device* @ov2680_to_dev(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_power_on(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_read_reg16(%struct.ov2680_dev*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
