; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_init_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_bond_alb_init_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.slave = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@BOND_TLB_REBALANCE_TICKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_alb_init_slave(%struct.bonding* %0, %struct.slave* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  %7 = load %struct.slave*, %struct.slave** %5, align 8
  %8 = load %struct.slave*, %struct.slave** %5, align 8
  %9 = getelementptr inbounds %struct.slave, %struct.slave* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.slave*, %struct.slave** %5, align 8
  %12 = getelementptr inbounds %struct.slave, %struct.slave* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @alb_set_slave_mac_addr(%struct.slave* %7, i32 %10, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.bonding*, %struct.bonding** %4, align 8
  %23 = load %struct.slave*, %struct.slave** %5, align 8
  %24 = call i32 @alb_handle_addr_collision_on_attach(%struct.bonding* %22, %struct.slave* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %46

29:                                               ; preds = %21
  %30 = load %struct.slave*, %struct.slave** %5, align 8
  %31 = call i32 @tlb_init_slave(%struct.slave* %30)
  %32 = load i32, i32* @BOND_TLB_REBALANCE_TICKS, align 4
  %33 = load %struct.bonding*, %struct.bonding** %4, align 8
  %34 = getelementptr inbounds %struct.bonding, %struct.bonding* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.bonding*, %struct.bonding** %4, align 8
  %37 = getelementptr inbounds %struct.bonding, %struct.bonding* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.bonding*, %struct.bonding** %4, align 8
  %43 = getelementptr inbounds %struct.bonding, %struct.bonding* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %29
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %27, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @alb_set_slave_mac_addr(%struct.slave*, i32, i32) #1

declare dso_local i32 @alb_handle_addr_collision_on_attach(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @tlb_init_slave(%struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
