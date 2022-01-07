; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_bfi_ethport_lpbk_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_bfi_ethport_lpbk_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.bfi_enet_diag_lb_req }
%struct.bfi_enet_diag_lb_req = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_DIAG_LOOPBACK_REQ = common dso_local global i32 0, align 4
@BNA_ENET_T_LOOPBACK_INTERNAL = common dso_local global i64 0, align 8
@BFI_ENET_DIAG_LB_OPMODE_EXT = common dso_local global i32 0, align 4
@BFI_ENET_DIAG_LB_OPMODE_CBL = common dso_local global i32 0, align 4
@BNA_STATUS_T_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ethport*)* @bna_bfi_ethport_lpbk_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_ethport_lpbk_up(%struct.bna_ethport* %0) #0 {
  %2 = alloca %struct.bna_ethport*, align 8
  %3 = alloca %struct.bfi_enet_diag_lb_req*, align 8
  store %struct.bna_ethport* %0, %struct.bna_ethport** %2, align 8
  %4 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %5 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store %struct.bfi_enet_diag_lb_req* %6, %struct.bfi_enet_diag_lb_req** %3, align 8
  %7 = load %struct.bfi_enet_diag_lb_req*, %struct.bfi_enet_diag_lb_req** %3, align 8
  %8 = getelementptr inbounds %struct.bfi_enet_diag_lb_req, %struct.bfi_enet_diag_lb_req* %7, i32 0, i32 0
  %9 = load i32, i32* @BFI_MC_ENET, align 4
  %10 = load i32, i32* @BFI_ENET_H2I_DIAG_LOOPBACK_REQ, align 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfi_msgq_mhdr_set(i32 %12, i32 %9, i32 %10, i32 0, i32 0)
  %14 = call i32 @bfi_msgq_num_cmd_entries(i32 12)
  %15 = call i32 @htons(i32 %14)
  %16 = load %struct.bfi_enet_diag_lb_req*, %struct.bfi_enet_diag_lb_req** %3, align 8
  %17 = getelementptr inbounds %struct.bfi_enet_diag_lb_req, %struct.bfi_enet_diag_lb_req* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %20 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BNA_ENET_T_LOOPBACK_INTERNAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @BFI_ENET_DIAG_LB_OPMODE_EXT, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @BFI_ENET_DIAG_LB_OPMODE_CBL, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.bfi_enet_diag_lb_req*, %struct.bfi_enet_diag_lb_req** %3, align 8
  %34 = getelementptr inbounds %struct.bfi_enet_diag_lb_req, %struct.bfi_enet_diag_lb_req* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @BNA_STATUS_T_ENABLED, align 4
  %36 = load %struct.bfi_enet_diag_lb_req*, %struct.bfi_enet_diag_lb_req** %3, align 8
  %37 = getelementptr inbounds %struct.bfi_enet_diag_lb_req, %struct.bfi_enet_diag_lb_req* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %39 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %38, i32 0, i32 0
  %40 = load %struct.bfi_enet_diag_lb_req*, %struct.bfi_enet_diag_lb_req** %3, align 8
  %41 = getelementptr inbounds %struct.bfi_enet_diag_lb_req, %struct.bfi_enet_diag_lb_req* %40, i32 0, i32 0
  %42 = call i32 @bfa_msgq_cmd_set(i32* %39, i32* null, i32* null, i32 12, %struct.TYPE_9__* %41)
  %43 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %44 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %48 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %47, i32 0, i32 0
  %49 = call i32 @bfa_msgq_cmd_post(i32* %46, i32* %48)
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
