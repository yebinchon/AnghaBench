; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov8856.c_ov8856_identify_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov8856.c_ov8856_identify_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov8856 = type { i32 }
%struct.i2c_client = type { i32 }

@OV8856_REG_CHIP_ID = common dso_local global i32 0, align 4
@OV8856_REG_VALUE_24BIT = common dso_local global i32 0, align 4
@OV8856_CHIP_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"chip id mismatch: %x!=%x\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov8856*)* @ov8856_identify_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov8856_identify_module(%struct.ov8856* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov8856*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ov8856* %0, %struct.ov8856** %3, align 8
  %7 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %8 = getelementptr inbounds %struct.ov8856, %struct.ov8856* %7, i32 0, i32 0
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.ov8856*, %struct.ov8856** %3, align 8
  %11 = load i32, i32* @OV8856_REG_CHIP_ID, align 4
  %12 = load i32, i32* @OV8856_REG_VALUE_24BIT, align 4
  %13 = call i32 @ov8856_read_reg(%struct.ov8856* %10, i32 %11, i32 %12, i64* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @OV8856_CHIP_ID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i64, i64* @OV8856_CHIP_ID, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %22, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ov8856_read_reg(%struct.ov8856*, i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
