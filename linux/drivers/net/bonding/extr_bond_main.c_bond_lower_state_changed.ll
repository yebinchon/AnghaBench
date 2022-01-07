; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_lower_state_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_lower_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i64, i32 }
%struct.netdev_lag_lower_state_info = type { i32, i32 }

@BOND_LINK_UP = common dso_local global i64 0, align 8
@BOND_LINK_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_lower_state_changed(%struct.slave* %0) #0 {
  %2 = alloca %struct.slave*, align 8
  %3 = alloca %struct.netdev_lag_lower_state_info, align 4
  store %struct.slave* %0, %struct.slave** %2, align 8
  %4 = load %struct.slave*, %struct.slave** %2, align 8
  %5 = getelementptr inbounds %struct.slave, %struct.slave* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BOND_LINK_UP, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.slave*, %struct.slave** %2, align 8
  %11 = getelementptr inbounds %struct.slave, %struct.slave* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BOND_LINK_FAIL, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ true, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.slave*, %struct.slave** %2, align 8
  %20 = call i32 @bond_is_active_slave(%struct.slave* %19)
  %21 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %3, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.slave*, %struct.slave** %2, align 8
  %23 = getelementptr inbounds %struct.slave, %struct.slave* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_lower_state_changed(i32 %24, %struct.netdev_lag_lower_state_info* %3)
  ret void
}

declare dso_local i32 @bond_is_active_slave(%struct.slave*) #1

declare dso_local i32 @netdev_lower_state_changed(i32, %struct.netdev_lag_lower_state_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
