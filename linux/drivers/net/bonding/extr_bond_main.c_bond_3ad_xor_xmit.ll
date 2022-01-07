; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_3ad_xor_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_3ad_xor_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.bonding = type { i32 }
%struct.slave = type { i32 }
%struct.bond_up_slave = type { %struct.slave**, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bond_3ad_xor_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_3ad_xor_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bonding*, align 8
  %6 = alloca %struct.slave*, align 8
  %7 = alloca %struct.bond_up_slave*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bonding* @netdev_priv(%struct.net_device* %9)
  store %struct.bonding* %10, %struct.bonding** %5, align 8
  %11 = load %struct.bonding*, %struct.bonding** %5, align 8
  %12 = getelementptr inbounds %struct.bonding, %struct.bonding* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bond_up_slave* @rcu_dereference(i32 %13)
  store %struct.bond_up_slave* %14, %struct.bond_up_slave** %7, align 8
  %15 = load %struct.bond_up_slave*, %struct.bond_up_slave** %7, align 8
  %16 = icmp ne %struct.bond_up_slave* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.bond_up_slave*, %struct.bond_up_slave** %7, align 8
  %19 = getelementptr inbounds %struct.bond_up_slave, %struct.bond_up_slave* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @READ_ONCE(i32 %20)
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 0, %22 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.bond_up_slave*, %struct.bond_up_slave** %7, align 8
  %30 = getelementptr inbounds %struct.bond_up_slave, %struct.bond_up_slave* %29, i32 0, i32 0
  %31 = load %struct.slave**, %struct.slave*** %30, align 8
  %32 = load %struct.bonding*, %struct.bonding** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @bond_xmit_hash(%struct.bonding* %32, %struct.sk_buff* %33)
  %35 = load i32, i32* %8, align 4
  %36 = urem i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.slave*, %struct.slave** %31, i64 %37
  %39 = load %struct.slave*, %struct.slave** %38, align 8
  store %struct.slave* %39, %struct.slave** %6, align 8
  %40 = load %struct.bonding*, %struct.bonding** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = load %struct.slave*, %struct.slave** %6, align 8
  %43 = getelementptr inbounds %struct.slave, %struct.slave* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bond_dev_queue_xmit(%struct.bonding* %40, %struct.sk_buff* %41, i32 %44)
  br label %50

46:                                               ; preds = %23
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @bond_tx_drop(%struct.net_device* %47, %struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %46, %28
  %51 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %51
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bond_up_slave* @rcu_dereference(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bond_xmit_hash(%struct.bonding*, %struct.sk_buff*) #1

declare dso_local i32 @bond_dev_queue_xmit(%struct.bonding*, %struct.sk_buff*, i32) #1

declare dso_local i32 @bond_tx_drop(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
