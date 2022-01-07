; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c___c_can_get_berr_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c___c_can_get_berr_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_berr_counter = type { i32, i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)* }

@C_CAN_ERR_CNT_REG = common dso_local global i32 0, align 4
@ERR_CNT_REC_MASK = common dso_local global i32 0, align 4
@ERR_CNT_REC_SHIFT = common dso_local global i32 0, align 4
@ERR_CNT_TEC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_berr_counter*)* @__c_can_get_berr_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__c_can_get_berr_counter(%struct.net_device* %0, %struct.can_berr_counter* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.can_berr_counter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c_can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.can_berr_counter* %1, %struct.can_berr_counter** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.c_can_priv* %8, %struct.c_can_priv** %6, align 8
  %9 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %10 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %9, i32 0, i32 0
  %11 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %10, align 8
  %12 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %13 = load i32, i32* @C_CAN_ERR_CNT_REG, align 4
  %14 = call i32 %11(%struct.c_can_priv* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ERR_CNT_REC_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @ERR_CNT_REC_SHIFT, align 4
  %19 = lshr i32 %17, %18
  %20 = load %struct.can_berr_counter*, %struct.can_berr_counter** %4, align 8
  %21 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ERR_CNT_TEC_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.can_berr_counter*, %struct.can_berr_counter** %4, align 8
  %26 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  ret i32 0
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
