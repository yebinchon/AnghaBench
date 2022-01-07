; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_udp_tunnel_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_udp_tunnel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32, i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@I40E_MAX_PF_UDP_OFFLOAD_PORTS = common dso_local global i64 0, align 8
@I40E_AQC_TUNNEL_TYPE_VXLAN = common dso_local global i32 0, align 4
@I40E_AQC_TUNNEL_TYPE_NGE = common dso_local global i32 0, align 4
@__I40E_UDP_FILTER_SYNC_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"UDP port %d was not found, not deleting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @i40e_udp_tunnel_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_udp_tunnel_del(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.i40e_netdev_priv* %11, %struct.i40e_netdev_priv** %5, align 8
  %12 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %12, i32 0, i32 0
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %13, align 8
  store %struct.i40e_vsi* %14, %struct.i40e_vsi** %6, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %7, align 8
  %18 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %19 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @i40e_get_udp_port_idx(%struct.i40e_pf* %22, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @I40E_MAX_PF_UDP_OFFLOAD_PORTS, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %76

29:                                               ; preds = %2
  %30 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %31 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %57 [
    i32 128, label %33
    i32 129, label %45
  ]

33:                                               ; preds = %29
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I40E_AQC_TUNNEL_TYPE_VXLAN, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %76

44:                                               ; preds = %33
  br label %58

45:                                               ; preds = %29
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @I40E_AQC_TUNNEL_TYPE_NGE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %76

56:                                               ; preds = %45
  br label %58

57:                                               ; preds = %29
  br label %76

58:                                               ; preds = %56, %44
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @BIT_ULL(i64 %65)
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @__I40E_UDP_FILTER_SYNC_PENDING, align 4
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @set_bit(i32 %71, i32 %74)
  br label %80

76:                                               ; preds = %57, %55, %43, %28
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @netdev_warn(%struct.net_device* %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %58
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @i40e_get_udp_port_idx(%struct.i40e_pf*, i32) #1

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
