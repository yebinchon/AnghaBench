; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_neigh_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_neigh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.bonding = type { i32 }
%struct.net_device_ops = type { i32 (%struct.TYPE_4__*, %struct.neigh_parms*)* }
%struct.TYPE_4__ = type { %struct.net_device_ops* }
%struct.neigh_parms = type opaque
%struct.neigh_parms.0 = type { i32 (%struct.neighbour*)*, i32* }
%struct.slave = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*)* @bond_neigh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_neigh_init(%struct.neighbour* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.net_device_ops*, align 8
  %6 = alloca %struct.neigh_parms.0, align 8
  %7 = alloca %struct.slave*, align 8
  %8 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  %9 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.bonding* @netdev_priv(i32 %11)
  store %struct.bonding* %12, %struct.bonding** %4, align 8
  %13 = load %struct.bonding*, %struct.bonding** %4, align 8
  %14 = call %struct.slave* @bond_first_slave(%struct.bonding* %13)
  store %struct.slave* %14, %struct.slave** %7, align 8
  %15 = load %struct.slave*, %struct.slave** %7, align 8
  %16 = icmp ne %struct.slave* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.slave*, %struct.slave** %7, align 8
  %20 = getelementptr inbounds %struct.slave, %struct.slave* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.net_device_ops*, %struct.net_device_ops** %22, align 8
  store %struct.net_device_ops* %23, %struct.net_device_ops** %5, align 8
  %24 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %25 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, %struct.neigh_parms*)*, i32 (%struct.TYPE_4__*, %struct.neigh_parms*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_4__*, %struct.neigh_parms*)* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %60

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.neigh_parms.0, %struct.neigh_parms.0* %6, i32 0, i32 0
  store i32 (%struct.neighbour*)* null, i32 (%struct.neighbour*)** %30, align 8
  %31 = getelementptr inbounds %struct.neigh_parms.0, %struct.neigh_parms.0* %6, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %33 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*, %struct.neigh_parms*)*, i32 (%struct.TYPE_4__*, %struct.neigh_parms*)** %33, align 8
  %35 = load %struct.slave*, %struct.slave** %7, align 8
  %36 = getelementptr inbounds %struct.slave, %struct.slave* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = bitcast %struct.neigh_parms.0* %6 to %struct.neigh_parms*
  %39 = call i32 %34(%struct.TYPE_4__* %37, %struct.neigh_parms* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %60

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.neigh_parms.0, %struct.neigh_parms.0* %6, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %48 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32* %46, i32** %50, align 8
  %51 = getelementptr inbounds %struct.neigh_parms.0, %struct.neigh_parms.0* %6, i32 0, i32 0
  %52 = load i32 (%struct.neighbour*)*, i32 (%struct.neighbour*)** %51, align 8
  %53 = icmp ne i32 (%struct.neighbour*)* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %60

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.neigh_parms.0, %struct.neigh_parms.0* %6, i32 0, i32 0
  %57 = load i32 (%struct.neighbour*)*, i32 (%struct.neighbour*)** %56, align 8
  %58 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %59 = call i32 %57(%struct.neighbour* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %54, %42, %28, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.bonding* @netdev_priv(i32) #1

declare dso_local %struct.slave* @bond_first_slave(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
