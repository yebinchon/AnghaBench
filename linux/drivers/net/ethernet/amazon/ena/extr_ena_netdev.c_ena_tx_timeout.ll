; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ena_adapter = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_REGS_RESET_OS_NETDEV_WD = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Transmit time out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ena_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ena_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.ena_adapter* %5, %struct.ena_adapter** %3, align 8
  %6 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 3
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %31

12:                                               ; preds = %1
  %13 = load i32, i32* @ENA_REGS_RESET_OS_NETDEV_WD, align 4
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 0
  %18 = call i32 @u64_stats_update_begin(i32* %17)
  %19 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %24, i32 0, i32 0
  %26 = call i32 @u64_stats_update_end(i32* %25)
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %28 = load i32, i32* @tx_err, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @netif_err(%struct.ena_adapter* %27, i32 %28, %struct.net_device* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
