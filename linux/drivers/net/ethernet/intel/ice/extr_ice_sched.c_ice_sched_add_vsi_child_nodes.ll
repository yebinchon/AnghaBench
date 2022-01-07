; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_vsi_child_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_vsi_child_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_hw* }
%struct.ice_hw = type { i32 }
%struct.ice_sched_node = type { i64, %struct.ice_sched_node**, %struct.ice_sched_node* }

@ICE_ERR_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, i64, %struct.ice_sched_node*, i64*, i64)* @ice_sched_add_vsi_child_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sched_add_vsi_child_nodes(%struct.ice_port_info* %0, i64 %1, %struct.ice_sched_node* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_port_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ice_sched_node*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ice_sched_node*, align 8
  %13 = alloca %struct.ice_sched_node*, align 8
  %14 = alloca %struct.ice_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.ice_sched_node* %2, %struct.ice_sched_node** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %22 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %21, i32 0, i32 0
  %23 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  store %struct.ice_hw* %23, %struct.ice_hw** %14, align 8
  store i64 0, i64* %17, align 8
  %24 = load %struct.ice_hw*, %struct.ice_hw** %14, align 8
  %25 = call i64 @ice_sched_get_qgrp_layer(%struct.ice_hw* %24)
  store i64 %25, i64* %19, align 8
  %26 = load %struct.ice_hw*, %struct.ice_hw** %14, align 8
  %27 = call i64 @ice_sched_get_vsi_layer(%struct.ice_hw* %26)
  store i64 %27, i64* %20, align 8
  %28 = load %struct.ice_hw*, %struct.ice_hw** %14, align 8
  %29 = load %struct.ice_sched_node*, %struct.ice_sched_node** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.ice_sched_node* @ice_sched_get_vsi_node(%struct.ice_hw* %28, %struct.ice_sched_node* %29, i64 %30)
  store %struct.ice_sched_node* %31, %struct.ice_sched_node** %12, align 8
  %32 = load i64, i64* %20, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %18, align 8
  br label %34

34:                                               ; preds = %90, %5
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %19, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = load %struct.ice_sched_node*, %struct.ice_sched_node** %12, align 8
  %40 = icmp ne %struct.ice_sched_node* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %42, i32* %6, align 4
  br label %94

43:                                               ; preds = %38
  %44 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %45 = load %struct.ice_sched_node*, %struct.ice_sched_node** %9, align 8
  %46 = load %struct.ice_sched_node*, %struct.ice_sched_node** %12, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %18, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @ice_sched_add_nodes_to_layer(%struct.ice_port_info* %44, %struct.ice_sched_node* %45, %struct.ice_sched_node* %46, i64 %47, i64 %51, i32* %16, i64* %17)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %43
  %56 = load i64*, i64** %10, align 8
  %57 = load i64, i64* %18, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %17, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55, %43
  %63 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %63, i32* %6, align 4
  br label %94

64:                                               ; preds = %55
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load %struct.ice_sched_node*, %struct.ice_sched_node** %9, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call %struct.ice_sched_node* @ice_sched_find_node_by_teid(%struct.ice_sched_node* %68, i32 %69)
  store %struct.ice_sched_node* %70, %struct.ice_sched_node** %12, align 8
  %71 = load %struct.ice_sched_node*, %struct.ice_sched_node** %12, align 8
  store %struct.ice_sched_node* %71, %struct.ice_sched_node** %13, align 8
  br label %72

72:                                               ; preds = %75, %67
  %73 = load %struct.ice_sched_node*, %struct.ice_sched_node** %13, align 8
  %74 = icmp ne %struct.ice_sched_node* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.ice_sched_node*, %struct.ice_sched_node** %13, align 8
  %78 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ice_sched_node*, %struct.ice_sched_node** %13, align 8
  %80 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %79, i32 0, i32 2
  %81 = load %struct.ice_sched_node*, %struct.ice_sched_node** %80, align 8
  store %struct.ice_sched_node* %81, %struct.ice_sched_node** %13, align 8
  br label %72

82:                                               ; preds = %72
  br label %89

83:                                               ; preds = %64
  %84 = load %struct.ice_sched_node*, %struct.ice_sched_node** %12, align 8
  %85 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %84, i32 0, i32 1
  %86 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %85, align 8
  %87 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %86, i64 0
  %88 = load %struct.ice_sched_node*, %struct.ice_sched_node** %87, align 8
  store %struct.ice_sched_node* %88, %struct.ice_sched_node** %12, align 8
  br label %89

89:                                               ; preds = %83, %82
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %18, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %18, align 8
  br label %34

93:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %62, %41
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @ice_sched_get_qgrp_layer(%struct.ice_hw*) #1

declare dso_local i64 @ice_sched_get_vsi_layer(%struct.ice_hw*) #1

declare dso_local %struct.ice_sched_node* @ice_sched_get_vsi_node(%struct.ice_hw*, %struct.ice_sched_node*, i64) #1

declare dso_local i32 @ice_sched_add_nodes_to_layer(%struct.ice_port_info*, %struct.ice_sched_node*, %struct.ice_sched_node*, i64, i64, i32*, i64*) #1

declare dso_local %struct.ice_sched_node* @ice_sched_find_node_by_teid(%struct.ice_sched_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
