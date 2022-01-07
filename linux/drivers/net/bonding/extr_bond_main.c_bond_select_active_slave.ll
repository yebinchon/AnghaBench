; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_select_active_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_select_active_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, i32 }
%struct.slave = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"active interface up!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"now running without any active interface!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_select_active_slave(%struct.bonding* %0) #0 {
  %2 = alloca %struct.bonding*, align 8
  %3 = alloca %struct.slave*, align 8
  %4 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %2, align 8
  %5 = call i32 (...) @ASSERT_RTNL()
  %6 = load %struct.bonding*, %struct.bonding** %2, align 8
  %7 = call %struct.slave* @bond_find_best_slave(%struct.bonding* %6)
  store %struct.slave* %7, %struct.slave** %3, align 8
  %8 = load %struct.slave*, %struct.slave** %3, align 8
  %9 = load %struct.bonding*, %struct.bonding** %2, align 8
  %10 = getelementptr inbounds %struct.bonding, %struct.bonding* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.slave* @rtnl_dereference(i32 %11)
  %13 = icmp ne %struct.slave* %8, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load %struct.bonding*, %struct.bonding** %2, align 8
  %16 = load %struct.slave*, %struct.slave** %3, align 8
  %17 = call i32 @bond_change_active_slave(%struct.bonding* %15, %struct.slave* %16)
  %18 = load %struct.bonding*, %struct.bonding** %2, align 8
  %19 = call i32 @bond_set_carrier(%struct.bonding* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %40

23:                                               ; preds = %14
  %24 = load %struct.bonding*, %struct.bonding** %2, align 8
  %25 = getelementptr inbounds %struct.bonding, %struct.bonding* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @netif_carrier_ok(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.bonding*, %struct.bonding** %2, align 8
  %31 = getelementptr inbounds %struct.bonding, %struct.bonding* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netdev_info(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %39

34:                                               ; preds = %23
  %35 = load %struct.bonding*, %struct.bonding** %2, align 8
  %36 = getelementptr inbounds %struct.bonding, %struct.bonding* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netdev_info(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %22, %39, %1
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.slave* @bond_find_best_slave(%struct.bonding*) #1

declare dso_local %struct.slave* @rtnl_dereference(i32) #1

declare dso_local i32 @bond_change_active_slave(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @bond_set_carrier(%struct.bonding*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
