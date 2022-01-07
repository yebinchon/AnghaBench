; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_bmap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_bmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_bmap = type { i32, i32, i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"max_count = %08x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_RDMA_MAX_BMAP_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_rdma_bmap_alloc(%struct.qed_hwfn* %0, %struct.qed_bmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_bmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_bmap* %1, %struct.qed_bmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %11 = load i32, i32* @QED_MSG_RDMA, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %10, i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.qed_bmap*, %struct.qed_bmap** %7, align 8
  %16 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BITS_TO_LONGS(i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @kcalloc(i32 %18, i32 8, i32 %19)
  %21 = load %struct.qed_bmap*, %struct.qed_bmap** %7, align 8
  %22 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.qed_bmap*, %struct.qed_bmap** %7, align 8
  %24 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %40

30:                                               ; preds = %4
  %31 = load %struct.qed_bmap*, %struct.qed_bmap** %7, align 8
  %32 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @QED_RDMA_MAX_BMAP_NAME, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @snprintf(i32 %33, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %38 = load i32, i32* @QED_MSG_RDMA, align 4
  %39 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %37, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
