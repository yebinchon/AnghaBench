; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_rit_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_bfi_rit_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.bfi_enet_rit_req }
%struct.bfi_enet_rit_req = type { %struct.TYPE_9__, i32*, i8* }
%struct.TYPE_9__ = type { i8* }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_RIT_CFG_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*)* @bna_bfi_rit_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_rit_cfg(%struct.bna_rxf* %0) #0 {
  %2 = alloca %struct.bna_rxf*, align 8
  %3 = alloca %struct.bfi_enet_rit_req*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %2, align 8
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %5 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.bfi_enet_rit_req* %6, %struct.bfi_enet_rit_req** %3, align 8
  %7 = load %struct.bfi_enet_rit_req*, %struct.bfi_enet_rit_req** %3, align 8
  %8 = getelementptr inbounds %struct.bfi_enet_rit_req, %struct.bfi_enet_rit_req* %7, i32 0, i32 0
  %9 = load i32, i32* @BFI_MC_ENET, align 4
  %10 = load i32, i32* @BFI_ENET_H2I_RIT_CFG_REQ, align 4
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %12 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @bfi_msgq_mhdr_set(i8* %17, i32 %9, i32 %10, i32 0, i32 %15)
  %19 = call i32 @bfi_msgq_num_cmd_entries(i32 24)
  %20 = call i8* @htons(i32 %19)
  %21 = load %struct.bfi_enet_rit_req*, %struct.bfi_enet_rit_req** %3, align 8
  %22 = getelementptr inbounds %struct.bfi_enet_rit_req, %struct.bfi_enet_rit_req* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %25 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @htons(i32 %26)
  %28 = load %struct.bfi_enet_rit_req*, %struct.bfi_enet_rit_req** %3, align 8
  %29 = getelementptr inbounds %struct.bfi_enet_rit_req, %struct.bfi_enet_rit_req* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bfi_enet_rit_req*, %struct.bfi_enet_rit_req** %3, align 8
  %31 = getelementptr inbounds %struct.bfi_enet_rit_req, %struct.bfi_enet_rit_req* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %35 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %38 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memcpy(i32* %33, i32 %36, i32 %39)
  %41 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %42 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %41, i32 0, i32 0
  %43 = load %struct.bfi_enet_rit_req*, %struct.bfi_enet_rit_req** %3, align 8
  %44 = getelementptr inbounds %struct.bfi_enet_rit_req, %struct.bfi_enet_rit_req* %43, i32 0, i32 0
  %45 = call i32 @bfa_msgq_cmd_set(i32* %42, i32* null, i32* null, i32 24, %struct.TYPE_9__* %44)
  %46 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %47 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.bna_rxf*, %struct.bna_rxf** %2, align 8
  %53 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %52, i32 0, i32 0
  %54 = call i32 @bfa_msgq_cmd_post(i32* %51, i32* %53)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
