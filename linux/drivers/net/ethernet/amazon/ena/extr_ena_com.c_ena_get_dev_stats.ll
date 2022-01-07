; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_get_dev_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_get_dev_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_com_stats_ctx = type { %struct.ena_admin_acq_get_stats_resp, %struct.ena_admin_aq_get_stats_cmd }
%struct.ena_admin_acq_get_stats_resp = type { i32 }
%struct.ena_admin_aq_get_stats_cmd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_ADMIN_GET_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to get stats. error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_com_stats_ctx*, i32)* @ena_get_dev_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_get_dev_stats(%struct.ena_com_dev* %0, %struct.ena_com_stats_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_com_stats_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ena_admin_aq_get_stats_cmd*, align 8
  %8 = alloca %struct.ena_admin_acq_get_stats_resp*, align 8
  %9 = alloca %struct.ena_com_admin_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_com_stats_ctx* %1, %struct.ena_com_stats_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ena_com_stats_ctx*, %struct.ena_com_stats_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ena_com_stats_ctx, %struct.ena_com_stats_ctx* %11, i32 0, i32 1
  store %struct.ena_admin_aq_get_stats_cmd* %12, %struct.ena_admin_aq_get_stats_cmd** %7, align 8
  %13 = load %struct.ena_com_stats_ctx*, %struct.ena_com_stats_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.ena_com_stats_ctx, %struct.ena_com_stats_ctx* %13, i32 0, i32 0
  store %struct.ena_admin_acq_get_stats_resp* %14, %struct.ena_admin_acq_get_stats_resp** %8, align 8
  %15 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %16 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %15, i32 0, i32 0
  store %struct.ena_com_admin_queue* %16, %struct.ena_com_admin_queue** %9, align 8
  %17 = load i32, i32* @ENA_ADMIN_GET_STATS, align 4
  %18 = load %struct.ena_admin_aq_get_stats_cmd*, %struct.ena_admin_aq_get_stats_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.ena_admin_aq_get_stats_cmd, %struct.ena_admin_aq_get_stats_cmd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.ena_admin_aq_get_stats_cmd*, %struct.ena_admin_aq_get_stats_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.ena_admin_aq_get_stats_cmd, %struct.ena_admin_aq_get_stats_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ena_admin_aq_get_stats_cmd*, %struct.ena_admin_aq_get_stats_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.ena_admin_aq_get_stats_cmd, %struct.ena_admin_aq_get_stats_cmd* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %9, align 8
  %28 = load %struct.ena_admin_aq_get_stats_cmd*, %struct.ena_admin_aq_get_stats_cmd** %7, align 8
  %29 = bitcast %struct.ena_admin_aq_get_stats_cmd* %28 to %struct.ena_admin_aq_entry*
  %30 = load %struct.ena_admin_acq_get_stats_resp*, %struct.ena_admin_acq_get_stats_resp** %8, align 8
  %31 = bitcast %struct.ena_admin_acq_get_stats_resp* %30 to %struct.ena_admin_acq_entry*
  %32 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %27, %struct.ena_admin_aq_entry* %29, i32 24, %struct.ena_admin_acq_entry* %31, i32 4)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %3
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
