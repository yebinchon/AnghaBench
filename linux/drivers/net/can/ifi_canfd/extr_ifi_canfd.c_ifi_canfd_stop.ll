; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifi_canfd_priv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@IFI_CANFD_ERROR_CTR_ER_RESET = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR = common dso_local global i64 0, align 8
@IFI_CANFD_STCMD_HARDRESET = common dso_local global i32 0, align 4
@IFI_CANFD_STCMD = common dso_local global i64 0, align 8
@IFI_CANFD_IRQMASK = common dso_local global i64 0, align 8
@IFI_CANFD_INTERRUPT_SET_IRQ = common dso_local global i64 0, align 8
@IFI_CANFD_INTERRUPT = common dso_local global i64 0, align 8
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ifi_canfd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifi_canfd_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ifi_canfd_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.ifi_canfd_priv* %5, %struct.ifi_canfd_priv** %3, align 8
  %6 = load i32, i32* @IFI_CANFD_ERROR_CTR_ER_RESET, align 4
  %7 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IFI_CANFD_ERROR_CTR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IFI_CANFD_ERROR_CTR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 0, i64 %17)
  %19 = load i32, i32* @IFI_CANFD_STCMD_HARDRESET, align 4
  %20 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IFI_CANFD_STCMD, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IFI_CANFD_IRQMASK, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 -1, i64 %30)
  %32 = load i64, i64* @IFI_CANFD_INTERRUPT_SET_IRQ, align 8
  %33 = xor i64 %32, -1
  %34 = trunc i64 %33 to i32
  %35 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IFI_CANFD_INTERRUPT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %42 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %43 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  ret void
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
