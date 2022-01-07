; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_dev_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_dev_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_admin_set_feat_cmd = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ena_admin_set_feat_resp = type { i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_ADMIN_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Feature %d isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENA_ADMIN_SET_FEATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set mtu %d. error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_set_dev_mtu(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_com_admin_queue*, align 8
  %7 = alloca %struct.ena_admin_set_feat_cmd, align 8
  %8 = alloca %struct.ena_admin_set_feat_resp, align 4
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %11 = load i32, i32* @ENA_ADMIN_MTU, align 4
  %12 = call i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENA_ADMIN_MTU, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = call i32 @memset(%struct.ena_admin_set_feat_cmd* %7, i32 0, i32 24)
  %21 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %22 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %21, i32 0, i32 0
  store %struct.ena_com_admin_queue* %22, %struct.ena_com_admin_queue** %6, align 8
  %23 = load i32, i32* @ENA_ADMIN_SET_FEATURE, align 4
  %24 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @ENA_ADMIN_MTU, align 4
  %29 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %6, align 8
  %36 = bitcast %struct.ena_admin_set_feat_cmd* %7 to %struct.ena_admin_aq_entry*
  %37 = bitcast %struct.ena_admin_set_feat_resp* %8 to %struct.ena_admin_acq_entry*
  %38 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %35, %struct.ena_admin_aq_entry* %36, i32 24, %struct.ena_admin_acq_entry* %37, i32 4)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %19
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %19
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @ena_com_check_supported_feature_id(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @memset(%struct.ena_admin_set_feat_cmd*, i32, i32) #1

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
