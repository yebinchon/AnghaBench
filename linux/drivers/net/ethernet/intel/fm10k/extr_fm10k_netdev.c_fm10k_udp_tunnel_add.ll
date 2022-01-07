; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_udp_tunnel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_udp_tunnel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i32 }
%struct.fm10k_intfc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@fm10k_mac_pf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @fm10k_udp_tunnel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_udp_tunnel_add(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.fm10k_intfc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %6)
  store %struct.fm10k_intfc* %7, %struct.fm10k_intfc** %5, align 8
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %9 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @fm10k_mac_pf, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %18 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %30 [
    i32 128, label %20
    i32 129, label %25
  ]

20:                                               ; preds = %16
  %21 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %22 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %21, i32 0, i32 1
  %23 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %24 = call i32 @fm10k_insert_tunnel_port(i32* %22, %struct.udp_tunnel_info* %23)
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %27 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %26, i32 0, i32 0
  %28 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %29 = call i32 @fm10k_insert_tunnel_port(i32* %27, %struct.udp_tunnel_info* %28)
  br label %31

30:                                               ; preds = %16
  br label %34

31:                                               ; preds = %25, %20
  %32 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %33 = call i32 @fm10k_restore_udp_port_info(%struct.fm10k_intfc* %32)
  br label %34

34:                                               ; preds = %31, %30, %15
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fm10k_insert_tunnel_port(i32*, %struct.udp_tunnel_info*) #1

declare dso_local i32 @fm10k_restore_udp_port_info(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
