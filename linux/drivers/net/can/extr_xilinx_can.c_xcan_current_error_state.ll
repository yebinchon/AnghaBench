; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_current_error_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_current_error_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)* }

@XCAN_SR_OFFSET = common dso_local global i32 0, align 4
@XCAN_SR_ESTAT_MASK = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@XCAN_SR_ERRWRN_MASK = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xcan_current_error_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_current_error_state(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xcan_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.xcan_priv* %7, %struct.xcan_priv** %4, align 8
  %8 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %9 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %8, i32 0, i32 0
  %10 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %9, align 8
  %11 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %12 = load i32, i32* @XCAN_SR_OFFSET, align 4
  %13 = call i32 %10(%struct.xcan_priv* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @XCAN_SR_ESTAT_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @XCAN_SR_ESTAT_MASK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @XCAN_SR_ERRWRN_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
