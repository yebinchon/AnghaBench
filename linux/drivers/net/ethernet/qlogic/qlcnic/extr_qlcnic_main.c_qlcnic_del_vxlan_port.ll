; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_del_vxlan_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_del_vxlan_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i64, i32 }
%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, i32 }

@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i64 0, align 8
@QLCNIC_DEL_VXLAN_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @qlcnic_del_vxlan_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_del_vxlan_port(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.qlcnic_adapter* %8, %struct.qlcnic_adapter** %5, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 1
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  store %struct.qlcnic_hardware_context* %11, %struct.qlcnic_hardware_context** %6, align 8
  %12 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %13 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UDP_TUNNEL_TYPE_VXLAN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %20 = call i32 @qlcnic_encap_rx_offload(%struct.qlcnic_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %32 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ntohs(i32 %33)
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %22, %18
  br label %52

37:                                               ; preds = %27
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %43 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @QLCNIC_DEL_VXLAN_PORT, align 4
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %17, %36, %46, %37
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qlcnic_encap_rx_offload(%struct.qlcnic_adapter*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
