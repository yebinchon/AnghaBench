; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_hash_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_hash_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss, %struct.ena_com_admin_queue }
%struct.ena_rss = type { i32, %struct.ena_admin_feature_rss_hash_control* }
%struct.ena_admin_feature_rss_hash_control = type { i32 }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_admin_set_feat_cmd = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ena_admin_set_feat_resp = type { i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_ADMIN_RSS_HASH_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Feature %d isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENA_ADMIN_SET_FEATURE = common dso_local global i32 0, align 4
@ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK = common dso_local global i32 0, align 4
@ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L3_SORT_MASK = common dso_local global i32 0, align 4
@ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L4_SORT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"memory address set failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to set hash input. error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_set_hash_ctrl(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_com_admin_queue*, align 8
  %5 = alloca %struct.ena_rss*, align 8
  %6 = alloca %struct.ena_admin_feature_rss_hash_control*, align 8
  %7 = alloca %struct.ena_admin_set_feat_cmd, align 4
  %8 = alloca %struct.ena_admin_set_feat_resp, align 4
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %11 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %10, i32 0, i32 1
  store %struct.ena_com_admin_queue* %11, %struct.ena_com_admin_queue** %4, align 8
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %12, i32 0, i32 0
  store %struct.ena_rss* %13, %struct.ena_rss** %5, align 8
  %14 = load %struct.ena_rss*, %struct.ena_rss** %5, align 8
  %15 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %14, i32 0, i32 1
  %16 = load %struct.ena_admin_feature_rss_hash_control*, %struct.ena_admin_feature_rss_hash_control** %15, align 8
  store %struct.ena_admin_feature_rss_hash_control* %16, %struct.ena_admin_feature_rss_hash_control** %6, align 8
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %18 = load i32, i32* @ENA_ADMIN_RSS_HASH_INPUT, align 4
  %19 = call i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENA_ADMIN_RSS_HASH_INPUT, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %1
  %27 = call i32 @memset(%struct.ena_admin_set_feat_cmd* %7, i32 0, i32 24)
  %28 = load i32, i32* @ENA_ADMIN_SET_FEATURE, align 4
  %29 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK, align 4
  %32 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @ENA_ADMIN_RSS_HASH_INPUT, align 4
  %35 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L3_SORT_MASK, align 4
  %38 = load i32, i32* @ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L4_SORT_MASK, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %44 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.ena_rss*, %struct.ena_rss** %5, align 8
  %47 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ena_com_mem_addr_set(%struct.ena_com_dev* %43, i32* %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %26
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %26
  %57 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 4, i32* %58, align 4
  %59 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %60 = bitcast %struct.ena_admin_set_feat_cmd* %7 to %struct.ena_admin_aq_entry*
  %61 = bitcast %struct.ena_admin_set_feat_resp* %8 to %struct.ena_admin_acq_entry*
  %62 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %59, %struct.ena_admin_aq_entry* %60, i32 24, %struct.ena_admin_acq_entry* %61, i32 4)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %53, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @memset(%struct.ena_admin_set_feat_cmd*, i32, i32) #1

declare dso_local i32 @ena_com_mem_addr_set(%struct.ena_com_dev*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
