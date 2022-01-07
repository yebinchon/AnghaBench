; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_standby_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_ee.c_ixgb_standby_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@EECD = common dso_local global i32 0, align 4
@IXGB_EECD_CS = common dso_local global i32 0, align 4
@IXGB_EECD_SK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_hw*)* @ixgb_standby_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_standby_eeprom(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %4 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %5 = load i32, i32* @EECD, align 4
  %6 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @IXGB_EECD_CS, align 4
  %8 = load i32, i32* @IXGB_EECD_SK, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %14 = load i32, i32* @EECD, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %18 = call i32 @IXGB_WRITE_FLUSH(%struct.ixgb_hw* %17)
  %19 = call i32 @udelay(i32 50)
  %20 = load i32, i32* @IXGB_EECD_SK, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %24 = load i32, i32* @EECD, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %23, i32 %24, i32 %25)
  %27 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %28 = call i32 @IXGB_WRITE_FLUSH(%struct.ixgb_hw* %27)
  %29 = call i32 @udelay(i32 50)
  %30 = load i32, i32* @IXGB_EECD_CS, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %34 = load i32, i32* @EECD, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %38 = call i32 @IXGB_WRITE_FLUSH(%struct.ixgb_hw* %37)
  %39 = call i32 @udelay(i32 50)
  %40 = load i32, i32* @IXGB_EECD_SK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %45 = load i32, i32* @EECD, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %44, i32 %45, i32 %46)
  %48 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %49 = call i32 @IXGB_WRITE_FLUSH(%struct.ixgb_hw* %48)
  %50 = call i32 @udelay(i32 50)
  ret void
}

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @IXGB_WRITE_FLUSH(%struct.ixgb_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
