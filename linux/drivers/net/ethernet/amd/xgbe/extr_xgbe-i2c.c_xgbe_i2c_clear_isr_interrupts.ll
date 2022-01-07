; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_clear_isr_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_clear_isr_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { i32 }

@XGBE_INTR_TX_ABRT = common dso_local global i32 0, align 4
@IC_TX_ABRT_SOURCE = common dso_local global i32 0, align 4
@IC_CLR_TX_ABRT = common dso_local global i32 0, align 4
@XGBE_INTR_STOP_DET = common dso_local global i32 0, align 4
@IC_CLR_STOP_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32)* @xgbe_i2c_clear_isr_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_i2c_clear_isr_interrupts(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_i2c_op_state*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.xgbe_i2c_op_state* %8, %struct.xgbe_i2c_op_state** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @XGBE_INTR_TX_ABRT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = load i32, i32* @IC_TX_ABRT_SOURCE, align 4
  %16 = call i32 @XI2C_IOREAD(%struct.xgbe_prv_data* %14, i32 %15)
  %17 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %5, align 8
  %18 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %20 = load i32, i32* @IC_CLR_TX_ABRT, align 4
  %21 = call i32 @XI2C_IOREAD(%struct.xgbe_prv_data* %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XGBE_INTR_STOP_DET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %29 = load i32, i32* @IC_CLR_STOP_DET, align 4
  %30 = call i32 @XI2C_IOREAD(%struct.xgbe_prv_data* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @XI2C_IOREAD(%struct.xgbe_prv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
