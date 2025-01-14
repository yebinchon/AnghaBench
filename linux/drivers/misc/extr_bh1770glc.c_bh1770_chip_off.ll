; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_chip_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_chip_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i32, i32 }

@BH1770_INTERRUPT = common dso_local global i32 0, align 4
@BH1770_DISABLE = common dso_local global i32 0, align 4
@BH1770_ALS_CONTROL = common dso_local global i32 0, align 4
@BH1770_STANDBY = common dso_local global i32 0, align 4
@BH1770_PS_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bh1770_chip*)* @bh1770_chip_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bh1770_chip_off(%struct.bh1770_chip* %0) #0 {
  %2 = alloca %struct.bh1770_chip*, align 8
  store %struct.bh1770_chip* %0, %struct.bh1770_chip** %2, align 8
  %3 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %4 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BH1770_INTERRUPT, align 4
  %7 = load i32, i32* @BH1770_DISABLE, align 4
  %8 = call i32 @i2c_smbus_write_byte_data(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %10 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BH1770_ALS_CONTROL, align 4
  %13 = load i32, i32* @BH1770_STANDBY, align 4
  %14 = call i32 @i2c_smbus_write_byte_data(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %16 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BH1770_PS_CONTROL, align 4
  %19 = load i32, i32* @BH1770_STANDBY, align 4
  %20 = call i32 @i2c_smbus_write_byte_data(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %22 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %26 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regulator_bulk_disable(i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
