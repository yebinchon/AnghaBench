; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_fill_cfa_stats_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_fill_cfa_stats_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tc_flow_node = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@BNXT_FW_CAP_OVS_64BIT_HANDLE = common dso_local global i32 0, align 4
@BNXT_DIR_RX = common dso_local global i64 0, align 8
@CFA_FLOW_INFO_REQ_FLOW_HANDLE_DIR_RX = common dso_local global i32 0, align 4
@CFA_FLOW_INFO_REQ_FLOW_HANDLE_MAX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_tc_flow_node*, i32*, i32*)* @bnxt_fill_cfa_stats_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_fill_cfa_stats_req(%struct.bnxt* %0, %struct.bnxt_tc_flow_node* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_tc_flow_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.bnxt_tc_flow_node* %1, %struct.bnxt_tc_flow_node** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNXT_FW_CAP_OVS_64BIT_HANDLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %4
  %17 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %6, align 8
  %18 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %6, align 8
  %22 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BNXT_DIR_RX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32, i32* @CFA_FLOW_INFO_REQ_FLOW_HANDLE_DIR_RX, align 4
  %30 = load i32, i32* @CFA_FLOW_INFO_REQ_FLOW_HANDLE_MAX_MASK, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %9, align 4
  br label %34

32:                                               ; preds = %16
  %33 = load i32, i32* @CFA_FLOW_INFO_REQ_FLOW_HANDLE_MAX_MASK, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @cpu_to_le16(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %43

38:                                               ; preds = %4
  %39 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %6, align 8
  %40 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
