; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_udp_tunnel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_udp_tunnel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32, i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@I40E_MAX_PF_UDP_OFFLOAD_PORTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"port %d already offloaded\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"maximum number of offloaded UDP ports reached, not adding port %d\0A\00", align 1
@I40E_AQC_TUNNEL_TYPE_VXLAN = common dso_local global i32 0, align 4
@I40E_HW_GENEVE_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@I40E_AQC_TUNNEL_TYPE_NGE = common dso_local global i32 0, align 4
@I40E_UDP_PORT_INDEX_UNUSED = common dso_local global i32 0, align 4
@__I40E_UDP_FILTER_SYNC_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @i40e_udp_tunnel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_udp_tunnel_add(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.i40e_netdev_priv* %12, %struct.i40e_netdev_priv** %5, align 8
  %13 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %13, i32 0, i32 0
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  store %struct.i40e_vsi* %15, %struct.i40e_vsi** %6, align 8
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 0
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %7, align 8
  %19 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %20 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohs(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @i40e_get_udp_port_idx(%struct.i40e_pf* %23, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @I40E_MAX_PF_UDP_OFFLOAD_PORTS, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @netdev_info(%struct.net_device* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %98

33:                                               ; preds = %2
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %35 = call i64 @i40e_get_udp_port_idx(%struct.i40e_pf* %34, i32 0)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @I40E_MAX_PF_UDP_OFFLOAD_PORTS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @netdev_info(%struct.net_device* %40, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %98

43:                                               ; preds = %33
  %44 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %45 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %71 [
    i32 128, label %47
    i32 129, label %55
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* @I40E_AQC_TUNNEL_TYPE_VXLAN, align 4
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %48, i32* %54, align 4
  br label %72

55:                                               ; preds = %43
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I40E_HW_GENEVE_OFFLOAD_CAPABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %98

63:                                               ; preds = %55
  %64 = load i32, i32* @I40E_AQC_TUNNEL_TYPE_NGE, align 4
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %64, i32* %70, align 4
  br label %72

71:                                               ; preds = %43
  br label %98

72:                                               ; preds = %63, %47
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %73, i32* %79, align 4
  %80 = load i32, i32* @I40E_UDP_PORT_INDEX_UNUSED, align 4
  %81 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %82 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 4
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @BIT_ULL(i64 %87)
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @__I40E_UDP_FILTER_SYNC_PENDING, align 4
  %94 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %95 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @set_bit(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %72, %71, %62, %39, %29
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @i40e_get_udp_port_idx(%struct.i40e_pf*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
