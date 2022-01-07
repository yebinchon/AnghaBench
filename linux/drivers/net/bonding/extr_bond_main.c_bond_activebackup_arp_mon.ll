; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_activebackup_arp_mon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_activebackup_arp_mon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NETDEV_NOTIFY_PEERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*)* @bond_activebackup_arp_mon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_activebackup_arp_mon(%struct.bonding* %0) #0 {
  %2 = alloca %struct.bonding*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.bonding*, %struct.bonding** %2, align 8
  %7 = getelementptr inbounds %struct.bonding, %struct.bonding* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @msecs_to_jiffies(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.bonding*, %struct.bonding** %2, align 8
  %12 = call i32 @bond_has_slaves(%struct.bonding* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.bonding*, %struct.bonding** %2, align 8
  %18 = call i32 @bond_should_notify_peers(%struct.bonding* %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.bonding*, %struct.bonding** %2, align 8
  %20 = call i64 @bond_ab_arp_inspect(%struct.bonding* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = call i32 (...) @rtnl_trylock()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %36

27:                                               ; preds = %22
  %28 = load %struct.bonding*, %struct.bonding** %2, align 8
  %29 = call i32 @bond_ab_arp_commit(%struct.bonding* %28)
  %30 = call i32 (...) @rtnl_unlock()
  %31 = call i32 (...) @rcu_read_lock()
  br label %32

32:                                               ; preds = %27, %15
  %33 = load %struct.bonding*, %struct.bonding** %2, align 8
  %34 = call i32 @bond_ab_arp_probe(%struct.bonding* %33)
  store i32 %34, i32* %4, align 4
  %35 = call i32 (...) @rcu_read_unlock()
  br label %36

36:                                               ; preds = %32, %26, %14
  %37 = load %struct.bonding*, %struct.bonding** %2, align 8
  %38 = getelementptr inbounds %struct.bonding, %struct.bonding* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.bonding*, %struct.bonding** %2, align 8
  %44 = getelementptr inbounds %struct.bonding, %struct.bonding* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bonding*, %struct.bonding** %2, align 8
  %47 = getelementptr inbounds %struct.bonding, %struct.bonding* %46, i32 0, i32 1
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @queue_delayed_work(i32 %45, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %36
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %53, %50
  %57 = call i32 (...) @rtnl_trylock()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %79

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @NETDEV_NOTIFY_PEERS, align 4
  %65 = load %struct.bonding*, %struct.bonding** %2, align 8
  %66 = getelementptr inbounds %struct.bonding, %struct.bonding* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @call_netdevice_notifiers(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.bonding*, %struct.bonding** %2, align 8
  %74 = call i32 @bond_slave_state_notify(%struct.bonding* %73)
  %75 = load %struct.bonding*, %struct.bonding** %2, align 8
  %76 = call i32 @bond_slave_link_notify(%struct.bonding* %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = call i32 (...) @rtnl_unlock()
  br label %79

79:                                               ; preds = %59, %77, %53
  ret void
}

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @bond_has_slaves(%struct.bonding*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @bond_should_notify_peers(%struct.bonding*) #1

declare dso_local i64 @bond_ab_arp_inspect(%struct.bonding*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rtnl_trylock(...) #1

declare dso_local i32 @bond_ab_arp_commit(%struct.bonding*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @bond_ab_arp_probe(%struct.bonding*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @call_netdevice_notifiers(i32, i32) #1

declare dso_local i32 @bond_slave_state_notify(%struct.bonding*) #1

declare dso_local i32 @bond_slave_link_notify(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
