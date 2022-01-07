; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.bonding = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @bond_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bonding*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %18 = call i32 @bond_changelink(%struct.net_device* %14, %struct.nlattr** %15, %struct.nlattr** %16, %struct.netlink_ext_ack* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %37

23:                                               ; preds = %5
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = call i32 @register_netdevice(%struct.net_device* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call i32 @netif_carrier_off(%struct.net_device* %26)
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call %struct.bonding* @netdev_priv(%struct.net_device* %31)
  store %struct.bonding* %32, %struct.bonding** %13, align 8
  %33 = load %struct.bonding*, %struct.bonding** %13, align 8
  %34 = call i32 @bond_work_init_all(%struct.bonding* %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @bond_changelink(%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bond_work_init_all(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
