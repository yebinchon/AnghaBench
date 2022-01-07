; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_handle_classification_eqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_handle_classification_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_8__*, %struct.bnx2x_vlan_mac_obj }
%struct.TYPE_8__ = type { %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj }
%struct.bnx2x_vlan_mac_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %union.event_ring_elem*, i64*)* }
%struct.bnx2x.0 = type opaque
%union.event_ring_elem = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BNX2X_SWCID_MASK = common dso_local global i32 0, align 4
@RAMROD_CONT = common dso_local global i32 0, align 4
@BNX2X_SWCID_SHIFT = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Got SETUP_MAC completions\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Got SETUP_VLAN completions\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Got SETUP_MCAST completions\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Unsupported classification command: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to schedule new commands: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Scheduled next pending commands...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %union.event_ring_elem*)* @bnx2x_handle_classification_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_handle_classification_eqe(%struct.bnx2x* %0, %union.event_ring_elem* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %union.event_ring_elem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %union.event_ring_elem* %1, %union.event_ring_elem** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %11 = bitcast %union.event_ring_elem* %10 to %struct.TYPE_7__*
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BNX2X_SWCID_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @RAMROD_CONT, align 4
  %21 = call i32 @__set_bit(i32 %20, i64* %5)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BNX2X_SWCID_SHIFT, align 4
  %24 = ashr i32 %22, %23
  switch i32 %24, label %63 [
    i32 130, label %25
    i32 128, label %48
    i32 129, label %58
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @BNX2X_MSG_SP, align 4
  %27 = call i32 @DP(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = call i32 @CNIC_LOADED(%struct.bnx2x* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = call i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x* %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 1
  store %struct.bnx2x_vlan_mac_obj* %38, %struct.bnx2x_vlan_mac_obj** %9, align 8
  br label %47

39:                                               ; preds = %31, %25
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store %struct.bnx2x_vlan_mac_obj* %46, %struct.bnx2x_vlan_mac_obj** %9, align 8
  br label %47

47:                                               ; preds = %39, %36
  br label %66

48:                                               ; preds = %2
  %49 = load i32, i32* @BNX2X_MSG_SP, align 4
  %50 = call i32 @DP(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store %struct.bnx2x_vlan_mac_obj* %57, %struct.bnx2x_vlan_mac_obj** %9, align 8
  br label %66

58:                                               ; preds = %2
  %59 = load i32, i32* @BNX2X_MSG_SP, align 4
  %60 = call i32 @DP(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = call i32 @bnx2x_handle_mcast_eqe(%struct.bnx2x* %61)
  br label %87

63:                                               ; preds = %2
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %87

66:                                               ; preds = %48, %47
  %67 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %68 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %67, i32 0, i32 0
  %69 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %union.event_ring_elem*, i64*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %union.event_ring_elem*, i64*)** %68, align 8
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = bitcast %struct.bnx2x* %70 to %struct.bnx2x.0*
  %72 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %9, align 8
  %73 = load %union.event_ring_elem*, %union.event_ring_elem** %4, align 8
  %74 = call i32 %69(%struct.bnx2x.0* %71, %struct.bnx2x_vlan_mac_obj* %72, %union.event_ring_elem* %73, i64* %5)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %87

80:                                               ; preds = %66
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @BNX2X_MSG_SP, align 4
  %85 = call i32 @DP(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %58, %63, %86, %77
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @CNIC_LOADED(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ISCSI_ETH_CID(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_handle_mcast_eqe(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
