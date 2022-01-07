; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_decap_l2_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_put_decap_l2_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32, i32 }
%struct.bnxt_tc_flow_node = type { i32, %struct.bnxt_tc_l2_node* }
%struct.bnxt_tc_l2_node = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"rhashtable_remove_fast rc=%d\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_tc_flow_node*)* @bnxt_tc_put_decap_l2_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_tc_put_decap_l2_node(%struct.bnxt* %0, %struct.bnxt_tc_flow_node* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_tc_flow_node*, align 8
  %5 = alloca %struct.bnxt_tc_l2_node*, align 8
  %6 = alloca %struct.bnxt_tc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_tc_flow_node* %1, %struct.bnxt_tc_flow_node** %4, align 8
  %8 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %4, align 8
  %9 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %8, i32 0, i32 1
  %10 = load %struct.bnxt_tc_l2_node*, %struct.bnxt_tc_l2_node** %9, align 8
  store %struct.bnxt_tc_l2_node* %10, %struct.bnxt_tc_l2_node** %5, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 1
  %13 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %12, align 8
  store %struct.bnxt_tc_info* %13, %struct.bnxt_tc_info** %6, align 8
  %14 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %4, align 8
  %15 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %14, i32 0, i32 0
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.bnxt_tc_l2_node*, %struct.bnxt_tc_l2_node** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_tc_l2_node, %struct.bnxt_tc_l2_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %6, align 8
  %24 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %23, i32 0, i32 1
  %25 = load %struct.bnxt_tc_l2_node*, %struct.bnxt_tc_l2_node** %5, align 8
  %26 = getelementptr inbounds %struct.bnxt_tc_l2_node, %struct.bnxt_tc_l2_node* %25, i32 0, i32 1
  %27 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rhashtable_remove_fast(i32* %24, i32* %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @netdev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %22
  %40 = load %struct.bnxt_tc_l2_node*, %struct.bnxt_tc_l2_node** %5, align 8
  %41 = load i32, i32* @rcu, align 4
  %42 = call i32 @kfree_rcu(%struct.bnxt_tc_l2_node* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %2
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.bnxt_tc_l2_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
