; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_flow_stats_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_flow_stats_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_tc_info* }
%struct.bnxt_tc_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_tc_flow_stats_work(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_tc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 0
  %8 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %7, align 8
  store %struct.bnxt_tc_info* %8, %struct.bnxt_tc_info** %3, align 8
  %9 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %17, i32 0, i32 2
  %19 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %19, i32 0, i32 0
  %21 = call i32 @rhashtable_walk_enter(%struct.TYPE_2__* %18, i32* %20)
  br label %22

22:                                               ; preds = %41, %35, %16
  %23 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %24 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %3, align 8
  %25 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bnxt_tc_flow_stats_batch_prep(%struct.bnxt* %23, i32 %26, i32* %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %22

36:                                               ; preds = %30
  br label %48

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %48

41:                                               ; preds = %37
  %42 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %3, align 8
  %45 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bnxt_tc_flow_stats_batch_update(%struct.bnxt* %42, i32 %43, i32 %46)
  br label %22

48:                                               ; preds = %40, %36
  %49 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %3, align 8
  %50 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %49, i32 0, i32 0
  %51 = call i32 @rhashtable_walk_exit(i32* %50)
  br label %52

52:                                               ; preds = %48, %15
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rhashtable_walk_enter(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @bnxt_tc_flow_stats_batch_prep(%struct.bnxt*, i32, i32*) #1

declare dso_local i32 @bnxt_tc_flow_stats_batch_update(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @rhashtable_walk_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
