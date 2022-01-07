; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_alloc_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_alloc_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_rdma_info* }
%struct.qed_rdma_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate two adjacent qp's'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_ELEM_CXT = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Allocate CID - failed, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_roce_alloc_cid(%struct.qed_hwfn* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.qed_rdma_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 0
  %12 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %11, align 8
  store %struct.qed_rdma_info* %12, %struct.qed_rdma_info** %6, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %14, align 8
  %16 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %20 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %19, i32 0, i32 1
  %21 = call i32 @qed_rdma_bmap_alloc_id(%struct.qed_hwfn* %18, i32* %20, i32* %7)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %26 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %107

29:                                               ; preds = %2
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %32 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %31, i32 0, i32 1
  %33 = call i32 @qed_rdma_bmap_alloc_id(%struct.qed_hwfn* %30, i32* %32, i32* %8)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %35 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %85

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %41, %42
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = call i32 @DP_NOTICE(%struct.qed_hwfn* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %85

50:                                               ; preds = %40
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %52 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %53 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %51, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %59 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %60 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %58, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %66 = load i32, i32* @QED_ELEM_CXT, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @qed_cxt_dynamic_ilt_alloc(%struct.qed_hwfn* %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %50
  br label %85

72:                                               ; preds = %50
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %74 = load i32, i32* @QED_ELEM_CXT, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @qed_cxt_dynamic_ilt_alloc(%struct.qed_hwfn* %73, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %85

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %5, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %107

85:                                               ; preds = %79, %71, %45, %39
  %86 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %87 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %86, i32 0, i32 0
  %88 = call i32 @spin_lock_bh(i32* %87)
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %90 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %91 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %90, i32 0, i32 1
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @qed_bmap_release_id(%struct.qed_hwfn* %89, i32* %91, i32 %92)
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %95 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %96 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %95, i32 0, i32 1
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @qed_bmap_release_id(%struct.qed_hwfn* %94, i32* %96, i32 %97)
  %99 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %6, align 8
  %100 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock_bh(i32* %100)
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %103 = load i32, i32* @QED_MSG_RDMA, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %102, i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %85, %80, %24
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @qed_rdma_bmap_alloc_id(%struct.qed_hwfn*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_cxt_dynamic_ilt_alloc(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_bmap_release_id(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
