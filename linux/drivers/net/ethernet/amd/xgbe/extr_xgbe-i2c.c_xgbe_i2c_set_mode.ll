; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@IC_CON = common dso_local global i32 0, align 4
@MASTER_MODE = common dso_local global i32 0, align 4
@SLAVE_DISABLE = common dso_local global i32 0, align 4
@RESTART_EN = common dso_local global i32 0, align 4
@SPEED = common dso_local global i32 0, align 4
@XGBE_STD_SPEED = common dso_local global i32 0, align 4
@RX_FIFO_FULL_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_i2c_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_i2c_set_mode(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = load i32, i32* @IC_CON, align 4
  %6 = call i32 @XI2C_IOREAD(%struct.xgbe_prv_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IC_CON, align 4
  %9 = load i32, i32* @MASTER_MODE, align 4
  %10 = call i32 @XI2C_SET_BITS(i32 %7, i32 %8, i32 %9, i32 1)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IC_CON, align 4
  %13 = load i32, i32* @SLAVE_DISABLE, align 4
  %14 = call i32 @XI2C_SET_BITS(i32 %11, i32 %12, i32 %13, i32 1)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IC_CON, align 4
  %17 = load i32, i32* @RESTART_EN, align 4
  %18 = call i32 @XI2C_SET_BITS(i32 %15, i32 %16, i32 %17, i32 1)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IC_CON, align 4
  %21 = load i32, i32* @SPEED, align 4
  %22 = load i32, i32* @XGBE_STD_SPEED, align 4
  %23 = call i32 @XI2C_SET_BITS(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IC_CON, align 4
  %26 = load i32, i32* @RX_FIFO_FULL_HOLD, align 4
  %27 = call i32 @XI2C_SET_BITS(i32 %24, i32 %25, i32 %26, i32 1)
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = load i32, i32* @IC_CON, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @XI2C_IOWRITE(%struct.xgbe_prv_data* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @XI2C_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XI2C_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XI2C_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
