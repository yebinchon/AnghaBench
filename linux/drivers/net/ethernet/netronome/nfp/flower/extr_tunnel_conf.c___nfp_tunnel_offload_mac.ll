; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c___nfp_tunnel_offload_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c___nfp_tunnel_offload_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_tun_mac_addr_offload = type { i32, i8*, i8*, i8* }

@NFP_TUN_MAC_OFFLOAD_DEL_FLAG = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_TYPE_TUN_MAC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32*, i32, i32)* @__nfp_tunnel_offload_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfp_tunnel_offload_mac(%struct.nfp_app* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_tun_mac_addr_offload, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.nfp_tun_mac_addr_offload* %9, i32 0, i32 32)
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* @NFP_TUN_MAC_OFFLOAD_DEL_FLAG, align 4
  %15 = call i8* @cpu_to_be16(i32 %14)
  %16 = getelementptr inbounds %struct.nfp_tun_mac_addr_offload, %struct.nfp_tun_mac_addr_offload* %9, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  br label %17

17:                                               ; preds = %13, %4
  %18 = call i8* @cpu_to_be16(i32 1)
  %19 = getelementptr inbounds %struct.nfp_tun_mac_addr_offload, %struct.nfp_tun_mac_addr_offload* %9, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @cpu_to_be16(i32 %20)
  %22 = getelementptr inbounds %struct.nfp_tun_mac_addr_offload, %struct.nfp_tun_mac_addr_offload* %9, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.nfp_tun_mac_addr_offload, %struct.nfp_tun_mac_addr_offload* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ether_addr_copy(i32 %24, i32* %25)
  %27 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %28 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_TUN_MAC, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app* %27, i32 %28, i32 32, %struct.nfp_tun_mac_addr_offload* %9, i32 %29)
  ret i32 %30
}

declare dso_local i32 @memset(%struct.nfp_tun_mac_addr_offload*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app*, i32, i32, %struct.nfp_tun_mac_addr_offload*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
