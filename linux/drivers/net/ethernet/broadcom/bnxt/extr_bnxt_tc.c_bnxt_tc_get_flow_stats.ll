; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_flow_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_get_flow_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32, i32 }
%struct.flow_cls_offload = type { i32, i32 }
%struct.bnxt_tc_flow_stats = type { i64, i64 }
%struct.bnxt_tc_flow_node = type { %struct.bnxt_tc_flow }
%struct.bnxt_tc_flow = type { i64, i32, %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.flow_cls_offload*)* @bnxt_tc_get_flow_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_get_flow_stats(%struct.bnxt* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.bnxt_tc_flow_stats, align 8
  %7 = alloca %struct.bnxt_tc_flow_stats*, align 8
  %8 = alloca %struct.bnxt_tc_flow_stats*, align 8
  %9 = alloca %struct.bnxt_tc_info*, align 8
  %10 = alloca %struct.bnxt_tc_flow_node*, align 8
  %11 = alloca %struct.bnxt_tc_flow*, align 8
  %12 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %14, align 8
  store %struct.bnxt_tc_info* %15, %struct.bnxt_tc_info** %9, align 8
  %16 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %9, align 8
  %17 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %16, i32 0, i32 1
  %18 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %19 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %18, i32 0, i32 1
  %20 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %9, align 8
  %21 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.bnxt_tc_flow_node* @rhashtable_lookup_fast(i32* %17, i32* %19, i32 %22)
  store %struct.bnxt_tc_flow_node* %23, %struct.bnxt_tc_flow_node** %10, align 8
  %24 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %10, align 8
  %25 = icmp ne %struct.bnxt_tc_flow_node* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %10, align 8
  %29 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %28, i32 0, i32 0
  store %struct.bnxt_tc_flow* %29, %struct.bnxt_tc_flow** %11, align 8
  %30 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %11, align 8
  %31 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %30, i32 0, i32 3
  store %struct.bnxt_tc_flow_stats* %31, %struct.bnxt_tc_flow_stats** %7, align 8
  %32 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %11, align 8
  %33 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %32, i32 0, i32 2
  store %struct.bnxt_tc_flow_stats* %33, %struct.bnxt_tc_flow_stats** %8, align 8
  %34 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %11, align 8
  %35 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %7, align 8
  %38 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %8, align 8
  %41 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %6, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %7, align 8
  %46 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %8, align 8
  %49 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %6, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %8, align 8
  %54 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %7, align 8
  %55 = bitcast %struct.bnxt_tc_flow_stats* %53 to i8*
  %56 = bitcast %struct.bnxt_tc_flow_stats* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %11, align 8
  %58 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %12, align 8
  %60 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %11, align 8
  %61 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %64 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %6, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @flow_stats_update(i32* %64, i64 %66, i64 %68, i64 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %27, %26
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.bnxt_tc_flow_node* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @flow_stats_update(i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
