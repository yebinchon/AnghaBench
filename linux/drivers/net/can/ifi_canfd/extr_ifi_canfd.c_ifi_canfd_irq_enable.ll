; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifi_canfd_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFI_CANFD_IRQMASK_TXFIFO_EMPTY = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK_RXFIFO_NEMPTY = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK_ERROR_STATE_CHG = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK_ERROR_WARNING = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK_ERROR_BUSOFF = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@IFI_CANFD_INTERRUPT_ERROR_COUNTER = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK_SET_ERR = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK_SET_TS = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK_SET_TX = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK_SET_RX = common dso_local global i32 0, align 4
@IFI_CANFD_IRQMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @ifi_canfd_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifi_canfd_irq_enable(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifi_canfd_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.ifi_canfd_priv* %8, %struct.ifi_canfd_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load i32, i32* @IFI_CANFD_IRQMASK_TXFIFO_EMPTY, align 4
  %13 = load i32, i32* @IFI_CANFD_IRQMASK_RXFIFO_NEMPTY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IFI_CANFD_IRQMASK_ERROR_STATE_CHG, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IFI_CANFD_IRQMASK_ERROR_WARNING, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IFI_CANFD_IRQMASK_ERROR_BUSOFF, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %11
  %29 = load i32, i32* @IFI_CANFD_INTERRUPT_ERROR_COUNTER, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %11
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* @IFI_CANFD_IRQMASK_SET_ERR, align 4
  %35 = load i32, i32* @IFI_CANFD_IRQMASK_SET_TS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IFI_CANFD_IRQMASK_SET_TX, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IFI_CANFD_IRQMASK_SET_RX, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %5, align 8
  %44 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IFI_CANFD_IRQMASK, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
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
