; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_vsi_support_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_vsi_support_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ice_sched_node = type { i64, %struct.ice_sched_node** }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, i64, %struct.ice_sched_node*, i64*)* @ice_sched_add_vsi_support_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sched_add_vsi_support_nodes(%struct.ice_port_info* %0, i64 %1, %struct.ice_sched_node* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_port_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ice_sched_node*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ice_sched_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ice_sched_node* %2, %struct.ice_sched_node** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  store %struct.ice_sched_node* %16, %struct.ice_sched_node** %10, align 8
  store i64 0, i64* %13, align 8
  %17 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %18 = icmp ne %struct.ice_port_info* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %20, i32* %5, align 4
  br label %87

21:                                               ; preds = %4
  %22 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %23 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i64 @ice_sched_get_vsi_layer(%struct.TYPE_2__* %24)
  store i64 %25, i64* %15, align 8
  %26 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %27 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %83, %21
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %86

35:                                               ; preds = %31
  %36 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %37 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %38 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ice_sched_add_nodes_to_layer(%struct.ice_port_info* %36, %struct.ice_sched_node* %37, %struct.ice_sched_node* %38, i64 %39, i64 %43, i32* %12, i64* %13)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %35
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47, %35
  %55 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %55, i32* %5, align 4
  br label %87

56:                                               ; preds = %47
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call %struct.ice_sched_node* @ice_sched_find_node_by_teid(%struct.ice_sched_node* %60, i32 %61)
  store %struct.ice_sched_node* %62, %struct.ice_sched_node** %10, align 8
  br label %69

63:                                               ; preds = %56
  %64 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %65 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %64, i32 0, i32 1
  %66 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %65, align 8
  %67 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %66, i64 0
  %68 = load %struct.ice_sched_node*, %struct.ice_sched_node** %67, align 8
  store %struct.ice_sched_node* %68, %struct.ice_sched_node** %10, align 8
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %71 = icmp ne %struct.ice_sched_node* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %73, i32* %5, align 4
  br label %87

74:                                               ; preds = %69
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %81 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %14, align 8
  br label %31

86:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %72, %54, %19
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @ice_sched_get_vsi_layer(%struct.TYPE_2__*) #1

declare dso_local i32 @ice_sched_add_nodes_to_layer(%struct.ice_port_info*, %struct.ice_sched_node*, %struct.ice_sched_node*, i64, i64, i32*, i64*) #1

declare dso_local %struct.ice_sched_node* @ice_sched_find_node_by_teid(%struct.ice_sched_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
