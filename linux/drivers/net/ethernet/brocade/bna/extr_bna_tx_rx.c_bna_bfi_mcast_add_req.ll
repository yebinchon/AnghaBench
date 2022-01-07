; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_mcast_add_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_mcast_add_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.bfi_enet_mcast_add_req }
%struct.bfi_enet_mcast_add_req = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.bna_mac = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_MAC_MCAST_ADD_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, %struct.bna_mac*)* @bna_bfi_mcast_add_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_mcast_add_req(%struct.bna_rxf* %0, %struct.bna_mac* %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca %struct.bna_mac*, align 8
  %5 = alloca %struct.bfi_enet_mcast_add_req*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store %struct.bna_mac* %1, %struct.bna_mac** %4, align 8
  %6 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %7 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store %struct.bfi_enet_mcast_add_req* %8, %struct.bfi_enet_mcast_add_req** %5, align 8
  %9 = load %struct.bfi_enet_mcast_add_req*, %struct.bfi_enet_mcast_add_req** %5, align 8
  %10 = getelementptr inbounds %struct.bfi_enet_mcast_add_req, %struct.bfi_enet_mcast_add_req* %9, i32 0, i32 0
  %11 = load i32, i32* @BFI_MC_ENET, align 4
  %12 = load i32, i32* @BFI_ENET_H2I_MAC_MCAST_ADD_REQ, align 4
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %14 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bfi_msgq_mhdr_set(i32 %19, i32 %11, i32 %12, i32 0, i32 %17)
  %21 = call i32 @bfi_msgq_num_cmd_entries(i32 8)
  %22 = call i32 @htons(i32 %21)
  %23 = load %struct.bfi_enet_mcast_add_req*, %struct.bfi_enet_mcast_add_req** %5, align 8
  %24 = getelementptr inbounds %struct.bfi_enet_mcast_add_req, %struct.bfi_enet_mcast_add_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.bfi_enet_mcast_add_req*, %struct.bfi_enet_mcast_add_req** %5, align 8
  %27 = getelementptr inbounds %struct.bfi_enet_mcast_add_req, %struct.bfi_enet_mcast_add_req* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bna_mac*, %struct.bna_mac** %4, align 8
  %30 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ether_addr_copy(i32 %28, i32 %31)
  %33 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %34 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %33, i32 0, i32 0
  %35 = load %struct.bfi_enet_mcast_add_req*, %struct.bfi_enet_mcast_add_req** %5, align 8
  %36 = getelementptr inbounds %struct.bfi_enet_mcast_add_req, %struct.bfi_enet_mcast_add_req* %35, i32 0, i32 0
  %37 = call i32 @bfa_msgq_cmd_set(i32* %34, i32* null, i32* null, i32 8, %struct.TYPE_9__* %36)
  %38 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %39 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %45 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %44, i32 0, i32 0
  %46 = call i32 @bfa_msgq_cmd_post(i32* %43, i32* %45)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i32, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
