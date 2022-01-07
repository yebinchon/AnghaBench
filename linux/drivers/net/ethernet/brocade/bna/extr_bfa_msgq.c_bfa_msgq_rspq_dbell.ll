; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_bfa_msgq_rspq_dbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_bfa_msgq_rspq_dbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_rspq = type { %struct.TYPE_10__, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.bfi_msgq_h2i_db = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@BFI_MC_MSGQ = common dso_local global i32 0, align 4
@BFI_MSGQ_H2I_DOORBELL_CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_rspq*)* @bfa_msgq_rspq_dbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_msgq_rspq_dbell(%struct.bfa_msgq_rspq* %0) #0 {
  %2 = alloca %struct.bfa_msgq_rspq*, align 8
  %3 = alloca %struct.bfi_msgq_h2i_db*, align 8
  store %struct.bfa_msgq_rspq* %0, %struct.bfa_msgq_rspq** %2, align 8
  %4 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = bitcast i32* %8 to %struct.bfi_msgq_h2i_db*
  store %struct.bfi_msgq_h2i_db* %9, %struct.bfi_msgq_h2i_db** %3, align 8
  %10 = load %struct.bfi_msgq_h2i_db*, %struct.bfi_msgq_h2i_db** %3, align 8
  %11 = call i32 @memset(%struct.bfi_msgq_h2i_db* %10, i32 0, i32 16)
  %12 = load %struct.bfi_msgq_h2i_db*, %struct.bfi_msgq_h2i_db** %3, align 8
  %13 = getelementptr inbounds %struct.bfi_msgq_h2i_db, %struct.bfi_msgq_h2i_db* %12, i32 0, i32 1
  %14 = load i32, i32* @BFI_MC_MSGQ, align 4
  %15 = load i32, i32* @BFI_MSGQ_H2I_DOORBELL_CI, align 4
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @bfi_h2i_set(i64 %18, i32 %14, i32 %15, i32 0)
  %20 = load %struct.bfi_msgq_h2i_db*, %struct.bfi_msgq_h2i_db** %3, align 8
  %21 = getelementptr inbounds %struct.bfi_msgq_h2i_db, %struct.bfi_msgq_h2i_db* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @htons(i32 %26)
  %28 = load %struct.bfi_msgq_h2i_db*, %struct.bfi_msgq_h2i_db** %3, align 8
  %29 = getelementptr inbounds %struct.bfi_msgq_h2i_db, %struct.bfi_msgq_h2i_db* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %2, align 8
  %37 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %36, i32 0, i32 0
  %38 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %2, align 8
  %39 = call i32 @bfa_nw_ioc_mbox_queue(i32 %35, %struct.TYPE_10__* %37, i32 (%struct.bfa_msgq_rspq*)* @bfa_msgq_rspq_dbell_ready, %struct.bfa_msgq_rspq* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %1
  %42 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %2, align 8
  %43 = call i32 @bfa_msgq_rspq_dbell_ready(%struct.bfa_msgq_rspq* %42)
  br label %44

44:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @memset(%struct.bfi_msgq_h2i_db*, i32, i32) #1

declare dso_local i32 @bfi_h2i_set(i64, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bfa_nw_ioc_mbox_queue(i32, %struct.TYPE_10__*, i32 (%struct.bfa_msgq_rspq*)*, %struct.bfa_msgq_rspq*) #1

declare dso_local i32 @bfa_msgq_rspq_dbell_ready(%struct.bfa_msgq_rspq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
