; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nfp_net_netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %6)
  store %struct.nfp_net* %7, %struct.nfp_net** %4, align 8
  %8 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %9 = call i32 @nfp_net_open_alloc_all(%struct.nfp_net* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %17 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %15, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %52

24:                                               ; preds = %14
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %25, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %52

34:                                               ; preds = %24
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @nfp_port_configure(%struct.net_device* %35, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %52

40:                                               ; preds = %34
  %41 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %42 = call i32 @nfp_net_set_config_and_enable(%struct.nfp_net* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %48 = call i32 @nfp_net_open_stack(%struct.nfp_net* %47)
  store i32 0, i32* %2, align 4
  br label %56

49:                                               ; preds = %45
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @nfp_port_configure(%struct.net_device* %50, i32 0)
  br label %52

52:                                               ; preds = %49, %39, %33, %23
  %53 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %54 = call i32 @nfp_net_close_free_all(%struct.nfp_net* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %46, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_net_open_alloc_all(%struct.nfp_net*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @nfp_port_configure(%struct.net_device*, i32) #1

declare dso_local i32 @nfp_net_set_config_and_enable(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_open_stack(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_close_free_all(%struct.nfp_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
