; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_chip_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_chip_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i64, i32, i32, i64, i64, i32 }

@BH1770_STARTUP_DELAY = common dso_local global i32 0, align 4
@BH1770_ALS_CONTROL = common dso_local global i32 0, align 4
@BH1770_SWRESET = common dso_local global i32 0, align 4
@BH1770_RESET_TIME = common dso_local global i32 0, align 4
@BH1770_STANDALONE = common dso_local global i32 0, align 4
@BH1770_LUX_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1770_chip*)* @bh1770_chip_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_chip_on(%struct.bh1770_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bh1770_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.bh1770_chip* %0, %struct.bh1770_chip** %3, align 8
  %5 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %6 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %10 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @regulator_bulk_enable(i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load i32, i32* @BH1770_STARTUP_DELAY, align 4
  %19 = load i32, i32* @BH1770_STARTUP_DELAY, align 4
  %20 = mul nsw i32 %19, 2
  %21 = call i32 @usleep_range(i32 %18, i32 %20)
  %22 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %23 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BH1770_ALS_CONTROL, align 4
  %26 = load i32, i32* @BH1770_SWRESET, align 4
  %27 = call i32 @i2c_smbus_write_byte_data(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @BH1770_RESET_TIME, align 4
  %29 = load i32, i32* @BH1770_RESET_TIME, align 4
  %30 = mul nsw i32 %29, 2
  %31 = call i32 @usleep_range(i32 %28, i32 %30)
  %32 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %33 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %35 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %37 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BH1770_ALS_CONTROL, align 4
  %40 = load i32, i32* @BH1770_STANDALONE, align 4
  %41 = call i32 @i2c_smbus_write_byte_data(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @BH1770_LUX_RANGE, align 4
  %43 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %44 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %46 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %17, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
