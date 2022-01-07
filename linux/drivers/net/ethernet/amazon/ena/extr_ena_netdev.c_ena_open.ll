; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ena_adapter = type { i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't set num tx queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't set num rx queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ena_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ena_adapter* %7, %struct.ena_adapter** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %17 = load i32, i32* @ifup, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @netif_err(%struct.ena_adapter* %16, i32 %17, %struct.net_device* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %31 = load i32, i32* @ifup, align 4
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @netif_err(%struct.ena_adapter* %30, i32 %31, %struct.net_device* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %21
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %37 = call i32 @ena_up(%struct.ena_adapter* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40, %29, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @ena_up(%struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
