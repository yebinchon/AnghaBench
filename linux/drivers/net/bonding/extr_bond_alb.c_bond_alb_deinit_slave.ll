; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_deinit_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_deinit_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.slave = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_alb_deinit_slave(%struct.bonding* %0, %struct.slave* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.slave* %1, %struct.slave** %4, align 8
  %5 = load %struct.bonding*, %struct.bonding** %3, align 8
  %6 = call i64 @bond_has_slaves(%struct.bonding* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.bonding*, %struct.bonding** %3, align 8
  %10 = load %struct.slave*, %struct.slave** %4, align 8
  %11 = call i32 @alb_change_hw_addr_on_detach(%struct.bonding* %9, %struct.slave* %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load %struct.bonding*, %struct.bonding** %3, align 8
  %14 = load %struct.slave*, %struct.slave** %4, align 8
  %15 = call i32 @tlb_clear_slave(%struct.bonding* %13, %struct.slave* %14, i32 0)
  %16 = load %struct.bonding*, %struct.bonding** %3, align 8
  %17 = getelementptr inbounds %struct.bonding, %struct.bonding* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load %struct.bonding*, %struct.bonding** %3, align 8
  %23 = getelementptr inbounds %struct.bonding, %struct.bonding* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.bonding*, %struct.bonding** %3, align 8
  %26 = load %struct.slave*, %struct.slave** %4, align 8
  %27 = call i32 @rlb_clear_slave(%struct.bonding* %25, %struct.slave* %26)
  br label %28

28:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @bond_has_slaves(%struct.bonding*) #1

declare dso_local i32 @alb_change_hw_addr_on_detach(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @tlb_clear_slave(%struct.bonding*, %struct.slave*, i32) #1

declare dso_local i32 @rlb_clear_slave(%struct.bonding*, %struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
