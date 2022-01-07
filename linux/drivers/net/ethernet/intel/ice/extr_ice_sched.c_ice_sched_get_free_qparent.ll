; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_get_free_qparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_get_free_qparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_sched_node = type { i64, i64, %struct.ice_sched_node* }
%struct.ice_port_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }
%struct.ice_vsi_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ice_sched_node** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ice_sched_node* @ice_sched_get_free_qparent(%struct.ice_port_info* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ice_sched_node*, align 8
  %6 = alloca %struct.ice_port_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_sched_node*, align 8
  %11 = alloca %struct.ice_sched_node*, align 8
  %12 = alloca %struct.ice_vsi_ctx*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.ice_sched_node* null, %struct.ice_sched_node** %11, align 8
  %15 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %16 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i64 @ice_sched_get_qgrp_layer(%struct.TYPE_6__* %17)
  store i64 %18, i64* %14, align 8
  %19 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %20 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %14, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %28 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.TYPE_6__* %29, i64 %30)
  store %struct.ice_vsi_ctx* %31, %struct.ice_vsi_ctx** %12, align 8
  %32 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %12, align 8
  %33 = icmp ne %struct.ice_vsi_ctx* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store %struct.ice_sched_node* null, %struct.ice_sched_node** %5, align 8
  br label %83

35:                                               ; preds = %4
  %36 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %12, align 8
  %37 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %39, i64 %40
  %42 = load %struct.ice_sched_node*, %struct.ice_sched_node** %41, align 8
  store %struct.ice_sched_node* %42, %struct.ice_sched_node** %10, align 8
  %43 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %44 = icmp ne %struct.ice_sched_node* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %81

46:                                               ; preds = %35
  %47 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %48 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call %struct.ice_sched_node* @ice_sched_get_first_node(%struct.ice_port_info* %47, %struct.ice_sched_node* %48, i64 %49)
  store %struct.ice_sched_node* %50, %struct.ice_sched_node** %11, align 8
  br label %51

51:                                               ; preds = %76, %46
  %52 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %53 = icmp ne %struct.ice_sched_node* %52, null
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %56 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %59 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %60 = call i64 @ice_sched_find_node_in_subtree(%struct.TYPE_6__* %57, %struct.ice_sched_node* %58, %struct.ice_sched_node* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %64 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %70 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %80

75:                                               ; preds = %68, %62
  br label %76

76:                                               ; preds = %75, %54
  %77 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %78 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %77, i32 0, i32 2
  %79 = load %struct.ice_sched_node*, %struct.ice_sched_node** %78, align 8
  store %struct.ice_sched_node* %79, %struct.ice_sched_node** %11, align 8
  br label %51

80:                                               ; preds = %74, %51
  br label %81

81:                                               ; preds = %80, %45
  %82 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  store %struct.ice_sched_node* %82, %struct.ice_sched_node** %5, align 8
  br label %83

83:                                               ; preds = %81, %34
  %84 = load %struct.ice_sched_node*, %struct.ice_sched_node** %5, align 8
  ret %struct.ice_sched_node* %84
}

declare dso_local i64 @ice_sched_get_qgrp_layer(%struct.TYPE_6__*) #1

declare dso_local %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.TYPE_6__*, i64) #1

declare dso_local %struct.ice_sched_node* @ice_sched_get_first_node(%struct.ice_port_info*, %struct.ice_sched_node*, i64) #1

declare dso_local i64 @ice_sched_find_node_in_subtree(%struct.TYPE_6__*, %struct.ice_sched_node*, %struct.ice_sched_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
