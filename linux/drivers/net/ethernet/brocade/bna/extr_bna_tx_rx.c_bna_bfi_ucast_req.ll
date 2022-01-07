; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_ucast_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_ucast_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.bfi_enet_ucast_req }
%struct.bfi_enet_ucast_req = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.bna_mac = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, %struct.bna_mac*, i32)* @bna_bfi_ucast_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_ucast_req(%struct.bna_rxf* %0, %struct.bna_mac* %1, i32 %2) #0 {
  %4 = alloca %struct.bna_rxf*, align 8
  %5 = alloca %struct.bna_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfi_enet_ucast_req*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %4, align 8
  store %struct.bna_mac* %1, %struct.bna_mac** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %9 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.bfi_enet_ucast_req* %10, %struct.bfi_enet_ucast_req** %7, align 8
  %11 = load %struct.bfi_enet_ucast_req*, %struct.bfi_enet_ucast_req** %7, align 8
  %12 = getelementptr inbounds %struct.bfi_enet_ucast_req, %struct.bfi_enet_ucast_req* %11, i32 0, i32 0
  %13 = load i32, i32* @BFI_MC_ENET, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %16 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bfi_msgq_mhdr_set(i32 %21, i32 %13, i32 %14, i32 0, i32 %19)
  %23 = call i32 @bfi_msgq_num_cmd_entries(i32 8)
  %24 = call i32 @htons(i32 %23)
  %25 = load %struct.bfi_enet_ucast_req*, %struct.bfi_enet_ucast_req** %7, align 8
  %26 = getelementptr inbounds %struct.bfi_enet_ucast_req, %struct.bfi_enet_ucast_req* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.bfi_enet_ucast_req*, %struct.bfi_enet_ucast_req** %7, align 8
  %29 = getelementptr inbounds %struct.bfi_enet_ucast_req, %struct.bfi_enet_ucast_req* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bna_mac*, %struct.bna_mac** %5, align 8
  %32 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ether_addr_copy(i32 %30, i32 %33)
  %35 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %36 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %35, i32 0, i32 0
  %37 = load %struct.bfi_enet_ucast_req*, %struct.bfi_enet_ucast_req** %7, align 8
  %38 = getelementptr inbounds %struct.bfi_enet_ucast_req, %struct.bfi_enet_ucast_req* %37, i32 0, i32 0
  %39 = call i32 @bfa_msgq_cmd_set(i32* %36, i32* null, i32* null, i32 8, %struct.TYPE_9__* %38)
  %40 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %41 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.bna_rxf*, %struct.bna_rxf** %4, align 8
  %47 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %46, i32 0, i32 0
  %48 = call i32 @bfa_msgq_cmd_post(i32* %45, i32* %47)
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
