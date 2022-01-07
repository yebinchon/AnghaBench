; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_cfg_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_sched.c_ice_sched_cfg_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_hw* }
%struct.ice_hw = type { i32 }
%struct.ice_sched_node = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ice_vsi_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, %struct.ice_sched_node** }

@ICE_DBG_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"add/config VSI %d\0A\00", align 1
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_ERR_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_sched_cfg_vsi(%struct.ice_port_info* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_port_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ice_sched_node*, align 8
  %15 = alloca %struct.ice_sched_node*, align 8
  %16 = alloca %struct.ice_vsi_ctx*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ice_hw*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %22 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %21, i32 0, i32 0
  %23 = load %struct.ice_hw*, %struct.ice_hw** %22, align 8
  store %struct.ice_hw* %23, %struct.ice_hw** %18, align 8
  %24 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %25 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %24, i32 0, i32 0
  %26 = load %struct.ice_hw*, %struct.ice_hw** %25, align 8
  %27 = load i32, i32* @ICE_DBG_SCHED, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ice_debug(%struct.ice_hw* %26, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call %struct.ice_sched_node* @ice_sched_get_tc_node(%struct.ice_port_info* %30, i64 %31)
  store %struct.ice_sched_node* %32, %struct.ice_sched_node** %15, align 8
  %33 = load %struct.ice_sched_node*, %struct.ice_sched_node** %15, align 8
  %34 = icmp ne %struct.ice_sched_node* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %36, i32* %7, align 4
  br label %145

37:                                               ; preds = %6
  %38 = load %struct.ice_hw*, %struct.ice_hw** %18, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw* %38, i32 %39)
  store %struct.ice_vsi_ctx* %40, %struct.ice_vsi_ctx** %16, align 8
  %41 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %16, align 8
  %42 = icmp ne %struct.ice_vsi_ctx* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %44, i32* %7, align 4
  br label %145

45:                                               ; preds = %37
  %46 = load %struct.ice_hw*, %struct.ice_hw** %18, align 8
  %47 = load %struct.ice_sched_node*, %struct.ice_sched_node** %15, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.ice_sched_node* @ice_sched_get_vsi_node(%struct.ice_hw* %46, %struct.ice_sched_node* %47, i32 %48)
  store %struct.ice_sched_node* %49, %struct.ice_sched_node** %14, align 8
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %45
  %53 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %54 = icmp ne %struct.ice_sched_node* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %57 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %62 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = load %struct.ice_hw*, %struct.ice_hw** %18, align 8
  %67 = call i32 @ice_sched_suspend_resume_elems(%struct.ice_hw* %66, i32 1, i32* %19, i32 1)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %72 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %60
  br label %74

74:                                               ; preds = %73, %55, %52
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %7, align 4
  br label %145

76:                                               ; preds = %45
  %77 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %78 = icmp ne %struct.ice_sched_node* %77, null
  br i1 %78, label %113, label %79

79:                                               ; preds = %76
  %80 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @ice_sched_add_vsi_to_topo(%struct.ice_port_info* %80, i32 %81, i64 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %7, align 4
  br label %145

88:                                               ; preds = %79
  %89 = load %struct.ice_hw*, %struct.ice_hw** %18, align 8
  %90 = load %struct.ice_sched_node*, %struct.ice_sched_node** %15, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call %struct.ice_sched_node* @ice_sched_get_vsi_node(%struct.ice_hw* %89, %struct.ice_sched_node* %90, i32 %91)
  store %struct.ice_sched_node* %92, %struct.ice_sched_node** %14, align 8
  %93 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %94 = icmp ne %struct.ice_sched_node* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %96, i32* %7, align 4
  br label %145

97:                                               ; preds = %88
  %98 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %99 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %16, align 8
  %100 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load %struct.ice_sched_node**, %struct.ice_sched_node*** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds %struct.ice_sched_node*, %struct.ice_sched_node** %102, i64 %103
  store %struct.ice_sched_node* %98, %struct.ice_sched_node** %104, align 8
  %105 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %106 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %16, align 8
  %108 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %97, %76
  %114 = load %struct.ice_port_info*, %struct.ice_port_info** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i64, i64* %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @ice_sched_update_vsi_child_nodes(%struct.ice_port_info* %114, i32 %115, i64 %116, i32 %117, i64 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %7, align 4
  br label %145

124:                                              ; preds = %113
  %125 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %126 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %124
  %130 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %131 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  store i32 %134, i32* %20, align 4
  %135 = load %struct.ice_hw*, %struct.ice_hw** %18, align 8
  %136 = call i32 @ice_sched_suspend_resume_elems(%struct.ice_hw* %135, i32 1, i32* %20, i32 0)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %129
  %140 = load %struct.ice_sched_node*, %struct.ice_sched_node** %14, align 8
  %141 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %140, i32 0, i32 0
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %129
  br label %143

143:                                              ; preds = %142, %124
  %144 = load i32, i32* %17, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %122, %95, %86, %74, %43, %35
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32) #1

declare dso_local %struct.ice_sched_node* @ice_sched_get_tc_node(%struct.ice_port_info*, i64) #1

declare dso_local %struct.ice_vsi_ctx* @ice_get_vsi_ctx(%struct.ice_hw*, i32) #1

declare dso_local %struct.ice_sched_node* @ice_sched_get_vsi_node(%struct.ice_hw*, %struct.ice_sched_node*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ice_sched_suspend_resume_elems(%struct.ice_hw*, i32, i32*, i32) #1

declare dso_local i32 @ice_sched_add_vsi_to_topo(%struct.ice_port_info*, i32, i64) #1

declare dso_local i32 @ice_sched_update_vsi_child_nodes(%struct.ice_port_info*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
