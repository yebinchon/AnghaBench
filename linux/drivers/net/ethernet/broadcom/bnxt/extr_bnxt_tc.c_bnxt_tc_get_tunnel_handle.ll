; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_tunnel_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_tunnel_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tc_flow = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_tc_flow_node = type { i32 }

@BNXT_TC_ACTION_FLAG_TUNNEL_DECAP = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow_node*, i32*)* @bnxt_tc_get_tunnel_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_get_tunnel_handle(%struct.bnxt* %0, %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow_node* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_tc_flow*, align 8
  %8 = alloca %struct.bnxt_tc_flow_node*, align 8
  %9 = alloca i32*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow** %7, align 8
  store %struct.bnxt_tc_flow_node* %2, %struct.bnxt_tc_flow_node** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %11 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BNXT_TC_ACTION_FLAG_TUNNEL_DECAP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %19 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %20 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @bnxt_tc_get_decap_handle(%struct.bnxt* %18, %struct.bnxt_tc_flow* %19, %struct.bnxt_tc_flow_node* %20, i32* %21)
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %4
  %24 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %25 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %33 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %7, align 8
  %34 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @bnxt_tc_get_encap_handle(%struct.bnxt* %32, %struct.bnxt_tc_flow* %33, %struct.bnxt_tc_flow_node* %34, i32* %35)
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %31, %17
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @bnxt_tc_get_decap_handle(%struct.bnxt*, %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow_node*, i32*) #1

declare dso_local i32 @bnxt_tc_get_encap_handle(%struct.bnxt*, %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
