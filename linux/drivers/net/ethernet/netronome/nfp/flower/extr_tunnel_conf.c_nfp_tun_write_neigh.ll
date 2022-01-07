; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tun_write_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_tun_write_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { i32 }
%struct.flowi4 = type { i32, i32 }
%struct.neighbour = type { i32, i64 }
%struct.nfp_tun_neigh = type { i32, i32, i32, i32, i32 }

@NUD_VALID = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_TYPE_TUN_NEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.nfp_app*, %struct.flowi4*, %struct.neighbour*, i32)* @nfp_tun_write_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_tun_write_neigh(%struct.net_device* %0, %struct.nfp_app* %1, %struct.flowi4* %2, %struct.neighbour* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nfp_app*, align 8
  %8 = alloca %struct.flowi4*, align 8
  %9 = alloca %struct.neighbour*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfp_tun_neigh, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nfp_app* %1, %struct.nfp_app** %7, align 8
  store %struct.flowi4* %2, %struct.flowi4** %8, align 8
  store %struct.neighbour* %3, %struct.neighbour** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i32 @nfp_flower_get_port_id_from_netdev(%struct.nfp_app* %13, %struct.net_device* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %72

19:                                               ; preds = %5
  %20 = call i32 @memset(%struct.nfp_tun_neigh* %11, i32 0, i32 20)
  %21 = load %struct.flowi4*, %struct.flowi4** %8, align 8
  %22 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.nfp_tun_neigh, %struct.nfp_tun_neigh* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NUD_VALID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %33 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31, %19
  %37 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %38 = getelementptr inbounds %struct.nfp_tun_neigh, %struct.nfp_tun_neigh* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nfp_tun_del_route_from_cache(%struct.nfp_app* %37, i32 %39)
  %41 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %42 = call i32 @neigh_event_send(%struct.neighbour* %41, i32* null)
  br label %66

43:                                               ; preds = %31
  %44 = load %struct.flowi4*, %struct.flowi4** %8, align 8
  %45 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.nfp_tun_neigh, %struct.nfp_tun_neigh* %11, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.nfp_tun_neigh, %struct.nfp_tun_neigh* %11, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ether_addr_copy(i32 %49, i32 %52)
  %54 = getelementptr inbounds %struct.nfp_tun_neigh, %struct.nfp_tun_neigh* %11, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.neighbour*, %struct.neighbour** %9, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i32 @neigh_ha_snapshot(i32 %55, %struct.neighbour* %56, %struct.net_device* %57)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @cpu_to_be32(i32 %59)
  %61 = getelementptr inbounds %struct.nfp_tun_neigh, %struct.nfp_tun_neigh* %11, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %63 = getelementptr inbounds %struct.nfp_tun_neigh, %struct.nfp_tun_neigh* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nfp_tun_add_route_to_cache(%struct.nfp_app* %62, i32 %64)
  br label %66

66:                                               ; preds = %43, %36
  %67 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %68 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_TUN_NEIGH, align 4
  %69 = bitcast %struct.nfp_tun_neigh* %11 to i8*
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app* %67, i32 %68, i32 20, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %18
  ret void
}

declare dso_local i32 @nfp_flower_get_port_id_from_netdev(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @memset(%struct.nfp_tun_neigh*, i32, i32) #1

declare dso_local i32 @nfp_tun_del_route_from_cache(%struct.nfp_app*, i32) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @neigh_ha_snapshot(i32, %struct.neighbour*, %struct.net_device*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_tun_add_route_to_cache(%struct.nfp_app*, i32) #1

declare dso_local i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
