; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_dis_vsi_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_dis_vsi_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i64, i32, i32, i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_dis_txq_item = type { i32, i32*, i32 }
%struct.ice_q_ctx = type { i64 }
%struct.ice_sched_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ICE_ERR_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@ICE_SCHED_PORT_STATE_READY = common dso_local global i64 0, align 8
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@ICE_DBG_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid queue handle%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Err:handles %d %d\0A\00", align 1
@ICE_INVAL_Q_HANDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_dis_vsi_txq(%struct.ice_port_info* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5, i32* %6, i32 %7, i64 %8, %struct.ice_sq_cd* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ice_port_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.ice_sq_cd*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ice_aqc_dis_txq_item, align 8
  %24 = alloca %struct.ice_q_ctx*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.ice_sched_node*, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64* %4, i64** %16, align 8
  store i64* %5, i64** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i64 %8, i64* %20, align 8
  store %struct.ice_sq_cd* %9, %struct.ice_sq_cd** %21, align 8
  %27 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  store i32 %27, i32* %22, align 4
  %28 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %29 = icmp ne %struct.ice_port_info* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %10
  %31 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %32 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICE_SCHED_PORT_STATE_READY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %10
  %37 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %37, i32* %11, align 4
  br label %158

38:                                               ; preds = %30
  %39 = load i64, i64* %15, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %46 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %19, align 4
  %49 = load i64, i64* %20, align 8
  %50 = call i32 @ice_aq_dis_lan_txq(i32 %47, i32 0, %struct.ice_aqc_dis_txq_item* null, i32 0, i32 %48, i64 %49, %struct.ice_sq_cd* null)
  store i32 %50, i32* %11, align 4
  br label %158

51:                                               ; preds = %41
  %52 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %52, i32* %11, align 4
  br label %158

53:                                               ; preds = %38
  %54 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %55 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  store i64 0, i64* %25, align 8
  br label %57

57:                                               ; preds = %150, %53
  %58 = load i64, i64* %25, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %153

61:                                               ; preds = %57
  %62 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %63 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = load i64, i64* %25, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.ice_sched_node* @ice_sched_find_node_by_teid(i32 %64, i32 %68)
  store %struct.ice_sched_node* %69, %struct.ice_sched_node** %26, align 8
  %70 = load %struct.ice_sched_node*, %struct.ice_sched_node** %26, align 8
  %71 = icmp ne %struct.ice_sched_node* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %150

73:                                               ; preds = %61
  %74 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %75 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64*, i64** %16, align 8
  %80 = load i64, i64* %25, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.ice_q_ctx* @ice_get_lan_q_ctx(i32 %76, i64 %77, i64 %78, i64 %82)
  store %struct.ice_q_ctx* %83, %struct.ice_q_ctx** %24, align 8
  %84 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %24, align 8
  %85 = icmp ne %struct.ice_q_ctx* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %73
  %87 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %88 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ICE_DBG_SCHED, align 4
  %91 = load i64*, i64** %16, align 8
  %92 = load i64, i64* %25, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i32, i8*, i64, ...) @ice_debug(i32 %89, i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %94)
  br label %150

96:                                               ; preds = %73
  %97 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %24, align 8
  %98 = getelementptr inbounds %struct.ice_q_ctx, %struct.ice_q_ctx* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %16, align 8
  %101 = load i64, i64* %25, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %99, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %96
  %106 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %107 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ICE_DBG_SCHED, align 4
  %110 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %24, align 8
  %111 = getelementptr inbounds %struct.ice_q_ctx, %struct.ice_q_ctx* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %16, align 8
  %114 = load i64, i64* %25, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (i32, i32, i8*, i64, ...) @ice_debug(i32 %108, i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %112, i64 %116)
  br label %150

118:                                              ; preds = %96
  %119 = load %struct.ice_sched_node*, %struct.ice_sched_node** %26, align 8
  %120 = getelementptr inbounds %struct.ice_sched_node, %struct.ice_sched_node* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %23, i32 0, i32 2
  store i32 %122, i32* %123, align 8
  %124 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %23, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i64*, i64** %17, align 8
  %126 = load i64, i64* %25, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @cpu_to_le16(i64 %128)
  %130 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %23, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %134 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i64, i64* %20, align 8
  %138 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %21, align 8
  %139 = call i32 @ice_aq_dis_lan_txq(i32 %135, i32 1, %struct.ice_aqc_dis_txq_item* %23, i32 24, i32 %136, i64 %137, %struct.ice_sq_cd* %138)
  store i32 %139, i32* %22, align 4
  %140 = load i32, i32* %22, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %118
  br label %153

143:                                              ; preds = %118
  %144 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %145 = load %struct.ice_sched_node*, %struct.ice_sched_node** %26, align 8
  %146 = call i32 @ice_free_sched_node(%struct.ice_port_info* %144, %struct.ice_sched_node* %145)
  %147 = load i64, i64* @ICE_INVAL_Q_HANDLE, align 8
  %148 = load %struct.ice_q_ctx*, %struct.ice_q_ctx** %24, align 8
  %149 = getelementptr inbounds %struct.ice_q_ctx, %struct.ice_q_ctx* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %143, %105, %86, %72
  %151 = load i64, i64* %25, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %25, align 8
  br label %57

153:                                              ; preds = %142, %57
  %154 = load %struct.ice_port_info*, %struct.ice_port_info** %12, align 8
  %155 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %22, align 4
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %153, %51, %44, %36
  %159 = load i32, i32* %11, align 4
  ret i32 %159
}

declare dso_local i32 @ice_aq_dis_lan_txq(i32, i32, %struct.ice_aqc_dis_txq_item*, i32, i32, i64, %struct.ice_sq_cd*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ice_sched_node* @ice_sched_find_node_by_teid(i32, i32) #1

declare dso_local %struct.ice_q_ctx* @ice_get_lan_q_ctx(i32, i64, i64, i64) #1

declare dso_local i32 @ice_debug(i32, i32, i8*, i64, ...) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @ice_free_sched_node(%struct.ice_port_info*, %struct.ice_sched_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
