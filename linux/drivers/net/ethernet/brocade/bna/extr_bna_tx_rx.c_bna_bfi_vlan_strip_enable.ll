; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_vlan_strip_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_vlan_strip_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.bfi_enet_enable_req }
%struct.bfi_enet_enable_req = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_RX_VLAN_STRIP_ENABLE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*)* @bna_bfi_vlan_strip_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_vlan_strip_enable(%struct.bna_rxf* %0) #0 {
  %2 = alloca %struct.bna_rxf*, align 8
  %3 = alloca %struct.bfi_enet_enable_req*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %2, align 8
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %5 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store %struct.bfi_enet_enable_req* %6, %struct.bfi_enet_enable_req** %3, align 8
  %7 = load %struct.bfi_enet_enable_req*, %struct.bfi_enet_enable_req** %3, align 8
  %8 = getelementptr inbounds %struct.bfi_enet_enable_req, %struct.bfi_enet_enable_req* %7, i32 0, i32 0
  %9 = load i32, i32* @BFI_MC_ENET, align 4
  %10 = load i32, i32* @BFI_ENET_H2I_RX_VLAN_STRIP_ENABLE_REQ, align 4
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %12 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfi_msgq_mhdr_set(i32 %17, i32 %9, i32 %10, i32 0, i32 %15)
  %19 = call i32 @bfi_msgq_num_cmd_entries(i32 8)
  %20 = call i32 @htons(i32 %19)
  %21 = load %struct.bfi_enet_enable_req*, %struct.bfi_enet_enable_req** %3, align 8
  %22 = getelementptr inbounds %struct.bfi_enet_enable_req, %struct.bfi_enet_enable_req* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %25 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bfi_enet_enable_req*, %struct.bfi_enet_enable_req** %3, align 8
  %28 = getelementptr inbounds %struct.bfi_enet_enable_req, %struct.bfi_enet_enable_req* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %30 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %29, i32 0, i32 0
  %31 = load %struct.bfi_enet_enable_req*, %struct.bfi_enet_enable_req** %3, align 8
  %32 = getelementptr inbounds %struct.bfi_enet_enable_req, %struct.bfi_enet_enable_req* %31, i32 0, i32 0
  %33 = call i32 @bfa_msgq_cmd_set(i32* %30, i32* null, i32* null, i32 8, %struct.TYPE_9__* %32)
  %34 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %35 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %41 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %40, i32 0, i32 0
  %42 = call i32 @bfa_msgq_cmd_post(i32* %39, i32* %41)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i32, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
