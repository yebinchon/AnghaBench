; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_should_notify_peers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_should_notify_peers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.slave = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"bond_should_notify_peers: slave %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@__LINK_STATE_LINKWATCH_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*)* @bond_should_notify_peers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_should_notify_peers(%struct.bonding* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.bonding*, %struct.bonding** %3, align 8
  %7 = getelementptr inbounds %struct.bonding, %struct.bonding* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.slave* @rcu_dereference(i32 %8)
  store %struct.slave* %9, %struct.slave** %4, align 8
  %10 = call i32 (...) @rcu_read_unlock()
  %11 = load %struct.bonding*, %struct.bonding** %3, align 8
  %12 = getelementptr inbounds %struct.bonding, %struct.bonding* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.slave*, %struct.slave** %4, align 8
  %15 = icmp ne %struct.slave* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.slave*, %struct.slave** %4, align 8
  %18 = getelementptr inbounds %struct.slave, %struct.slave* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i8* [ %21, %16 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %22 ]
  %25 = call i32 @netdev_dbg(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.slave*, %struct.slave** %4, align 8
  %27 = icmp ne %struct.slave* %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load %struct.bonding*, %struct.bonding** %3, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.bonding*, %struct.bonding** %3, align 8
  %35 = getelementptr inbounds %struct.bonding, %struct.bonding* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bonding*, %struct.bonding** %3, align 8
  %38 = getelementptr inbounds %struct.bonding, %struct.bonding* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @max(i32 1, i32 %40)
  %42 = srem i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %33
  %45 = load %struct.bonding*, %struct.bonding** %3, align 8
  %46 = getelementptr inbounds %struct.bonding, %struct.bonding* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netif_carrier_ok(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* @__LINK_STATE_LINKWATCH_PENDING, align 4
  %52 = load %struct.slave*, %struct.slave** %4, align 8
  %53 = getelementptr inbounds %struct.slave, %struct.slave* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i64 @test_bit(i32 %51, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %44, %33, %28, %23
  store i32 0, i32* %2, align 4
  br label %60

59:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.slave* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
