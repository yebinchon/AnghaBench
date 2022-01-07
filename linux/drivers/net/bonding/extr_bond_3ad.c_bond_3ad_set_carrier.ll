; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_set_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_set_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.aggregator = type { i32 }
%struct.slave = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_3ad_set_carrier(%struct.bonding* %0) #0 {
  %2 = alloca %struct.bonding*, align 8
  %3 = alloca %struct.aggregator*, align 8
  %4 = alloca %struct.slave*, align 8
  %5 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.bonding*, %struct.bonding** %2, align 8
  %8 = call %struct.slave* @bond_first_slave_rcu(%struct.bonding* %7)
  store %struct.slave* %8, %struct.slave** %4, align 8
  %9 = load %struct.slave*, %struct.slave** %4, align 8
  %10 = icmp ne %struct.slave* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.slave*, %struct.slave** %4, align 8
  %14 = call %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call %struct.aggregator* @__get_active_agg(i32* %15)
  store %struct.aggregator* %16, %struct.aggregator** %3, align 8
  %17 = load %struct.aggregator*, %struct.aggregator** %3, align 8
  %18 = icmp ne %struct.aggregator* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = load %struct.aggregator*, %struct.aggregator** %3, align 8
  %21 = call i64 @__agg_active_ports(%struct.aggregator* %20)
  %22 = load %struct.bonding*, %struct.bonding** %2, align 8
  %23 = getelementptr inbounds %struct.bonding, %struct.bonding* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load %struct.bonding*, %struct.bonding** %2, align 8
  %29 = getelementptr inbounds %struct.bonding, %struct.bonding* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @netif_carrier_ok(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.bonding*, %struct.bonding** %2, align 8
  %35 = getelementptr inbounds %struct.bonding, %struct.bonding* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netif_carrier_off(i32 %36)
  br label %65

38:                                               ; preds = %27
  br label %51

39:                                               ; preds = %19
  %40 = load %struct.bonding*, %struct.bonding** %2, align 8
  %41 = getelementptr inbounds %struct.bonding, %struct.bonding* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @netif_carrier_ok(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.bonding*, %struct.bonding** %2, align 8
  %47 = getelementptr inbounds %struct.bonding, %struct.bonding* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @netif_carrier_on(i32 %48)
  br label %65

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %38
  br label %64

52:                                               ; preds = %12
  %53 = load %struct.bonding*, %struct.bonding** %2, align 8
  %54 = getelementptr inbounds %struct.bonding, %struct.bonding* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @netif_carrier_ok(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.bonding*, %struct.bonding** %2, align 8
  %60 = getelementptr inbounds %struct.bonding, %struct.bonding* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @netif_carrier_off(i32 %61)
  br label %63

63:                                               ; preds = %58, %52
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %45, %33, %11
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.slave* @bond_first_slave_rcu(%struct.bonding*) #1

declare dso_local %struct.aggregator* @__get_active_agg(i32*) #1

declare dso_local %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave*) #1

declare dso_local i64 @__agg_active_ports(%struct.aggregator*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
