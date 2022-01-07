; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_setup_receive_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_setup_receive_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)* }

@MASK1_REG = common dso_local global i32 0, align 4
@IF_ARB_MSGVAL = common dso_local global i32 0, align 4
@ARB1_REG = common dso_local global i32 0, align 4
@MSGCTRL_REG = common dso_local global i32 0, align 4
@IF_COMM_RCV_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32, i32, i32)* @c_can_setup_receive_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_setup_receive_object(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.c_can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.c_can_priv* %15, %struct.c_can_priv** %13, align 8
  %16 = call i32 @BIT(i32 29)
  %17 = load i32, i32* %10, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %10, align 4
  %19 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %20 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %19, i32 0, i32 1
  %21 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %20, align 8
  %22 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %23 = load i32, i32* @MASK1_REG, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @C_CAN_IFACE(i32 %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = call i32 %21(%struct.c_can_priv* %22, i32 %25, i32 %26)
  %28 = load i32, i32* @IF_ARB_MSGVAL, align 4
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %32 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %31, i32 0, i32 1
  %33 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %32, align 8
  %34 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %35 = load i32, i32* @ARB1_REG, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @C_CAN_IFACE(i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = call i32 %33(%struct.c_can_priv* %34, i32 %37, i32 %38)
  %40 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %41 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %40, i32 0, i32 0
  %42 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %41, align 8
  %43 = load %struct.c_can_priv*, %struct.c_can_priv** %13, align 8
  %44 = load i32, i32* @MSGCTRL_REG, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @C_CAN_IFACE(i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = call i32 %42(%struct.c_can_priv* %43, i32 %46, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @IF_COMM_RCV_SETUP, align 4
  %53 = call i32 @c_can_object_put(%struct.net_device* %49, i32 %50, i32 %51, i32 %52)
  ret void
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @C_CAN_IFACE(i32, i32) #1

declare dso_local i32 @c_can_object_put(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
