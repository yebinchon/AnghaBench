; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___get_first_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c___get_first_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { i32 }
%struct.port = type { i32 }
%struct.bonding = type { i32 }
%struct.slave = type { i32 }
%struct.TYPE_2__ = type { %struct.aggregator }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aggregator* (%struct.port*)* @__get_first_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aggregator* @__get_first_agg(%struct.port* %0) #0 {
  %2 = alloca %struct.aggregator*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca %struct.aggregator*, align 8
  store %struct.port* %0, %struct.port** %3, align 8
  %7 = load %struct.port*, %struct.port** %3, align 8
  %8 = call %struct.bonding* @__get_bond_by_port(%struct.port* %7)
  store %struct.bonding* %8, %struct.bonding** %4, align 8
  %9 = load %struct.bonding*, %struct.bonding** %4, align 8
  %10 = icmp eq %struct.bonding* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.aggregator* null, %struct.aggregator** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.bonding*, %struct.bonding** %4, align 8
  %15 = call %struct.slave* @bond_first_slave_rcu(%struct.bonding* %14)
  store %struct.slave* %15, %struct.slave** %5, align 8
  %16 = load %struct.slave*, %struct.slave** %5, align 8
  %17 = icmp ne %struct.slave* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.slave*, %struct.slave** %5, align 8
  %20 = call %struct.TYPE_2__* @SLAVE_AD_INFO(%struct.slave* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  br label %23

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi %struct.aggregator* [ %21, %18 ], [ null, %22 ]
  store %struct.aggregator* %24, %struct.aggregator** %6, align 8
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load %struct.aggregator*, %struct.aggregator** %6, align 8
  store %struct.aggregator* %26, %struct.aggregator** %2, align 8
  br label %27

27:                                               ; preds = %23, %11
  %28 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  ret %struct.aggregator* %28
}

declare dso_local %struct.bonding* @__get_bond_by_port(%struct.port*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.slave* @bond_first_slave_rcu(%struct.bonding*) #1

declare dso_local %struct.TYPE_2__* @SLAVE_AD_INFO(%struct.slave*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
