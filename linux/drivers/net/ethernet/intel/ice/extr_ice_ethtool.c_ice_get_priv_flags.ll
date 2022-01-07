; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_priv_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_priv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_priv_flag = type { i32 }
%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.ice_pf* }
%struct.ice_pf = type { i32 }

@ICE_PRIV_FLAG_ARRAY_SIZE = common dso_local global i64 0, align 8
@ice_gstrings_priv_flags = common dso_local global %struct.ice_priv_flag* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @ice_get_priv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ice_get_priv_flags(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ice_netdev_priv*, align 8
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca %struct.ice_pf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ice_priv_flag*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.ice_netdev_priv* %10, %struct.ice_netdev_priv** %3, align 8
  %11 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %11, i32 0, i32 0
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  store %struct.ice_vsi* %13, %struct.ice_vsi** %4, align 8
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 0
  %16 = load %struct.ice_pf*, %struct.ice_pf** %15, align 8
  store %struct.ice_pf* %16, %struct.ice_pf** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %39, %1
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ICE_PRIV_FLAG_ARRAY_SIZE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load %struct.ice_priv_flag*, %struct.ice_priv_flag** @ice_gstrings_priv_flags, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.ice_priv_flag, %struct.ice_priv_flag* %22, i64 %23
  store %struct.ice_priv_flag* %24, %struct.ice_priv_flag** %8, align 8
  %25 = load %struct.ice_priv_flag*, %struct.ice_priv_flag** %8, align 8
  %26 = getelementptr inbounds %struct.ice_priv_flag, %struct.ice_priv_flag* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %29 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @test_bit(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @BIT(i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %33, %21
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %17

42:                                               ; preds = %17
  %43 = load i64, i64* %7, align 8
  ret i64 %43
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
