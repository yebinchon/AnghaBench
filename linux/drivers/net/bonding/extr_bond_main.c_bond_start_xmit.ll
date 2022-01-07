; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.bonding = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bond_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bonding*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.bonding* @netdev_priv(%struct.net_device* %8)
  store %struct.bonding* %9, %struct.bonding** %6, align 8
  %10 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i32 @is_netpoll_tx_blocked(%struct.net_device* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.bonding*, %struct.bonding** %6, align 8
  %20 = call i64 @bond_has_slaves(%struct.bonding* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @__bond_start_xmit(%struct.sk_buff* %23, %struct.net_device* %24)
  store i32 %25, i32* %7, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @bond_tx_drop(%struct.net_device* %27, %struct.sk_buff* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_netpoll_tx_blocked(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @bond_has_slaves(%struct.bonding*) #1

declare dso_local i32 @__bond_start_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @bond_tx_drop(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
