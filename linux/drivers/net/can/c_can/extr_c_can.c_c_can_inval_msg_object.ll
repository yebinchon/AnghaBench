; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_inval_msg_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_inval_msg_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32, i32)* }

@ARB1_REG = common dso_local global i32 0, align 4
@ARB2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @c_can_inval_msg_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_inval_msg_object(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.c_can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.c_can_priv* %9, %struct.c_can_priv** %7, align 8
  %10 = load %struct.c_can_priv*, %struct.c_can_priv** %7, align 8
  %11 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %10, i32 0, i32 0
  %12 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %11, align 8
  %13 = load %struct.c_can_priv*, %struct.c_can_priv** %7, align 8
  %14 = load i32, i32* @ARB1_REG, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @C_CAN_IFACE(i32 %14, i32 %15)
  %17 = call i32 %12(%struct.c_can_priv* %13, i32 %16, i32 0)
  %18 = load %struct.c_can_priv*, %struct.c_can_priv** %7, align 8
  %19 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %18, i32 0, i32 0
  %20 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %19, align 8
  %21 = load %struct.c_can_priv*, %struct.c_can_priv** %7, align 8
  %22 = load i32, i32* @ARB2_REG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @C_CAN_IFACE(i32 %22, i32 %23)
  %25 = call i32 %20(%struct.c_can_priv* %21, i32 %24, i32 0)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @c_can_inval_tx_object(%struct.net_device* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @C_CAN_IFACE(i32, i32) #1

declare dso_local i32 @c_can_inval_tx_object(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
