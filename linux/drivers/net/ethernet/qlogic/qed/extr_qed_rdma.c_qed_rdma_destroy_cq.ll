; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_destroy_cq_in_params = type { i32 }
%struct.qed_rdma_destroy_cq_out_params = type { i32 }
%struct.qed_hwfn = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_destroy_cq_output_params = type { i32 }
%struct.rdma_destroy_cq_ramrod_data = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rdma_destroy_cq_ramrod_data }

@ENOMEM = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"qed destroy cq failed: cannot allocate memory (ramrod)\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_DESTROY_CQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Destroyed CQ, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_out_params*)* @qed_rdma_destroy_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_destroy_cq(i8* %0, %struct.qed_rdma_destroy_cq_in_params* %1, %struct.qed_rdma_destroy_cq_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qed_rdma_destroy_cq_in_params*, align 8
  %7 = alloca %struct.qed_rdma_destroy_cq_out_params*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.rdma_destroy_cq_output_params*, align 8
  %10 = alloca %struct.rdma_destroy_cq_ramrod_data*, align 8
  %11 = alloca %struct.qed_sp_init_data, align 4
  %12 = alloca %struct.qed_spq_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.qed_rdma_destroy_cq_in_params* %1, %struct.qed_rdma_destroy_cq_in_params** %6, align 8
  store %struct.qed_rdma_destroy_cq_out_params* %2, %struct.qed_rdma_destroy_cq_out_params** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %17, %struct.qed_hwfn** %8, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %15, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %21 = load i32, i32* @QED_MSG_RDMA, align 4
  %22 = load %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_in_params** %6, align 8
  %23 = getelementptr inbounds %struct.qed_rdma_destroy_cq_in_params, %struct.qed_rdma_destroy_cq_in_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i64 @dma_alloc_coherent(i32* %31, i32 4, i32* %13, i32 %32)
  %34 = inttoptr i64 %33 to %struct.rdma_destroy_cq_output_params*
  store %struct.rdma_destroy_cq_output_params* %34, %struct.rdma_destroy_cq_output_params** %9, align 8
  %35 = load %struct.rdma_destroy_cq_output_params*, %struct.rdma_destroy_cq_output_params** %9, align 8
  %36 = icmp ne %struct.rdma_destroy_cq_output_params* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %3
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %39 = call i32 @DP_NOTICE(%struct.qed_hwfn* %38, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %4, align 4
  br label %136

41:                                               ; preds = %3
  %42 = call i32 @memset(%struct.qed_sp_init_data* %11, i32 0, i32 12)
  %43 = load %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_in_params** %6, align 8
  %44 = getelementptr inbounds %struct.qed_rdma_destroy_cq_in_params, %struct.qed_rdma_destroy_cq_in_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %11, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %11, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %53 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %11, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %55 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %60 = load i32, i32* @RDMA_RAMROD_DESTROY_CQ, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %59, %struct.qed_spq_entry** %12, i32 %60, i32 %61, %struct.qed_sp_init_data* %11)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  br label %125

66:                                               ; preds = %41
  %67 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %68 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store %struct.rdma_destroy_cq_ramrod_data* %69, %struct.rdma_destroy_cq_ramrod_data** %10, align 8
  %70 = load %struct.rdma_destroy_cq_ramrod_data*, %struct.rdma_destroy_cq_ramrod_data** %10, align 8
  %71 = getelementptr inbounds %struct.rdma_destroy_cq_ramrod_data, %struct.rdma_destroy_cq_ramrod_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @DMA_REGPAIR_LE(i32 %72, i32 %73)
  %75 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %76 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %77 = call i32 @qed_spq_post(%struct.qed_hwfn* %75, %struct.qed_spq_entry* %76, i32* null)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %125

81:                                               ; preds = %66
  %82 = load %struct.rdma_destroy_cq_output_params*, %struct.rdma_destroy_cq_output_params** %9, align 8
  %83 = getelementptr inbounds %struct.rdma_destroy_cq_output_params, %struct.rdma_destroy_cq_output_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = load %struct.qed_rdma_destroy_cq_out_params*, %struct.qed_rdma_destroy_cq_out_params** %7, align 8
  %87 = getelementptr inbounds %struct.qed_rdma_destroy_cq_out_params, %struct.qed_rdma_destroy_cq_out_params* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %89 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.rdma_destroy_cq_output_params*, %struct.rdma_destroy_cq_output_params** %9, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @dma_free_coherent(i32* %93, i32 4, %struct.rdma_destroy_cq_output_params* %94, i32 %95)
  %97 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %98 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = call i32 @spin_lock_bh(i32* %100)
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %104 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load %struct.qed_rdma_destroy_cq_in_params*, %struct.qed_rdma_destroy_cq_in_params** %6, align 8
  %108 = getelementptr inbounds %struct.qed_rdma_destroy_cq_in_params, %struct.qed_rdma_destroy_cq_in_params* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %110, i32 %111)
  %113 = sub nsw i32 %109, %112
  %114 = call i32 @qed_bmap_release_id(%struct.qed_hwfn* %102, i32* %106, i32 %113)
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %116 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = call i32 @spin_unlock_bh(i32* %118)
  %120 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %121 = load i32, i32* @QED_MSG_RDMA, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %120, i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %4, align 4
  br label %136

125:                                              ; preds = %80, %65
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %127 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.rdma_destroy_cq_output_params*, %struct.rdma_destroy_cq_output_params** %9, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @dma_free_coherent(i32* %131, i32 4, %struct.rdma_destroy_cq_output_params* %132, i32 %133)
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %125, %81, %37
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.rdma_destroy_cq_output_params*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @qed_bmap_release_id(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
