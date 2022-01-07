; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_feature_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_feature_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_admin_get_feat_resp = type { i32 }
%struct.ena_admin_get_feat_cmd = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Feature %d isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENA_ADMIN_GET_FEATURE = common dso_local global i32 0, align 4
@ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"memory address set failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to submit get_feature command %d error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32, i64, i32)* @ena_com_get_feature_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_get_feature_ex(%struct.ena_com_dev* %0, %struct.ena_admin_get_feat_resp* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_com_dev*, align 8
  %9 = alloca %struct.ena_admin_get_feat_resp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ena_com_admin_queue*, align 8
  %15 = alloca %struct.ena_admin_get_feat_cmd, align 8
  %16 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %8, align 8
  store %struct.ena_admin_get_feat_resp* %1, %struct.ena_admin_get_feat_resp** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %78

26:                                               ; preds = %6
  %27 = call i32 @memset(%struct.ena_admin_get_feat_cmd* %15, i32 0, i32 40)
  %28 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %29 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %28, i32 0, i32 0
  store %struct.ena_com_admin_queue* %29, %struct.ena_com_admin_queue** %14, align 8
  %30 = load i32, i32* @ENA_ADMIN_GET_FEATURE, align 4
  %31 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i64, i64* @ENA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK, align 8
  %37 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %42

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.ena_com_dev*, %struct.ena_com_dev** %8, align 8
  %44 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ena_com_mem_addr_set(%struct.ena_com_dev* %43, i32* %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %7, align 4
  br label %78

54:                                               ; preds = %42
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %13, align 4
  %59 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds %struct.ena_admin_get_feat_cmd, %struct.ena_admin_get_feat_cmd* %15, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %14, align 8
  %65 = bitcast %struct.ena_admin_get_feat_cmd* %15 to %struct.ena_admin_aq_entry*
  %66 = load %struct.ena_admin_get_feat_resp*, %struct.ena_admin_get_feat_resp** %9, align 8
  %67 = bitcast %struct.ena_admin_get_feat_resp* %66 to %struct.ena_admin_acq_entry*
  %68 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %64, %struct.ena_admin_aq_entry* %65, i32 40, %struct.ena_admin_acq_entry* %67, i32 4)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %54
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %51, %21
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @memset(%struct.ena_admin_get_feat_cmd*, i32, i32) #1

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
