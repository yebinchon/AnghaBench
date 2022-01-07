; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_rdma_query_qp_out_params = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_hwfn = type { i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Query QP, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_qp*, %struct.qed_rdma_query_qp_out_params*)* @qed_rdma_query_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_query_qp(i8* %0, %struct.qed_rdma_qp* %1, %struct.qed_rdma_query_qp_out_params* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_rdma_qp*, align 8
  %6 = alloca %struct.qed_rdma_query_qp_out_params*, align 8
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %5, align 8
  store %struct.qed_rdma_query_qp_out_params* %2, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %10, %struct.qed_hwfn** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %12 = load i32, i32* @QED_MSG_RDMA, align 4
  %13 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %14 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %11, i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %18 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %17, i32 0, i32 17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %21 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %20, i32 0, i32 17
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %23 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %22, i32 0, i32 16
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %26 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %28 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %31 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %30, i32 0, i32 15
  store i32 %29, i32* %31, align 4
  %32 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %33 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %36 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %35, i32 0, i32 14
  store i32 %34, i32* %36, align 8
  %37 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %38 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %41 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 4
  %42 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %43 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %46 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %45, i32 0, i32 12
  store i32 %44, i32* %46, align 8
  %47 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %48 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %51 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %53 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %56 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %58 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %61 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %63 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %66 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %68 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %71 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %73 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %76 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %78 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %81 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %83 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %86 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %88 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %90 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %93 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %95 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %98 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %100 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %103 = getelementptr inbounds %struct.qed_rdma_query_qp_out_params, %struct.qed_rdma_query_qp_out_params* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %105 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %3
  %108 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %109 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %110 = call i32 @qed_iwarp_query_qp(%struct.qed_rdma_qp* %108, %struct.qed_rdma_query_qp_out_params* %109)
  br label %116

111:                                              ; preds = %3
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %113 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %114 = load %struct.qed_rdma_query_qp_out_params*, %struct.qed_rdma_query_qp_out_params** %6, align 8
  %115 = call i32 @qed_roce_query_qp(%struct.qed_hwfn* %112, %struct.qed_rdma_qp* %113, %struct.qed_rdma_query_qp_out_params* %114)
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %111, %107
  %117 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %118 = load i32, i32* @QED_MSG_RDMA, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %117, i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_query_qp(%struct.qed_rdma_qp*, %struct.qed_rdma_query_qp_out_params*) #1

declare dso_local i32 @qed_roce_query_qp(%struct.qed_hwfn*, %struct.qed_rdma_qp*, %struct.qed_rdma_query_qp_out_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
