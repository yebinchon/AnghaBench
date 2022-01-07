; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_decap_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_decap_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32, i32 }
%struct.bnxt_tc_flow_node = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@INVALID_TUNNEL_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_tc_flow_node*)* @bnxt_tc_put_decap_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_tc_put_decap_handle(%struct.bnxt* %0, %struct.bnxt_tc_flow_node* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_tc_flow_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bnxt_tc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_tc_flow_node* %1, %struct.bnxt_tc_flow_node** %4, align 8
  %8 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %4, align 8
  %9 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %14, align 8
  store %struct.bnxt_tc_info* %15, %struct.bnxt_tc_info** %6, align 8
  %16 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %22 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %4, align 8
  %23 = call i32 @bnxt_tc_put_decap_l2_node(%struct.bnxt* %21, %struct.bnxt_tc_flow_node* %22)
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %6, align 8
  %27 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %26, i32 0, i32 1
  %28 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %6, align 8
  %29 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %28, i32 0, i32 0
  %30 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @bnxt_tc_put_tunnel_node(%struct.bnxt* %25, i32* %27, i32* %29, %struct.TYPE_2__* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %24
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @INVALID_TUNNEL_HANDLE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @hwrm_cfa_decap_filter_free(%struct.bnxt* %41, i64 %42)
  br label %44

44:                                               ; preds = %40, %36, %24
  ret void
}

declare dso_local i32 @bnxt_tc_put_decap_l2_node(%struct.bnxt*, %struct.bnxt_tc_flow_node*) #1

declare dso_local i32 @bnxt_tc_put_tunnel_node(%struct.bnxt*, i32*, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @hwrm_cfa_decap_filter_free(%struct.bnxt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
