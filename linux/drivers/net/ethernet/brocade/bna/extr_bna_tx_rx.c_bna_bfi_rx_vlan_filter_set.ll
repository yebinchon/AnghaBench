; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_rx_vlan_filter_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_rx_vlan_filter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i64, i32, %struct.TYPE_8__*, i32*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.bfi_enet_rx_vlan_req }
%struct.bfi_enet_rx_vlan_req = type { i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_RX_VLAN_SET_REQ = common dso_local global i32 0, align 4
@BFI_ENET_VLAN_BLOCK_SIZE = common dso_local global i32 0, align 4
@BNA_STATUS_T_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, i32)* @bna_bfi_rx_vlan_filter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_rx_vlan_filter_set(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfi_enet_rx_vlan_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %9 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.bfi_enet_rx_vlan_req* %10, %struct.bfi_enet_rx_vlan_req** %5, align 8
  %11 = load %struct.bfi_enet_rx_vlan_req*, %struct.bfi_enet_rx_vlan_req** %5, align 8
  %12 = getelementptr inbounds %struct.bfi_enet_rx_vlan_req, %struct.bfi_enet_rx_vlan_req* %11, i32 0, i32 2
  %13 = load i32, i32* @BFI_MC_ENET, align 4
  %14 = load i32, i32* @BFI_ENET_H2I_RX_VLAN_SET_REQ, align 4
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %16 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bfi_msgq_mhdr_set(i32 %21, i32 %13, i32 %14, i32 0, i32 %19)
  %23 = call i32 @bfi_msgq_num_cmd_entries(i32 24)
  %24 = call i32 @htons(i32 %23)
  %25 = load %struct.bfi_enet_rx_vlan_req*, %struct.bfi_enet_rx_vlan_req** %5, align 8
  %26 = getelementptr inbounds %struct.bfi_enet_rx_vlan_req, %struct.bfi_enet_rx_vlan_req* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.bfi_enet_rx_vlan_req*, %struct.bfi_enet_rx_vlan_req** %5, align 8
  %30 = getelementptr inbounds %struct.bfi_enet_rx_vlan_req, %struct.bfi_enet_rx_vlan_req* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %71, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BFI_ENET_VLAN_BLOCK_SIZE, align 4
  %34 = sdiv i32 %33, 32
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BFI_ENET_VLAN_BLOCK_SIZE, align 4
  %39 = sdiv i32 %38, 32
  %40 = mul nsw i32 %37, %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %44 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BNA_STATUS_T_ENABLED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %36
  %49 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %50 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @htonl(i32 %55)
  %57 = load %struct.bfi_enet_rx_vlan_req*, %struct.bfi_enet_rx_vlan_req** %5, align 8
  %58 = getelementptr inbounds %struct.bfi_enet_rx_vlan_req, %struct.bfi_enet_rx_vlan_req* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %70

63:                                               ; preds = %36
  %64 = load %struct.bfi_enet_rx_vlan_req*, %struct.bfi_enet_rx_vlan_req** %5, align 8
  %65 = getelementptr inbounds %struct.bfi_enet_rx_vlan_req, %struct.bfi_enet_rx_vlan_req* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %31

74:                                               ; preds = %31
  %75 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %76 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %75, i32 0, i32 1
  %77 = load %struct.bfi_enet_rx_vlan_req*, %struct.bfi_enet_rx_vlan_req** %5, align 8
  %78 = getelementptr inbounds %struct.bfi_enet_rx_vlan_req, %struct.bfi_enet_rx_vlan_req* %77, i32 0, i32 2
  %79 = call i32 @bfa_msgq_cmd_set(i32* %76, i32* null, i32* null, i32 24, %struct.TYPE_9__* %78)
  %80 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %81 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %87 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %86, i32 0, i32 1
  %88 = call i32 @bfa_msgq_cmd_post(i32* %85, i32* %87)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i32, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
