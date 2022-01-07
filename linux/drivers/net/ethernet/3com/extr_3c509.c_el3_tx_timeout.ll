; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"%s: transmit timed out, Tx_status %2.2x status %4.4x Tx FIFO room %d\0A\00", align 1
@TX_STATUS = common dso_local global i64 0, align 8
@EL3_STATUS = common dso_local global i64 0, align 8
@TX_FREE = common dso_local global i64 0, align 8
@TxReset = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@TxEnable = common dso_local global i32 0, align 4
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
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @TX_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inb(i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @EL3_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inw(i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @TX_FREE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inw(i64 %23)
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14, i32 %19, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @netif_trans_update(%struct.net_device* %31)
  %33 = load i32, i32* @TxReset, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @EL3_CMD, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outw(i32 %33, i64 %37)
  %39 = load i32, i32* @TxEnable, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @EL3_CMD, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outw(i32 %39, i64 %43)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @netif_wake_queue(%struct.net_device* %45)
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
