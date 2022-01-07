; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_del_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_del_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32, i32 }
%struct.flow_cls_offload = type { i32 }
%struct.bnxt_tc_flow_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.flow_cls_offload*)* @bnxt_tc_del_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_del_flow(%struct.bnxt* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.bnxt_tc_info*, align 8
  %7 = alloca %struct.bnxt_tc_flow_node*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %9, align 8
  store %struct.bnxt_tc_info* %10, %struct.bnxt_tc_info** %6, align 8
  %11 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %6, align 8
  %12 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %11, i32 0, i32 1
  %13 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %14 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 0
  %15 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %6, align 8
  %16 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.bnxt_tc_flow_node* @rhashtable_lookup_fast(i32* %12, i32* %14, i32 %17)
  store %struct.bnxt_tc_flow_node* %18, %struct.bnxt_tc_flow_node** %7, align 8
  %19 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %7, align 8
  %20 = icmp ne %struct.bnxt_tc_flow_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %26 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %7, align 8
  %27 = call i32 @__bnxt_tc_del_flow(%struct.bnxt* %25, %struct.bnxt_tc_flow_node* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.bnxt_tc_flow_node* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @__bnxt_tc_del_flow(%struct.bnxt*, %struct.bnxt_tc_flow_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
