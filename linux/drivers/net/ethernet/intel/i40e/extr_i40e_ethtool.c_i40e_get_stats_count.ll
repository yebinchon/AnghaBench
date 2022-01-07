; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_stats_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_stats_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, %struct.TYPE_2__, %struct.i40e_vsi** }
%struct.TYPE_2__ = type { i32 }

@I40E_PF_STATS_LEN = common dso_local global i32 0, align 4
@I40E_VSI_STATS_LEN = common dso_local global i32 0, align 4
@I40E_QUEUE_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @i40e_get_stats_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_stats_count(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i40e_netdev_priv*, align 8
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.i40e_netdev_priv* %8, %struct.i40e_netdev_priv** %3, align 8
  %9 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %9, i32 0, i32 0
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  store %struct.i40e_vsi* %11, %struct.i40e_vsi** %4, align 8
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 0
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %5, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 2
  %18 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %17, align 8
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %18, i64 %21
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %22, align 8
  %24 = icmp eq %struct.i40e_vsi* %15, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @I40E_PF_STATS_LEN, align 4
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %25, %1
  %34 = load i32, i32* @I40E_VSI_STATS_LEN, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* @I40E_QUEUE_STATS_LEN, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
