; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_destroy_qp_requester.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_destroy_qp_requester.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_rdma_qp = type { i32, i32, i32, i32, %struct.roce_destroy_qp_req_output_params* }
%struct.roce_destroy_qp_req_output_params = type { i32 }
%struct.roce_destroy_qp_req_ramrod_data = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.roce_destroy_qp_req_ramrod_data }

@ENOMEM = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"qed destroy requester failed: cannot allocate memory (ramrod)\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_DESTROY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@RDMA_RING_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Destroy requester, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_rdma_qp*)* @qed_roce_sp_destroy_qp_requester to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_roce_sp_destroy_qp_requester(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_rdma_qp*, align 8
  %6 = alloca %struct.roce_destroy_qp_req_output_params*, align 8
  %7 = alloca %struct.roce_destroy_qp_req_ramrod_data*, align 8
  %8 = alloca %struct.qed_sp_init_data, align 4
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load i32, i32* @QED_MSG_RDMA, align 4
  %16 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %17 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %14, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %21 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

25:                                               ; preds = %2
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i64 @dma_alloc_coherent(i32* %31, i32 4, i32* %10, i32 %32)
  %34 = inttoptr i64 %33 to %struct.roce_destroy_qp_req_output_params*
  store %struct.roce_destroy_qp_req_output_params* %34, %struct.roce_destroy_qp_req_output_params** %6, align 8
  %35 = load %struct.roce_destroy_qp_req_output_params*, %struct.roce_destroy_qp_req_output_params** %6, align 8
  %36 = icmp ne %struct.roce_destroy_qp_req_output_params* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = call i32 @DP_NOTICE(%struct.qed_hwfn* %38, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %3, align 4
  br label %113

41:                                               ; preds = %25
  %42 = call i32 @memset(%struct.qed_sp_init_data* %8, i32 0, i32 12)
  %43 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %44 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %49 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %54 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %56 = load i32, i32* @ROCE_RAMROD_DESTROY_QP, align 4
  %57 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %58 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %55, %struct.qed_spq_entry** %9, i32 %56, i32 %57, %struct.qed_sp_init_data* %8)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  br label %102

62:                                               ; preds = %41
  %63 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %64 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store %struct.roce_destroy_qp_req_ramrod_data* %65, %struct.roce_destroy_qp_req_ramrod_data** %7, align 8
  %66 = load %struct.roce_destroy_qp_req_ramrod_data*, %struct.roce_destroy_qp_req_ramrod_data** %7, align 8
  %67 = getelementptr inbounds %struct.roce_destroy_qp_req_ramrod_data, %struct.roce_destroy_qp_req_ramrod_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @DMA_REGPAIR_LE(i32 %68, i32 %69)
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %72 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %73 = call i32 @qed_spq_post(%struct.qed_hwfn* %71, %struct.qed_spq_entry* %72, i32* null)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %102

77:                                               ; preds = %62
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %79 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %85 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %90 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %89, i32 0, i32 4
  %91 = load %struct.roce_destroy_qp_req_output_params*, %struct.roce_destroy_qp_req_output_params** %90, align 8
  %92 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %93 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dma_free_coherent(i32* %83, i32 %88, %struct.roce_destroy_qp_req_output_params* %91, i32 %94)
  %96 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %97 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %99 = load i32, i32* @QED_MSG_RDMA, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %98, i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %77, %76, %61
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %104 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.roce_destroy_qp_req_output_params*, %struct.roce_destroy_qp_req_output_params** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @dma_free_coherent(i32* %108, i32 4, %struct.roce_destroy_qp_req_output_params* %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %102, %37, %24
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.roce_destroy_qp_req_output_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
