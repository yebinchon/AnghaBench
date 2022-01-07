; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_bmap_alloc_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_bmap_alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_bmap = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s bitmap: allocated id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_rdma_bmap_alloc_id(%struct.qed_hwfn* %0, %struct.qed_bmap* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_bmap*, align 8
  %7 = alloca i64*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_bmap* %1, %struct.qed_bmap** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.qed_bmap*, %struct.qed_bmap** %6, align 8
  %9 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.qed_bmap*, %struct.qed_bmap** %6, align 8
  %12 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @find_first_zero_bit(i32 %10, i64 %13)
  %15 = load i64*, i64** %7, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.qed_bmap*, %struct.qed_bmap** %6, align 8
  %19 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %3
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.qed_bmap*, %struct.qed_bmap** %6, align 8
  %29 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__set_bit(i64 %27, i32 %30)
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %33 = load i32, i32* @QED_MSG_RDMA, align 4
  %34 = load %struct.qed_bmap*, %struct.qed_bmap** %6, align 8
  %35 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %32, i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %25, %22
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
