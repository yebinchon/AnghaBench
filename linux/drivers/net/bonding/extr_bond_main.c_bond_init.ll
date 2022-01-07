; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32 }
%struct.bonding = type { i32, i32, i32, i32 }
%struct.bond_net = type { i32 }

@bond_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Begin bond_init\0A\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NET_ADDR_PERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bond_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.bond_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bonding* @netdev_priv(%struct.net_device* %6)
  store %struct.bonding* %7, %struct.bonding** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @dev_net(%struct.net_device* %8)
  %10 = load i32, i32* @bond_net_id, align 4
  %11 = call %struct.bond_net* @net_generic(i32 %9, i32 %10)
  store %struct.bond_net* %11, %struct.bond_net** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @netdev_dbg(%struct.net_device* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %18 = call i32 @alloc_ordered_workqueue(i32 %16, i32 %17)
  %19 = load %struct.bonding*, %struct.bonding** %4, align 8
  %20 = getelementptr inbounds %struct.bonding, %struct.bonding* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bonding*, %struct.bonding** %4, align 8
  %22 = getelementptr inbounds %struct.bonding, %struct.bonding* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load %struct.bonding*, %struct.bonding** %4, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 2
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.bonding*, %struct.bonding** %4, align 8
  %33 = getelementptr inbounds %struct.bonding, %struct.bonding* %32, i32 0, i32 1
  %34 = call i32 @lockdep_register_key(i32* %33)
  %35 = load %struct.bonding*, %struct.bonding** %4, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 2
  %37 = load %struct.bonding*, %struct.bonding** %4, align 8
  %38 = getelementptr inbounds %struct.bonding, %struct.bonding* %37, i32 0, i32 1
  %39 = call i32 @lockdep_set_class(i32* %36, i32* %38)
  %40 = load %struct.bonding*, %struct.bonding** %4, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 0
  %42 = load %struct.bond_net*, %struct.bond_net** %5, align 8
  %43 = getelementptr inbounds %struct.bond_net, %struct.bond_net* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.bonding*, %struct.bonding** %4, align 8
  %46 = call i32 @bond_prepare_sysfs_group(%struct.bonding* %45)
  %47 = load %struct.bonding*, %struct.bonding** %4, align 8
  %48 = call i32 @bond_debug_register(%struct.bonding* %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @is_zero_ether_addr(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %28
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NET_ADDR_PERM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @eth_hw_addr_random(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %54, %28
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %25
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bond_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @alloc_ordered_workqueue(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @lockdep_register_key(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bond_prepare_sysfs_group(%struct.bonding*) #1

declare dso_local i32 @bond_debug_register(%struct.bonding*) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
