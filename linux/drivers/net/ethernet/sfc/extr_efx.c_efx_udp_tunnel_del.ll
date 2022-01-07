; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_udp_tunnel_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_udp_tunnel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32, i32 }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, i32, i64)* }
%struct.efx_udp_tunnel = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @efx_udp_tunnel_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_udp_tunnel_del(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_udp_tunnel, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.efx_nic* %9, %struct.efx_nic** %5, align 8
  %10 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %11 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @efx_udp_tunnel_type_map(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %44

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %6, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %22 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.efx_nic*, i32, i64)*, i32 (%struct.efx_nic*, i32, i64)** %28, align 8
  %30 = icmp ne i32 (%struct.efx_nic*, i32, i64)* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %17
  %32 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.efx_nic*, i32, i64)*, i32 (%struct.efx_nic*, i32, i64)** %35, align 8
  %37 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %38 = bitcast %struct.efx_udp_tunnel* %6 to { i32, i64 }*
  %39 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %38, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 %36(%struct.efx_nic* %37, i32 %40, i64 %42)
  br label %44

44:                                               ; preds = %16, %31, %17
  ret void
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @efx_udp_tunnel_type_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
