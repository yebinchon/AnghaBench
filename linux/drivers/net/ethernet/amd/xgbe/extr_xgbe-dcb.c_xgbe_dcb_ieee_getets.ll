; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dcb.c_xgbe_dcb_ieee_getets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dcb.c_xgbe_dcb_ieee_getets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32, i32, i32, i32, i32 }
%struct.xgbe_prv_data = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @xgbe_dcb_ieee_getets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_dcb_ieee_getets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee_ets*, align 8
  %5 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %6)
  store %struct.xgbe_prv_data* %7, %struct.xgbe_prv_data** %5, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %13 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %25 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %27 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32 %28, i32 %33, i32 4)
  %35 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %36 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memcpy(i32 %37, i32 %42, i32 4)
  %44 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %45 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %46, i32 %51, i32 4)
  br label %53

53:                                               ; preds = %18, %2
  ret i32 0
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
