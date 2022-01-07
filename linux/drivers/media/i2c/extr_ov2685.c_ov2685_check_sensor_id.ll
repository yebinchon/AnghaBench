; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c_ov2685_check_sensor_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c_ov2685_check_sensor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2685 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@OV2685_REG_CHIP_ID = common dso_local global i32 0, align 4
@OV2685_REG_VALUE_16BIT = common dso_local global i32 0, align 4
@CHIP_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unexpected sensor id(%04x), ret(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Detected OV%04x sensor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2685*, %struct.i2c_client*)* @ov2685_check_sensor_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2685_check_sensor_id(%struct.ov2685* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov2685*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ov2685* %0, %struct.ov2685** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %9 = load %struct.ov2685*, %struct.ov2685** %4, align 8
  %10 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = load i32, i32* @OV2685_REG_CHIP_ID, align 4
  %15 = load i32, i32* @OV2685_REG_VALUE_16BIT, align 4
  %16 = call i32 @ov2685_read_reg(%struct.i2c_client* %13, i32 %14, i32 %15, i64* %8)
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @CHIP_ID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i64, i64* @CHIP_ID, align 8
  %29 = call i32 @dev_info(%struct.device* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @ov2685_read_reg(%struct.i2c_client*, i32, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
