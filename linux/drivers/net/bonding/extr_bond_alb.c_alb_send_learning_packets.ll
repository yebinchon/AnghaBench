; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_send_learning_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_send_learning_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i32 }
%struct.bonding = type { i32 }
%struct.alb_walk_data = type { i32, %struct.bonding*, %struct.slave*, i32* }

@alb_upper_dev_walk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slave*, i32*, i32)* @alb_send_learning_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alb_send_learning_packets(%struct.slave* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.slave*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bonding*, align 8
  %8 = alloca %struct.alb_walk_data, align 8
  store %struct.slave* %0, %struct.slave** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.slave*, %struct.slave** %4, align 8
  %10 = call %struct.bonding* @bond_get_bond_by_slave(%struct.slave* %9)
  store %struct.bonding* %10, %struct.bonding** %7, align 8
  %11 = getelementptr inbounds %struct.alb_walk_data, %struct.alb_walk_data* %8, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.alb_walk_data, %struct.alb_walk_data* %8, i32 0, i32 1
  %14 = load %struct.bonding*, %struct.bonding** %7, align 8
  store %struct.bonding* %14, %struct.bonding** %13, align 8
  %15 = getelementptr inbounds %struct.alb_walk_data, %struct.alb_walk_data* %8, i32 0, i32 2
  %16 = load %struct.slave*, %struct.slave** %4, align 8
  store %struct.slave* %16, %struct.slave** %15, align 8
  %17 = getelementptr inbounds %struct.alb_walk_data, %struct.alb_walk_data* %8, i32 0, i32 3
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %17, align 8
  %19 = load %struct.slave*, %struct.slave** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @alb_send_lp_vid(%struct.slave* %19, i32* %20, i32 0, i32 0)
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.bonding*, %struct.bonding** %7, align 8
  %24 = getelementptr inbounds %struct.bonding, %struct.bonding* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @alb_upper_dev_walk, align 4
  %27 = call i32 @netdev_walk_all_upper_dev_rcu(i32 %25, i32 %26, %struct.alb_walk_data* %8)
  %28 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.bonding* @bond_get_bond_by_slave(%struct.slave*) #1

declare dso_local i32 @alb_send_lp_vid(%struct.slave*, i32*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @netdev_walk_all_upper_dev_rcu(i32, i32, %struct.alb_walk_data*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
