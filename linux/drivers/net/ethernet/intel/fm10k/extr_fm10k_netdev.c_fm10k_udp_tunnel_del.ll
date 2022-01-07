; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_udp_tunnel_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_udp_tunnel_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32 }
%struct.fm10k_intfc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.fm10k_udp_port = type { i32 }

@fm10k_mac_pf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @fm10k_udp_tunnel_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_udp_tunnel_del(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.fm10k_intfc*, align 8
  %6 = alloca %struct.fm10k_udp_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %7)
  store %struct.fm10k_intfc* %8, %struct.fm10k_intfc** %5, align 8
  store %struct.fm10k_udp_port* null, %struct.fm10k_udp_port** %6, align 8
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @fm10k_mac_pf, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %19 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %31 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %17
  %22 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %23 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %22, i32 0, i32 1
  %24 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %25 = call %struct.fm10k_udp_port* @fm10k_remove_tunnel_port(i32* %23, %struct.udp_tunnel_info* %24)
  store %struct.fm10k_udp_port* %25, %struct.fm10k_udp_port** %6, align 8
  br label %32

26:                                               ; preds = %17
  %27 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %28 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %27, i32 0, i32 0
  %29 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %30 = call %struct.fm10k_udp_port* @fm10k_remove_tunnel_port(i32* %28, %struct.udp_tunnel_info* %29)
  store %struct.fm10k_udp_port* %30, %struct.fm10k_udp_port** %6, align 8
  br label %32

31:                                               ; preds = %17
  br label %37

32:                                               ; preds = %26, %21
  %33 = load %struct.fm10k_udp_port*, %struct.fm10k_udp_port** %6, align 8
  %34 = call i32 @kfree(%struct.fm10k_udp_port* %33)
  %35 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %36 = call i32 @fm10k_restore_udp_port_info(%struct.fm10k_intfc* %35)
  br label %37

37:                                               ; preds = %32, %31, %16
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.fm10k_udp_port* @fm10k_remove_tunnel_port(i32*, %struct.udp_tunnel_info*) #1

declare dso_local i32 @kfree(%struct.fm10k_udp_port*) #1

declare dso_local i32 @fm10k_restore_udp_port_info(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
