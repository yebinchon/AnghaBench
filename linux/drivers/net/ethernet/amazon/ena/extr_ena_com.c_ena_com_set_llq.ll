; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_llq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_llq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue, %struct.ena_com_llq_info }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_com_llq_info = type { i32, i32, i32, i32 }
%struct.ena_admin_set_feat_cmd = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ena_admin_set_feat_resp = type { i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_ADMIN_SET_FEATURE = common dso_local global i32 0, align 4
@ENA_ADMIN_LLQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to set LLQ configurations: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*)* @ena_com_set_llq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_set_llq(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca %struct.ena_admin_set_feat_cmd, align 4
  %5 = alloca %struct.ena_admin_set_feat_resp, align 4
  %6 = alloca %struct.ena_com_llq_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %9 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %8, i32 0, i32 1
  store %struct.ena_com_llq_info* %9, %struct.ena_com_llq_info** %6, align 8
  %10 = call i32 @memset(%struct.ena_admin_set_feat_cmd* %4, i32 0, i32 24)
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 0
  store %struct.ena_com_admin_queue* %12, %struct.ena_com_admin_queue** %3, align 8
  %13 = load i32, i32* @ENA_ADMIN_SET_FEATURE, align 4
  %14 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ENA_ADMIN_LLQ, align 4
  %17 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %20 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %26 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %4, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %32 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %4, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %38 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %4, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %44 = bitcast %struct.ena_admin_set_feat_cmd* %4 to %struct.ena_admin_aq_entry*
  %45 = bitcast %struct.ena_admin_set_feat_resp* %5 to %struct.ena_admin_acq_entry*
  %46 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %43, %struct.ena_admin_aq_entry* %44, i32 24, %struct.ena_admin_acq_entry* %45, i32 4)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %1
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.ena_admin_set_feat_cmd*, i32, i32) #1

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
