; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_el3_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_el3_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Transmit timed out!\0A\00", align 1
@TxReset = common dso_local global i32 0, align 4
@TxEnable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @el3_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @el3_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netdev_notice(%struct.net_device* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @dump_status(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_trans_update(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = load i32, i32* @TxReset, align 4
  %20 = call i32 @tc574_wait_for_completion(%struct.net_device* %18, i32 %19)
  %21 = load i32, i32* @TxEnable, align 4
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* @EL3_CMD, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outw(i32 %21, i64 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @netif_wake_queue(%struct.net_device* %27)
  ret void
}

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

declare dso_local i32 @dump_status(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @tc574_wait_for_completion(%struct.net_device*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
