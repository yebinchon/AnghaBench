; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_flow_stats_batch_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_flow_stats_batch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32 }
%struct.bnxt_tc_stats_batch = type { i32, %struct.bnxt_tc_flow_node* }
%struct.bnxt_tc_flow_node = type { %struct.bnxt_tc_flow }
%struct.bnxt_tc_flow = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, %struct.bnxt_tc_stats_batch*)* @bnxt_tc_flow_stats_batch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_flow_stats_batch_update(%struct.bnxt* %0, i32 %1, %struct.bnxt_tc_stats_batch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_tc_stats_batch*, align 8
  %8 = alloca %struct.bnxt_tc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnxt_tc_flow_node*, align 8
  %12 = alloca %struct.bnxt_tc_flow*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bnxt_tc_stats_batch* %2, %struct.bnxt_tc_stats_batch** %7, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %14, align 8
  store %struct.bnxt_tc_info* %15, %struct.bnxt_tc_info** %8, align 8
  %16 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.bnxt_tc_stats_batch*, %struct.bnxt_tc_stats_batch** %7, align 8
  %19 = call i32 @bnxt_hwrm_cfa_flow_stats_get(%struct.bnxt* %16, i32 %17, %struct.bnxt_tc_stats_batch* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  %30 = load %struct.bnxt_tc_stats_batch*, %struct.bnxt_tc_stats_batch** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %30, i64 %32
  %34 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %33, i32 0, i32 1
  %35 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %34, align 8
  store %struct.bnxt_tc_flow_node* %35, %struct.bnxt_tc_flow_node** %11, align 8
  %36 = load %struct.bnxt_tc_flow_node*, %struct.bnxt_tc_flow_node** %11, align 8
  %37 = getelementptr inbounds %struct.bnxt_tc_flow_node, %struct.bnxt_tc_flow_node* %36, i32 0, i32 0
  store %struct.bnxt_tc_flow* %37, %struct.bnxt_tc_flow** %12, align 8
  %38 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %12, align 8
  %39 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %8, align 8
  %42 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %12, align 8
  %43 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %42, i32 0, i32 3
  %44 = load %struct.bnxt_tc_stats_batch*, %struct.bnxt_tc_stats_batch** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %44, i64 %46
  %48 = getelementptr inbounds %struct.bnxt_tc_stats_batch, %struct.bnxt_tc_stats_batch* %47, i32 0, i32 0
  %49 = call i32 @bnxt_flow_stats_accum(%struct.bnxt_tc_info* %41, %struct.TYPE_4__* %43, i32* %48)
  %50 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %12, align 8
  %51 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %12, align 8
  %55 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %29
  %60 = load i32, i32* @jiffies, align 4
  %61 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %12, align 8
  %62 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %29
  %64 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %12, align 8
  %65 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %25

70:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %22
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @bnxt_hwrm_cfa_flow_stats_get(%struct.bnxt*, i32, %struct.bnxt_tc_stats_batch*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bnxt_flow_stats_accum(%struct.bnxt_tc_info*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
