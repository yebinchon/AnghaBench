; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_change_hw_addr_on_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_change_hw_addr_on_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.slave = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, %struct.slave*)* @alb_change_hw_addr_on_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alb_change_hw_addr_on_detach(%struct.bonding* %0, %struct.slave* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.slave*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.slave* %1, %struct.slave** %4, align 8
  %8 = load %struct.slave*, %struct.slave** %4, align 8
  %9 = getelementptr inbounds %struct.slave, %struct.slave* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.slave*, %struct.slave** %4, align 8
  %12 = getelementptr inbounds %struct.slave, %struct.slave* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ether_addr_equal_64bits(i32 %10, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load %struct.slave*, %struct.slave** %4, align 8
  %21 = getelementptr inbounds %struct.slave, %struct.slave* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bonding*, %struct.bonding** %3, align 8
  %24 = getelementptr inbounds %struct.bonding, %struct.bonding* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ether_addr_equal_64bits(i32 %22, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.bonding*, %struct.bonding** %3, align 8
  %39 = load %struct.slave*, %struct.slave** %4, align 8
  %40 = getelementptr inbounds %struct.slave, %struct.slave* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.slave* @bond_slave_has_mac(%struct.bonding* %38, i32 %41)
  store %struct.slave* %42, %struct.slave** %7, align 8
  %43 = load %struct.slave*, %struct.slave** %7, align 8
  %44 = icmp ne %struct.slave* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.slave*, %struct.slave** %4, align 8
  %47 = load %struct.slave*, %struct.slave** %7, align 8
  %48 = call i32 @alb_swap_mac_addr(%struct.slave* %46, %struct.slave* %47)
  %49 = load %struct.bonding*, %struct.bonding** %3, align 8
  %50 = load %struct.slave*, %struct.slave** %4, align 8
  %51 = load %struct.slave*, %struct.slave** %7, align 8
  %52 = call i32 @alb_fasten_mac_swap(%struct.bonding* %49, %struct.slave* %50, %struct.slave* %51)
  br label %53

53:                                               ; preds = %45, %37
  br label %54

54:                                               ; preds = %53, %34, %2
  ret void
}

declare dso_local i32 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local %struct.slave* @bond_slave_has_mac(%struct.bonding*, i32) #1

declare dso_local i32 @alb_swap_mac_addr(%struct.slave*, %struct.slave*) #1

declare dso_local i32 @alb_fasten_mac_swap(%struct.bonding*, %struct.slave*, %struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
