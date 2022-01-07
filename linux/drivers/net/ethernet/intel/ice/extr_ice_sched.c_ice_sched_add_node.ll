; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i32, %struct.ice_hw* }
%struct.ice_hw = type { i64* }
%struct.ice_aqc_txsched_elem_data = type { i32, i32 }
%struct.ice_sched_node = type { i32, i64, i32, i32, %struct.ice_sched_node**, %struct.ice_sched_node* }
%struct.ice_aqc_get_elem = type { i32* }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_DBG_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Parent Node not found for parent_teid=0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_sched_add_node(%struct.ice_port_info* %0, i64 %1, %struct.ice_aqc_txsched_elem_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_port_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ice_aqc_txsched_elem_data*, align 8
  %8 = alloca %struct.ice_sched_node*, align 8
  %9 = alloca %struct.ice_aqc_get_elem, align 8
  %10 = alloca %struct.ice_sched_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ice_hw*, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ice_aqc_txsched_elem_data* %2, %struct.ice_aqc_txsched_elem_data** %7, align 8
  %13 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %14 = icmp ne %struct.ice_port_info* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %16, i32* %4, align 4
  br label %117

17:                                               ; preds = %3
  %18 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %19 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %18, i32 0, i32 1
  %20 = load %struct.ice_hw*, %struct.ice_hw** %19, align 8
  store %struct.ice_hw* %20, %struct.ice_hw** %12, align 8
  %21 = load %struct.ice_port_info*, %struct.ice_port_info** %5, align 8
  %22 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ice_aqc_txsched_elem_data*, %struct.ice_aqc_txsched_elem_data** %7, align 8
  %25 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, %struct.ice_aqc_txsched_elem_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = call %struct.ice_sched_node* @ice_sched_find_node_by_teid(i32 %23, i32 %27)
  store %struct.ice_sched_node* %28, %struct.ice_sched_node** %8, align 8
  %29 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %30 = icmp ne %struct.ice_sched_node* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %17
  %32 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %33 = load i32, i32* @ICE_DBG_SCHED, align 4
  %34 = load %struct.ice_aqc_txsched_elem_data*, %struct.ice_aqc_txsched_elem_data** %7, align 8
  %35 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, %struct.ice_aqc_txsched_elem_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = call i32 @ice_debug(%struct.ice_hw* %32, i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %39, i32* %4, align 4
  br label %117

40:                                               ; preds = %17
  %41 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %42 = load %struct.ice_aqc_txsched_elem_data*, %struct.ice_aqc_txsched_elem_data** %7, align 8
  %43 = getelementptr inbounds %struct.ice_aqc_txsched_elem_data, %struct.ice_aqc_txsched_elem_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = call i32 @ice_sched_query_elem(%struct.ice_hw* %41, i32 %45, %struct.ice_aqc_get_elem* %9)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %117

51:                                               ; preds = %40
  %52 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %53 = call i32 @ice_hw_to_dev(%struct.ice_hw* %52)
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.ice_sched_node* @devm_kzalloc(i32 %53, i32 40, i32 %54)
  store %struct.ice_sched_node* %55, %struct.ice_sched_node** %10, align 8
  %56 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %57 = icmp ne %struct.ice_sched_node* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %59, i32* %4, align 4
  br label %117

60:                                               ; preds = %51
  %61 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %62 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %60
  %69 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %70 = call i32 @ice_hw_to_dev(%struct.ice_hw* %69)
  %71 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %72 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.ice_sched_node** @devm_kcalloc(i32 %70, i64 %76, i32 40, i32 %77)
  %79 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %80 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %79, i32 0, i32 4
  store %struct.ice_sched_node** %78, %struct.ice_sched_node*** %80, align 8
  %81 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %82 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %81, i32 0, i32 4
  %83 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %82, align 8
  %84 = icmp ne %struct.ice_sched_node** %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %68
  %86 = load %struct.ice_hw*, %struct.ice_hw** %12, align 8
  %87 = call i32 @ice_hw_to_dev(%struct.ice_hw* %86)
  %88 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %89 = call i32 @devm_kfree(i32 %87, %struct.ice_sched_node* %88)
  %90 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %90, i32* %4, align 4
  br label %117

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %60
  %93 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %94 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %96 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %97 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %96, i32 0, i32 5
  store %struct.ice_sched_node* %95, %struct.ice_sched_node** %97, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %100 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %102 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %103 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %102, i32 0, i32 4
  %104 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %103, align 8
  %105 = load %struct.ice_sched_node*, %struct.ice_sched_node** %8, align 8
  %106 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %104, i64 %109
  store %struct.ice_sched_node* %101, %struct.ice_sched_node** %110, align 8
  %111 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %112 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.ice_aqc_get_elem, %struct.ice_aqc_get_elem* %9, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = call i32 @memcpy(i32* %112, i32* %115, i32 4)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %92, %85, %58, %49, %31, %15
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.ice_sched_node* @ice_sched_find_node_by_teid(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32) #1

declare dso_local i32 @ice_sched_query_elem(%struct.ice_hw*, i32, %struct.ice_aqc_get_elem*) #1

declare dso_local %struct.ice_sched_node* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local %struct.ice_sched_node** @devm_kcalloc(i32, i64, i32, i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_sched_node*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
