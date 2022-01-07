; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_bmap }
%struct.qed_bmap = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"cid bitmap wait timed out\0A\00", align 1
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_roce_stop(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_bmap*, align 8
  %4 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %6 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.qed_bmap* %8, %struct.qed_bmap** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load %struct.qed_bmap*, %struct.qed_bmap** %3, align 8
  %11 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qed_bmap*, %struct.qed_bmap** %3, align 8
  %14 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @bitmap_weight(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = call i32 @msleep(i32 100)
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = icmp sgt i32 %20, 20
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %25 = call i32 @DP_NOTICE(%struct.qed_hwfn* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %27

26:                                               ; preds = %18
  br label %9

27:                                               ; preds = %23, %9
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %29 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %30 = call i32 @qed_spq_unregister_async_cb(%struct.qed_hwfn* %28, i32 %29)
  ret void
}

declare dso_local i64 @bitmap_weight(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_spq_unregister_async_cb(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
