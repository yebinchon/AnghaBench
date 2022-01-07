; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"changing MTU from %d to %d\0A\00", align 1
@__I40E_CLIENT_SERVICE_REQUESTED = common dso_local global i32 0, align 4
@__I40E_CLIENT_L2_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @i40e_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.i40e_netdev_priv* %11, %struct.i40e_netdev_priv** %6, align 8
  %12 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %13 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %12, i32 0, i32 0
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %13, align 8
  store %struct.i40e_vsi* %14, %struct.i40e_vsi** %7, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %8, align 8
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %19 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ETH_HLEN, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @ETH_FCS_LEN, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @VLAN_HLEN, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %31 = call i32 @i40e_max_xdp_frame_size(%struct.i40e_vsi* %30)
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %64

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @netdev_info(%struct.net_device* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = call i64 @netif_running(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %52 = call i32 @i40e_vsi_reinit_locked(%struct.i40e_vsi* %51)
  br label %53

53:                                               ; preds = %50, %37
  %54 = load i32, i32* @__I40E_CLIENT_SERVICE_REQUESTED, align 4
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_bit(i32 %54, i32 %57)
  %59 = load i32, i32* @__I40E_CLIENT_L2_CHANGE, align 4
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @set_bit(i32 %59, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %53, %33
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_max_xdp_frame_size(%struct.i40e_vsi*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @i40e_vsi_reinit_locked(%struct.i40e_vsi*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
