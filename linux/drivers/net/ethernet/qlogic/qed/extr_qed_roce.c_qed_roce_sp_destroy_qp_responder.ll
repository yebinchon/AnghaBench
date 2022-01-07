; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_destroy_qp_responder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_sp_destroy_qp_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_10__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qed_rdma_qp = type { i32, i32, i32, i32, i32, %struct.roce_destroy_qp_resp_output_params* }
%struct.roce_destroy_qp_resp_output_params = type { i32 }
%struct.roce_destroy_qp_resp_ramrod_data = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.roce_destroy_qp_resp_ramrod_data }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ROCE_RAMROD_DESTROY_QP = common dso_local global i32 0, align 4
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"qed destroy responder failed: cannot allocate memory (ramrod). rc = %d\0A\00", align 1
@RDMA_RING_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Destroy responder, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32*)* @qed_roce_sp_destroy_qp_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_roce_sp_destroy_qp_responder(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_rdma_qp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.roce_destroy_qp_resp_output_params*, align 8
  %9 = alloca %struct.roce_destroy_qp_resp_ramrod_data*, align 8
  %10 = alloca %struct.qed_sp_init_data, align 4
  %11 = alloca %struct.qed_spq_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = load i32, i32* @QED_MSG_RDMA, align 4
  %17 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %18 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %22 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %26 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %3
  %30 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %31 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %33, i32 %38)
  %40 = sub nsw i32 %32, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @qed_roce_free_cid_pair(%struct.qed_hwfn* %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %147

44:                                               ; preds = %3
  %45 = call i32 @memset(%struct.qed_sp_init_data* %10, i32 0, i32 12)
  %46 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %47 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %51 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %56 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %58 = load i32, i32* @ROCE_RAMROD_DESTROY_QP, align 4
  %59 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %60 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %57, %struct.qed_spq_entry** %11, i32 %58, i32 %59, %struct.qed_sp_init_data* %10)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %44
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %4, align 4
  br label %147

65:                                               ; preds = %44
  %66 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %67 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store %struct.roce_destroy_qp_resp_ramrod_data* %68, %struct.roce_destroy_qp_resp_ramrod_data** %9, align 8
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %70 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i64 @dma_alloc_coherent(i32* %74, i32 4, i32* %12, i32 %75)
  %77 = inttoptr i64 %76 to %struct.roce_destroy_qp_resp_output_params*
  store %struct.roce_destroy_qp_resp_output_params* %77, %struct.roce_destroy_qp_resp_output_params** %8, align 8
  %78 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %8, align 8
  %79 = icmp ne %struct.roce_destroy_qp_resp_output_params* %78, null
  br i1 %79, label %90, label %80

80:                                               ; preds = %65
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @DP_NOTICE(%struct.qed_hwfn* %83, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %87 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %88 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %86, %struct.qed_spq_entry* %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %4, align 4
  br label %147

90:                                               ; preds = %65
  %91 = load %struct.roce_destroy_qp_resp_ramrod_data*, %struct.roce_destroy_qp_resp_ramrod_data** %9, align 8
  %92 = getelementptr inbounds %struct.roce_destroy_qp_resp_ramrod_data, %struct.roce_destroy_qp_resp_ramrod_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @DMA_REGPAIR_LE(i32 %93, i32 %94)
  %96 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %97 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %98 = call i32 @qed_spq_post(%struct.qed_hwfn* %96, %struct.qed_spq_entry* %97, i32* null)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %136

102:                                              ; preds = %90
  %103 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %8, align 8
  %104 = getelementptr inbounds %struct.roce_destroy_qp_resp_output_params, %struct.roce_destroy_qp_resp_output_params* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %111 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %113 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %119 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @RDMA_RING_PAGE_SIZE, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %124 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %123, i32 0, i32 5
  %125 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %124, align 8
  %126 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %127 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dma_free_coherent(i32* %117, i32 %122, %struct.roce_destroy_qp_resp_output_params* %125, i32 %128)
  %130 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %6, align 8
  %131 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %130, i32 0, i32 2
  store i32 0, i32* %131, align 8
  %132 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %133 = load i32, i32* @QED_MSG_RDMA, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %132, i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %102, %101
  %137 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %138 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load %struct.roce_destroy_qp_resp_output_params*, %struct.roce_destroy_qp_resp_output_params** %8, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @dma_free_coherent(i32* %142, i32 4, %struct.roce_destroy_qp_resp_output_params* %143, i32 %144)
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %136, %80, %63, %29
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_roce_free_cid_pair(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.roce_destroy_qp_resp_output_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
