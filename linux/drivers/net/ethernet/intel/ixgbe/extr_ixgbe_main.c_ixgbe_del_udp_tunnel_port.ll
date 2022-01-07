; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_del_udp_tunnel_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_del_udp_tunnel_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32, i64, i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"VXLAN port %d not found\0A\00", align 1
@IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK = common dso_local global i32 0, align 4
@IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"GENEVE port %d not found\0A\00", align 1
@IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK = common dso_local global i32 0, align 4
@IXGBE_FLAG2_UDP_TUN_REREG_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @ixgbe_del_udp_tunnel_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_del_udp_tunnel_port(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %5, align 8
  %9 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %10 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 128
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %15 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 129
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %90

19:                                               ; preds = %13, %2
  %20 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %21 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %90

26:                                               ; preds = %19
  %27 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %28 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %80 [
    i32 128, label %30
    i32 129, label %55
  ]

30:                                               ; preds = %26
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %90

38:                                               ; preds = %30
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %43 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %49 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ntohs(i32 %50)
  %52 = call i32 @netdev_info(%struct.net_device* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %90

53:                                               ; preds = %38
  %54 = load i32, i32* @IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK, align 4
  store i32 %54, i32* %6, align 4
  br label %81

55:                                               ; preds = %26
  %56 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %90

63:                                               ; preds = %55
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %65 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %68 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %74 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ntohs(i32 %75)
  %77 = call i32 @netdev_info(%struct.net_device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %90

78:                                               ; preds = %63
  %79 = load i32, i32* @IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK, align 4
  store i32 %79, i32* %6, align 4
  br label %81

80:                                               ; preds = %26
  br label %90

81:                                               ; preds = %78, %53
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @ixgbe_clear_udp_tunnel_port(%struct.ixgbe_adapter* %82, i32 %83)
  %85 = load i32, i32* @IXGBE_FLAG2_UDP_TUN_REREG_NEEDED, align 4
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %87 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %81, %80, %71, %62, %46, %37, %25, %18
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ixgbe_clear_udp_tunnel_port(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
