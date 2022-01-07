; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_getets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_getets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32, i32, i32, i32, i32, i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_4__, %struct.ieee_ets* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @ixgbe_dcbnl_ieee_getets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcbnl_ieee_getets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ieee_ets*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %6, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 1
  %12 = load %struct.ieee_ets*, %struct.ieee_ets** %11, align 8
  store %struct.ieee_ets* %12, %struct.ieee_ets** %7, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %19 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %21 = icmp ne %struct.ieee_ets* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %25 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %28 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %30 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %33 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 4)
  %36 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %37 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %40 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %38, i32 %41, i32 4)
  %43 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %44 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %47 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %45, i32 %48, i32 4)
  %50 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %51 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %54 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %52, i32 %55, i32 4)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %23, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
