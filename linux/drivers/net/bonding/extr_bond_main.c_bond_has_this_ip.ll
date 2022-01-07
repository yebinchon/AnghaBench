; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_has_this_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_has_this_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }

@bond_upper_dev_walk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bonding*, i64)* @bond_has_this_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_has_this_ip(%struct.bonding* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.bonding*, %struct.bonding** %4, align 8
  %9 = getelementptr inbounds %struct.bonding, %struct.bonding* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @bond_confirm_addr(i32 %10, i32 0, i64 %11)
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.bonding*, %struct.bonding** %4, align 8
  %18 = getelementptr inbounds %struct.bonding, %struct.bonding* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @bond_upper_dev_walk, align 4
  %21 = call i64 @netdev_walk_all_upper_dev_rcu(i32 %19, i32 %20, i64* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @bond_confirm_addr(i32, i32, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @netdev_walk_all_upper_dev_rcu(i32, i32, i64*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
