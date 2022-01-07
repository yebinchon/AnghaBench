; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_procfs.c_bond_remove_proc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_procfs.c_bond_remove_proc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32*, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bond_net = type { i64 }

@bond_net_id = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_remove_proc_entry(%struct.bonding* %0) #0 {
  %2 = alloca %struct.bonding*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bond_net*, align 8
  store %struct.bonding* %0, %struct.bonding** %2, align 8
  %5 = load %struct.bonding*, %struct.bonding** %2, align 8
  %6 = getelementptr inbounds %struct.bonding, %struct.bonding* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @dev_net(%struct.net_device* %8)
  %10 = load i32, i32* @bond_net_id, align 4
  %11 = call %struct.bond_net* @net_generic(i32 %9, i32 %10)
  store %struct.bond_net* %11, %struct.bond_net** %4, align 8
  %12 = load %struct.bond_net*, %struct.bond_net** %4, align 8
  %13 = getelementptr inbounds %struct.bond_net, %struct.bond_net* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load %struct.bonding*, %struct.bonding** %2, align 8
  %18 = getelementptr inbounds %struct.bonding, %struct.bonding* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.bonding*, %struct.bonding** %2, align 8
  %23 = getelementptr inbounds %struct.bonding, %struct.bonding* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bond_net*, %struct.bond_net** %4, align 8
  %26 = getelementptr inbounds %struct.bond_net, %struct.bond_net* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @remove_proc_entry(i32 %24, i64 %27)
  %29 = load %struct.bonding*, %struct.bonding** %2, align 8
  %30 = getelementptr inbounds %struct.bonding, %struct.bonding* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IFNAMSIZ, align 4
  %33 = call i32 @memset(i32 %31, i32 0, i32 %32)
  %34 = load %struct.bonding*, %struct.bonding** %2, align 8
  %35 = getelementptr inbounds %struct.bonding, %struct.bonding* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %21, %16, %1
  ret void
}

declare dso_local %struct.bond_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @remove_proc_entry(i32, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
