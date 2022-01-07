; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_master_upper_dev_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_master_upper_dev_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }
%struct.slave = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.netdev_lag_upper_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, %struct.slave*, %struct.netlink_ext_ack*)* @bond_master_upper_dev_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_master_upper_dev_link(%struct.bonding* %0, %struct.slave* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.netdev_lag_upper_info, align 4
  %8 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = load %struct.bonding*, %struct.bonding** %4, align 8
  %10 = call i32 @bond_lag_tx_type(%struct.bonding* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = getelementptr inbounds %struct.netdev_lag_upper_info, %struct.netdev_lag_upper_info* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.bonding*, %struct.bonding** %4, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @bond_lag_hash_type(%struct.bonding* %13, i32 %14)
  %16 = getelementptr inbounds %struct.netdev_lag_upper_info, %struct.netdev_lag_upper_info* %7, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.slave*, %struct.slave** %5, align 8
  %18 = getelementptr inbounds %struct.slave, %struct.slave* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bonding*, %struct.bonding** %4, align 8
  %21 = getelementptr inbounds %struct.bonding, %struct.bonding* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.slave*, %struct.slave** %5, align 8
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %25 = call i32 @netdev_master_upper_dev_link(i32 %19, i32 %22, %struct.slave* %23, %struct.netdev_lag_upper_info* %7, %struct.netlink_ext_ack* %24)
  ret i32 %25
}

declare dso_local i32 @bond_lag_tx_type(%struct.bonding*) #1

declare dso_local i32 @bond_lag_hash_type(%struct.bonding*, i32) #1

declare dso_local i32 @netdev_master_upper_dev_link(i32, i32, %struct.slave*, %struct.netdev_lag_upper_info*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
