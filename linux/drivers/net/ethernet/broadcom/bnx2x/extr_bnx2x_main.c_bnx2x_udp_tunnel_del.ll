; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_udp_tunnel_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_udp_tunnel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32, i32 }
%struct.bnx2x = type { i32 }

@BNX2X_UDP_PORT_VXLAN = common dso_local global i32 0, align 4
@BNX2X_UDP_PORT_GENEVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @bnx2x_udp_tunnel_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_udp_tunnel_del(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %5, align 8
  %9 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %10 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohs(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %14 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %26 [
    i32 128, label %16
    i32 129, label %21
  ]

16:                                               ; preds = %2
  %17 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BNX2X_UDP_PORT_VXLAN, align 4
  %20 = call i32 @__bnx2x_del_udp_port(%struct.bnx2x* %17, i32 %18, i32 %19)
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BNX2X_UDP_PORT_GENEVE, align 4
  %25 = call i32 @__bnx2x_del_udp_port(%struct.bnx2x* %22, i32 %23, i32 %24)
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %21, %16
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @__bnx2x_del_udp_port(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
