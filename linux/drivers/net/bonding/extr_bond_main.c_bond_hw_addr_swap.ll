; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_hw_addr_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_hw_addr_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.slave = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, %struct.slave*, %struct.slave*)* @bond_hw_addr_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_hw_addr_swap(%struct.bonding* %0, %struct.slave* %1, %struct.slave* %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  store %struct.slave* %2, %struct.slave** %6, align 8
  %7 = load %struct.slave*, %struct.slave** %6, align 8
  %8 = icmp ne %struct.slave* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %3
  %10 = load %struct.bonding*, %struct.bonding** %4, align 8
  %11 = getelementptr inbounds %struct.bonding, %struct.bonding* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.slave*, %struct.slave** %6, align 8
  %20 = getelementptr inbounds %struct.slave, %struct.slave* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_set_promiscuity(i32 %21, i32 -1)
  br label %23

23:                                               ; preds = %18, %9
  %24 = load %struct.bonding*, %struct.bonding** %4, align 8
  %25 = getelementptr inbounds %struct.bonding, %struct.bonding* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_ALLMULTI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.slave*, %struct.slave** %6, align 8
  %34 = getelementptr inbounds %struct.slave, %struct.slave* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_set_allmulti(i32 %35, i32 -1)
  br label %37

37:                                               ; preds = %32, %23
  %38 = load %struct.bonding*, %struct.bonding** %4, align 8
  %39 = getelementptr inbounds %struct.bonding, %struct.bonding* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load %struct.slave*, %struct.slave** %6, align 8
  %42 = getelementptr inbounds %struct.slave, %struct.slave* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bond_hw_addr_flush(%struct.TYPE_6__* %40, i32 %43)
  br label %45

45:                                               ; preds = %37, %3
  %46 = load %struct.slave*, %struct.slave** %5, align 8
  %47 = icmp ne %struct.slave* %46, null
  br i1 %47, label %48, label %99

48:                                               ; preds = %45
  %49 = load %struct.bonding*, %struct.bonding** %4, align 8
  %50 = getelementptr inbounds %struct.bonding, %struct.bonding* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_PROMISC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.slave*, %struct.slave** %5, align 8
  %59 = getelementptr inbounds %struct.slave, %struct.slave* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_set_promiscuity(i32 %60, i32 1)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load %struct.bonding*, %struct.bonding** %4, align 8
  %64 = getelementptr inbounds %struct.bonding, %struct.bonding* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_ALLMULTI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.slave*, %struct.slave** %5, align 8
  %73 = getelementptr inbounds %struct.slave, %struct.slave* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_set_allmulti(i32 %74, i32 1)
  br label %76

76:                                               ; preds = %71, %62
  %77 = load %struct.bonding*, %struct.bonding** %4, align 8
  %78 = getelementptr inbounds %struct.bonding, %struct.bonding* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i32 @netif_addr_lock_bh(%struct.TYPE_6__* %79)
  %81 = load %struct.slave*, %struct.slave** %5, align 8
  %82 = getelementptr inbounds %struct.slave, %struct.slave* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bonding*, %struct.bonding** %4, align 8
  %85 = getelementptr inbounds %struct.bonding, %struct.bonding* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @dev_uc_sync(i32 %83, %struct.TYPE_6__* %86)
  %88 = load %struct.slave*, %struct.slave** %5, align 8
  %89 = getelementptr inbounds %struct.slave, %struct.slave* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bonding*, %struct.bonding** %4, align 8
  %92 = getelementptr inbounds %struct.bonding, %struct.bonding* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @dev_mc_sync(i32 %90, %struct.TYPE_6__* %93)
  %95 = load %struct.bonding*, %struct.bonding** %4, align 8
  %96 = getelementptr inbounds %struct.bonding, %struct.bonding* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = call i32 @netif_addr_unlock_bh(%struct.TYPE_6__* %97)
  br label %99

99:                                               ; preds = %76, %45
  ret void
}

declare dso_local i32 @dev_set_promiscuity(i32, i32) #1

declare dso_local i32 @dev_set_allmulti(i32, i32) #1

declare dso_local i32 @bond_hw_addr_flush(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @netif_addr_lock_bh(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_uc_sync(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_mc_sync(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
