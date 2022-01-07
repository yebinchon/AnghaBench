; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_hw_cfg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_hw_cfg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }
%struct.nfp_net_rx_ring = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, %struct.nfp_net_rx_ring*, i32)* @nfp_net_rx_ring_hw_cfg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rx_ring_hw_cfg_write(%struct.nfp_net* %0, %struct.nfp_net_rx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.nfp_net_rx_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store %struct.nfp_net_rx_ring* %1, %struct.nfp_net_rx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @NFP_NET_CFG_RXR_ADDR(i32 %8)
  %10 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nn_writeq(%struct.nfp_net* %7, i32 %9, i32 %12)
  %14 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @NFP_NET_CFG_RXR_SZ(i32 %15)
  %17 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ilog2(i32 %19)
  %21 = call i32 @nn_writeb(%struct.nfp_net* %14, i32 %16, i32 %20)
  %22 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @NFP_NET_CFG_RXR_VEC(i32 %23)
  %25 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nn_writeb(%struct.nfp_net* %22, i32 %24, i32 %29)
  ret void
}

declare dso_local i32 @nn_writeq(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @NFP_NET_CFG_RXR_ADDR(i32) #1

declare dso_local i32 @nn_writeb(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @NFP_NET_CFG_RXR_SZ(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @NFP_NET_CFG_RXR_VEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
