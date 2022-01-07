; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_poll_for_freeing_arfs_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_poll_for_freeing_arfs_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QEDE_ARFS_POLL_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Timeout in polling for arfs filter free\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qede_poll_for_freeing_arfs_filters(%struct.qede_dev* %0) #0 {
  %2 = alloca %struct.qede_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %2, align 8
  %4 = load i32, i32* @QEDE_ARFS_POLL_COUNT, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %10 = call i32 @qede_process_arfs_filters(%struct.qede_dev* %9, i32 0)
  %11 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %12 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  br label %22

18:                                               ; preds = %8
  %19 = call i32 @msleep(i32 100)
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %17, %5
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %27 = call i32 @DP_NOTICE(%struct.qede_dev* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %29 = call i32 @qede_process_arfs_filters(%struct.qede_dev* %28, i32 1)
  br label %30

30:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @qede_process_arfs_filters(%struct.qede_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
