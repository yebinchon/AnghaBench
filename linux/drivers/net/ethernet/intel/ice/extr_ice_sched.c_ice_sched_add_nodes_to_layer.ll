; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_nodes_to_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_add_nodes_to_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_hw* }
%struct.ice_hw = type { i64, i64* }
%struct.ice_sched_node = type { i64, i64, %struct.ice_sched_node* }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, %struct.ice_sched_node*, %struct.ice_sched_node*, i64, i64, i32*, i64*)* @ice_sched_add_nodes_to_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_sched_add_nodes_to_layer(%struct.ice_port_info* %0, %struct.ice_sched_node* %1, %struct.ice_sched_node* %2, i64 %3, i64 %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_port_info*, align 8
  %10 = alloca %struct.ice_sched_node*, align 8
  %11 = alloca %struct.ice_sched_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ice_hw*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %9, align 8
  store %struct.ice_sched_node* %1, %struct.ice_sched_node** %10, align 8
  store %struct.ice_sched_node* %2, %struct.ice_sched_node** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %23 = load i32*, i32** %14, align 8
  store i32* %23, i32** %16, align 8
  store i32 0, i32* %19, align 4
  %24 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %25 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %24, i32 0, i32 0
  %26 = load %struct.ice_hw*, %struct.ice_hw** %25, align 8
  store %struct.ice_hw* %26, %struct.ice_hw** %20, align 8
  store i64 0, i64* %21, align 8
  %27 = load i64*, i64** %15, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %7
  %31 = load i32, i32* %19, align 4
  store i32 %31, i32* %8, align 4
  br label %126

32:                                               ; preds = %7
  %33 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %34 = icmp ne %struct.ice_sched_node* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %38 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %32
  %42 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %42, i32* %8, align 4
  br label %126

43:                                               ; preds = %35
  %44 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %45 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %48 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %18, align 8
  %52 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %53 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* %18, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %116

59:                                               ; preds = %43
  %60 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %61 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %62 = icmp eq %struct.ice_sched_node* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %64, i32* %8, align 4
  br label %126

65:                                               ; preds = %59
  %66 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %67 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %18, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load i64, i64* %18, align 8
  %73 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %74 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  store i64 %76, i64* %17, align 8
  %77 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %78 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %79 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @ice_sched_add_nodes_to_layer(%struct.ice_port_info* %77, %struct.ice_sched_node* %78, %struct.ice_sched_node* %79, i64 %80, i64 %81, i32* %82, i64* %21)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %71
  %87 = load i32, i32* %19, align 4
  store i32 %87, i32* %8, align 4
  br label %126

88:                                               ; preds = %71
  %89 = load i64, i64* %21, align 8
  %90 = load i64*, i64** %15, align 8
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %89
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %88, %65
  %94 = load i64, i64* %21, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32* %22, i32** %16, align 8
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %21, align 8
  %100 = sub nsw i64 %98, %99
  store i64 %100, i64* %17, align 8
  %101 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %102 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %101, i32 0, i32 2
  %103 = load %struct.ice_sched_node*, %struct.ice_sched_node** %102, align 8
  store %struct.ice_sched_node* %103, %struct.ice_sched_node** %11, align 8
  %104 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %105 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %106 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @ice_sched_add_nodes_to_layer(%struct.ice_port_info* %104, %struct.ice_sched_node* %105, %struct.ice_sched_node* %106, i64 %107, i64 %108, i32* %109, i64* %21)
  store i32 %110, i32* %19, align 4
  %111 = load i64, i64* %21, align 8
  %112 = load i64*, i64** %15, align 8
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %111
  store i64 %114, i64* %112, align 8
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %8, align 4
  br label %126

116:                                              ; preds = %43
  %117 = load %struct.ice_port_info*, %struct.ice_port_info** %9, align 8
  %118 = load %struct.ice_sched_node*, %struct.ice_sched_node** %10, align 8
  %119 = load %struct.ice_sched_node*, %struct.ice_sched_node** %11, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load i64*, i64** %15, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @ice_sched_add_elems(%struct.ice_port_info* %117, %struct.ice_sched_node* %118, %struct.ice_sched_node* %119, i64 %120, i64 %121, i64* %122, i32* %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %116, %97, %86, %63, %41, %30
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local i32 @ice_sched_add_elems(%struct.ice_port_info*, %struct.ice_sched_node*, %struct.ice_sched_node*, i64, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
