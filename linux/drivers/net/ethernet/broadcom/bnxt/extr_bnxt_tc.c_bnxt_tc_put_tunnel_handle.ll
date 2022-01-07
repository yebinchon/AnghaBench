; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_tunnel_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_tunnel_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tc_flow = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_tc_flow_node = type { i32 }

@BNXT_TC_ACTION_FLAG_TUNNEL_DECAP = common dso_local global i32 0, align 4
@BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow_node*)* @bnxt_tc_put_tunnel_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_tc_put_tunnel_handle(%struct.bnxt* %0, %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow_node* %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_tc_flow*, align 8
  %6 = alloca %struct.bnxt_tc_flow_node*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow** %5, align 8
  store %struct.bnxt_tc_flow_node* %2, %struct.bnxt_tc_flow_node** %6, align 8
  %7 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %8 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BNXT_TC_ACTION_FLAG_TUNNEL_DECAP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %16 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %6, align 8
  %17 = call i32 @bnxt_tc_put_decap_handle(%struct.bnxt* %15, %struct.bnxt_tc_flow_node* %16)
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %20 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BNXT_TC_ACTION_FLAG_TUNNEL_ENCAP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %28 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %6, align 8
  %29 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bnxt_tc_put_encap_handle(%struct.bnxt* %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32, %14
  ret void
}

declare dso_local i32 @bnxt_tc_put_decap_handle(%struct.bnxt*, %struct.bnxt_tc_flow_node*) #1

declare dso_local i32 @bnxt_tc_put_encap_handle(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
