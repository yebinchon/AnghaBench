; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_mcast_del_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_mcast_del_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.bfi_enet_mcast_del_req }
%struct.bfi_enet_mcast_del_req = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i8* }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_MAC_MCAST_DEL_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, i32)* @bna_bfi_mcast_del_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_mcast_del_req(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfi_enet_mcast_del_req*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %7 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store %struct.bfi_enet_mcast_del_req* %8, %struct.bfi_enet_mcast_del_req** %5, align 8
  %9 = load %struct.bfi_enet_mcast_del_req*, %struct.bfi_enet_mcast_del_req** %5, align 8
  %10 = getelementptr inbounds %struct.bfi_enet_mcast_del_req, %struct.bfi_enet_mcast_del_req* %9, i32 0, i32 0
  %11 = load i32, i32* @BFI_MC_ENET, align 4
  %12 = load i32, i32* @BFI_ENET_H2I_MAC_MCAST_DEL_REQ, align 4
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %14 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @bfi_msgq_mhdr_set(i8* %19, i32 %11, i32 %12, i32 0, i32 %17)
  %21 = call i32 @bfi_msgq_num_cmd_entries(i32 16)
  %22 = call i8* @htons(i32 %21)
  %23 = load %struct.bfi_enet_mcast_del_req*, %struct.bfi_enet_mcast_del_req** %5, align 8
  %24 = getelementptr inbounds %struct.bfi_enet_mcast_del_req, %struct.bfi_enet_mcast_del_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @htons(i32 %26)
  %28 = load %struct.bfi_enet_mcast_del_req*, %struct.bfi_enet_mcast_del_req** %5, align 8
  %29 = getelementptr inbounds %struct.bfi_enet_mcast_del_req, %struct.bfi_enet_mcast_del_req* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 0
  %32 = load %struct.bfi_enet_mcast_del_req*, %struct.bfi_enet_mcast_del_req** %5, align 8
  %33 = getelementptr inbounds %struct.bfi_enet_mcast_del_req, %struct.bfi_enet_mcast_del_req* %32, i32 0, i32 0
  %34 = call i32 @bfa_msgq_cmd_set(i32* %31, i32* null, i32* null, i32 16, %struct.TYPE_9__* %33)
  %35 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %36 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %42 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %41, i32 0, i32 0
  %43 = call i32 @bfa_msgq_cmd_post(i32* %40, i32* %42)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
