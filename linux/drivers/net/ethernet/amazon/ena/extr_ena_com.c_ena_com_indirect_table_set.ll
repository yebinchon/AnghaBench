; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_indirect_table_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_indirect_table_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss, %struct.ena_com_admin_queue }
%struct.ena_rss = type { i64, i32 }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_admin_set_feat_cmd = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ena_admin_set_feat_resp = type { i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Feature %d isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Failed to convert host indirection table to device table\0A\00", align 1
@ENA_ADMIN_SET_FEATURE = common dso_local global i32 0, align 4
@ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"memory address set failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to set indirect table. error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_indirect_table_set(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_com_admin_queue*, align 8
  %5 = alloca %struct.ena_rss*, align 8
  %6 = alloca %struct.ena_admin_set_feat_cmd, align 8
  %7 = alloca %struct.ena_admin_set_feat_resp, align 4
  %8 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %9, i32 0, i32 1
  store %struct.ena_com_admin_queue* %10, %struct.ena_com_admin_queue** %4, align 8
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 0
  store %struct.ena_rss* %12, %struct.ena_rss** %5, align 8
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %14 = load i32, i32* @ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG, align 4
  %15 = call i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %83

22:                                               ; preds = %1
  %23 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %24 = call i32 @ena_com_ind_tbl_convert_to_device(%struct.ena_com_dev* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %83

30:                                               ; preds = %22
  %31 = call i32 @memset(%struct.ena_admin_set_feat_cmd* %6, i32 0, i32 48)
  %32 = load i32, i32* @ENA_ADMIN_SET_FEATURE, align 4
  %33 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK, align 4
  %36 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG, align 4
  %39 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ena_rss*, %struct.ena_rss** %5, align 8
  %42 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 8
  %50 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %51 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.ena_rss*, %struct.ena_rss** %5, align 8
  %54 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ena_com_mem_addr_set(%struct.ena_com_dev* %50, i32* %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %30
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %83

63:                                               ; preds = %30
  %64 = load %struct.ena_rss*, %struct.ena_rss** %5, align 8
  %65 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = shl i64 1, %66
  %68 = mul i64 %67, 4
  %69 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %4, align 8
  %72 = bitcast %struct.ena_admin_set_feat_cmd* %6 to %struct.ena_admin_aq_entry*
  %73 = bitcast %struct.ena_admin_set_feat_resp* %7 to %struct.ena_admin_acq_entry*
  %74 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %71, %struct.ena_admin_aq_entry* %72, i32 48, %struct.ena_admin_acq_entry* %73, i32 4)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %63
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %60, %27, %17
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ena_com_ind_tbl_convert_to_device(%struct.ena_com_dev*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @memset(%struct.ena_admin_set_feat_cmd*, i32, i32) #1

declare dso_local i32 @ena_com_mem_addr_set(%struct.ena_com_dev*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
