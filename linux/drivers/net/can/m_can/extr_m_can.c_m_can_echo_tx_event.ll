; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_echo_tx_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_echo_tx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.m_can_classdev = type { i32 }

@M_CAN_TXEFS = common dso_local global i32 0, align 4
@TXEFS_EFFL_MASK = common dso_local global i32 0, align 4
@TXEFS_EFFL_SHIFT = common dso_local global i32 0, align 4
@TXEFS_EFGI_MASK = common dso_local global i32 0, align 4
@TXEFS_EFGI_SHIFT = common dso_local global i32 0, align 4
@TX_EVENT_MM_MASK = common dso_local global i32 0, align 4
@TX_EVENT_MM_SHIFT = common dso_local global i32 0, align 4
@M_CAN_TXEFA = common dso_local global i32 0, align 4
@TXEFA_EFAI_MASK = common dso_local global i32 0, align 4
@TXEFA_EFAI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @m_can_echo_tx_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_can_echo_tx_event(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.m_can_classdev*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %10)
  store %struct.m_can_classdev* %11, %struct.m_can_classdev** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %9, align 8
  %14 = load %struct.m_can_classdev*, %struct.m_can_classdev** %8, align 8
  %15 = load i32, i32* @M_CAN_TXEFS, align 4
  %16 = call i32 @m_can_read(%struct.m_can_classdev* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TXEFS_EFFL_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @TXEFS_EFFL_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %62, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = load %struct.m_can_classdev*, %struct.m_can_classdev** %8, align 8
  %28 = load i32, i32* @M_CAN_TXEFS, align 4
  %29 = call i32 @m_can_read(%struct.m_can_classdev* %27, i32 %28)
  %30 = load i32, i32* @TXEFS_EFGI_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @TXEFS_EFGI_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.m_can_classdev*, %struct.m_can_classdev** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @m_can_txe_fifo_read(%struct.m_can_classdev* %34, i32 %35, i32 4)
  %37 = load i32, i32* @TX_EVENT_MM_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @TX_EVENT_MM_SHIFT, align 4
  %40 = lshr i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.m_can_classdev*, %struct.m_can_classdev** %8, align 8
  %42 = load i32, i32* @M_CAN_TXEFA, align 4
  %43 = load i32, i32* @TXEFA_EFAI_MASK, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TXEFA_EFAI_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = and i32 %43, %46
  %48 = call i32 @m_can_write(%struct.m_can_classdev* %41, i32 %42, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @can_get_echo_skb(%struct.net_device* %49, i32 %50)
  %52 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %53 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %26
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %22

65:                                               ; preds = %22
  ret void
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @m_can_txe_fifo_read(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i64 @can_get_echo_skb(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
