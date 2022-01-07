; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_free_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_free_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i32 }
%struct.bonding = type { i32 }

@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slave*)* @bond_free_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_free_slave(%struct.slave* %0) #0 {
  %2 = alloca %struct.slave*, align 8
  %3 = alloca %struct.bonding*, align 8
  store %struct.slave* %0, %struct.slave** %2, align 8
  %4 = load %struct.slave*, %struct.slave** %2, align 8
  %5 = call %struct.bonding* @bond_get_bond_by_slave(%struct.slave* %4)
  store %struct.bonding* %5, %struct.bonding** %3, align 8
  %6 = load %struct.slave*, %struct.slave** %2, align 8
  %7 = getelementptr inbounds %struct.slave, %struct.slave* %6, i32 0, i32 0
  %8 = call i32 @cancel_delayed_work_sync(i32* %7)
  %9 = load %struct.bonding*, %struct.bonding** %3, align 8
  %10 = call i64 @BOND_MODE(%struct.bonding* %9)
  %11 = load i64, i64* @BOND_MODE_8023AD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.slave*, %struct.slave** %2, align 8
  %15 = call %struct.slave* @SLAVE_AD_INFO(%struct.slave* %14)
  %16 = call i32 @kfree(%struct.slave* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.slave*, %struct.slave** %2, align 8
  %19 = call i32 @kfree(%struct.slave* %18)
  ret void
}

declare dso_local %struct.bonding* @bond_get_bond_by_slave(%struct.slave*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @BOND_MODE(%struct.bonding*) #1

declare dso_local i32 @kfree(%struct.slave*) #1

declare dso_local %struct.slave* @SLAVE_AD_INFO(%struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
