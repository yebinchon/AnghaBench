; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_handle_classification_eqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_handle_classification_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vf_queue = type { %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 (%struct.bnx2x.0*, %struct.TYPE_9__*, %union.event_ring_elem*, i64*)* }
%struct.bnx2x.0 = type opaque
%struct.TYPE_10__ = type { i32 (%struct.bnx2x.1*, %struct.TYPE_10__*, %union.event_ring_elem*, i64*)* }
%struct.bnx2x.1 = type opaque
%union.event_ring_elem = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RAMROD_CONT = common dso_local global i32 0, align 4
@BNX2X_SWCID_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unsupported classification command: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to schedule new commands: %d\0A\00", align 1
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Scheduled next pending commands...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vf_queue*, %union.event_ring_elem*)* @bnx2x_vf_handle_classification_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_handle_classification_eqe(%struct.bnx2x* %0, %struct.bnx2x_vf_queue* %1, %union.event_ring_elem* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_vf_queue*, align 8
  %6 = alloca %union.event_ring_elem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_vf_queue* %1, %struct.bnx2x_vf_queue** %5, align 8
  store %union.event_ring_elem* %2, %union.event_ring_elem** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %union.event_ring_elem*, %union.event_ring_elem** %6, align 8
  %11 = bitcast %union.event_ring_elem* %10 to %struct.TYPE_8__*
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @RAMROD_CONT, align 4
  %18 = call i32 @set_bit(i32 %17, i64* %7)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BNX2X_SWCID_SHIFT, align 4
  %21 = ashr i32 %19, %20
  switch i32 %21, label %44 [
    i32 129, label %22
    i32 128, label %33
  ]

22:                                               ; preds = %3
  %23 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32 (%struct.bnx2x.1*, %struct.TYPE_10__*, %union.event_ring_elem*, i64*)*, i32 (%struct.bnx2x.1*, %struct.TYPE_10__*, %union.event_ring_elem*, i64*)** %25, align 8
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = bitcast %struct.bnx2x* %27 to %struct.bnx2x.1*
  %29 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %29, i32 0, i32 1
  %31 = load %union.event_ring_elem*, %union.event_ring_elem** %6, align 8
  %32 = call i32 %26(%struct.bnx2x.1* %28, %struct.TYPE_10__* %30, %union.event_ring_elem* %31, i64* %7)
  store i32 %32, i32* %8, align 4
  br label %47

33:                                               ; preds = %3
  %34 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %5, align 8
  %35 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32 (%struct.bnx2x.0*, %struct.TYPE_9__*, %union.event_ring_elem*, i64*)*, i32 (%struct.bnx2x.0*, %struct.TYPE_9__*, %union.event_ring_elem*, i64*)** %36, align 8
  %38 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %39 = bitcast %struct.bnx2x* %38 to %struct.bnx2x.0*
  %40 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %5, align 8
  %41 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %40, i32 0, i32 0
  %42 = load %union.event_ring_elem*, %union.event_ring_elem** %6, align 8
  %43 = call i32 %37(%struct.bnx2x.0* %39, %struct.TYPE_9__* %41, %union.event_ring_elem* %42, i64* %7)
  store i32 %43, i32* %8, align 4
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %60

47:                                               ; preds = %33, %22
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %60

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %58 = call i32 @DP(i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %44, %59, %50
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
