; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_alloc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_alloc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }
%struct.ef4_channel = type { i32, %struct.ef4_rx_queue, %struct.ef4_tx_queue*, i32*, %struct.ef4_nic* }
%struct.ef4_rx_queue = type { i32, %struct.ef4_nic* }
%struct.ef4_tx_queue = type { i32, %struct.ef4_channel*, %struct.ef4_nic* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ef4_default_channel_type = common dso_local global i32 0, align 4
@EF4_TXQ_TYPES = common dso_local global i32 0, align 4
@ef4_rx_slow_fill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ef4_channel* (%struct.ef4_nic*, i32, %struct.ef4_channel*)* @ef4_alloc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ef4_channel* @ef4_alloc_channel(%struct.ef4_nic* %0, i32 %1, %struct.ef4_channel* %2) #0 {
  %4 = alloca %struct.ef4_channel*, align 8
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ef4_channel*, align 8
  %8 = alloca %struct.ef4_channel*, align 8
  %9 = alloca %struct.ef4_rx_queue*, align 8
  %10 = alloca %struct.ef4_tx_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ef4_channel* %2, %struct.ef4_channel** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ef4_channel* @kzalloc(i32 48, i32 %12)
  store %struct.ef4_channel* %13, %struct.ef4_channel** %8, align 8
  %14 = load %struct.ef4_channel*, %struct.ef4_channel** %8, align 8
  %15 = icmp ne %struct.ef4_channel* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ef4_channel* null, %struct.ef4_channel** %4, align 8
  br label %64

17:                                               ; preds = %3
  %18 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %19 = load %struct.ef4_channel*, %struct.ef4_channel** %8, align 8
  %20 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %19, i32 0, i32 4
  store %struct.ef4_nic* %18, %struct.ef4_nic** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ef4_channel*, %struct.ef4_channel** %8, align 8
  %23 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ef4_channel*, %struct.ef4_channel** %8, align 8
  %25 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %24, i32 0, i32 3
  store i32* @ef4_default_channel_type, i32** %25, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %50, %17
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @EF4_TXQ_TYPES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load %struct.ef4_channel*, %struct.ef4_channel** %8, align 8
  %32 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %31, i32 0, i32 2
  %33 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %33, i64 %35
  store %struct.ef4_tx_queue* %36, %struct.ef4_tx_queue** %10, align 8
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %38 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %10, align 8
  %39 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %38, i32 0, i32 2
  store %struct.ef4_nic* %37, %struct.ef4_nic** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EF4_TXQ_TYPES, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %10, align 8
  %46 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ef4_channel*, %struct.ef4_channel** %8, align 8
  %48 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %10, align 8
  %49 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %48, i32 0, i32 1
  store %struct.ef4_channel* %47, %struct.ef4_channel** %49, align 8
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load %struct.ef4_channel*, %struct.ef4_channel** %8, align 8
  %55 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %54, i32 0, i32 1
  store %struct.ef4_rx_queue* %55, %struct.ef4_rx_queue** %9, align 8
  %56 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %57 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %9, align 8
  %58 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %57, i32 0, i32 1
  store %struct.ef4_nic* %56, %struct.ef4_nic** %58, align 8
  %59 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %9, align 8
  %60 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %59, i32 0, i32 0
  %61 = load i32, i32* @ef4_rx_slow_fill, align 4
  %62 = call i32 @timer_setup(i32* %60, i32 %61, i32 0)
  %63 = load %struct.ef4_channel*, %struct.ef4_channel** %8, align 8
  store %struct.ef4_channel* %63, %struct.ef4_channel** %4, align 8
  br label %64

64:                                               ; preds = %53, %16
  %65 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  ret %struct.ef4_channel* %65
}

declare dso_local %struct.ef4_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
