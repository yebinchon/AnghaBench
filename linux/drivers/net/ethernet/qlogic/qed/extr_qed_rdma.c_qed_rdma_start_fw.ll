; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_start_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_start_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qed_rdma_start_in_params = type { i64, i64, %struct.qed_rdma_cnq_params* }
%struct.qed_rdma_cnq_params = type { i32, i32 }
%struct.qed_ptt = type { i32 }
%struct.rdma_init_func_ramrod_data = type { %struct.rdma_cnq_params*, %struct.rdma_init_func_hdr }
%struct.rdma_cnq_params = type { i8*, i32, i32, i32, i8* }
%struct.rdma_init_func_hdr = type { i64, i32, i64 }
%struct.qed_sp_init_data = type { i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_14__ }
%struct.TYPE_9__ = type { %struct.rdma_init_func_ramrod_data }
%struct.TYPE_14__ = type { %struct.rdma_init_func_ramrod_data }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Starting FW\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_FUNC_INIT = common dso_local global i32 0, align 4
@QED_RDMA_CNQ_RAM = common dso_local global i32 0, align 4
@QED_RDMA_CQ_MODE_16_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_rdma_start_in_params*, %struct.qed_ptt*)* @qed_rdma_start_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_start_fw(%struct.qed_hwfn* %0, %struct.qed_rdma_start_in_params* %1, %struct.qed_ptt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_rdma_start_in_params*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.rdma_init_func_ramrod_data*, align 8
  %9 = alloca %struct.qed_rdma_cnq_params*, align 8
  %10 = alloca %struct.rdma_init_func_hdr*, align 8
  %11 = alloca %struct.rdma_cnq_params*, align 8
  %12 = alloca %struct.qed_sp_init_data, align 4
  %13 = alloca %struct.qed_spq_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_rdma_start_in_params* %1, %struct.qed_rdma_start_in_params** %6, align 8
  store %struct.qed_ptt* %2, %struct.qed_ptt** %7, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %19 = load i32, i32* @QED_MSG_RDMA, align 4
  %20 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %18, i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %6, align 8
  %22 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  %28 = call i32 @memset(%struct.qed_sp_init_data* %12, i32 0, i32 8)
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %35 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %37 = load i32, i32* @RDMA_RAMROD_FUNC_INIT, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %36, %struct.qed_spq_entry** %13, i32 %37, i32 %42, %struct.qed_sp_init_data* %12)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %4, align 4
  br label %159

48:                                               ; preds = %3
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %50 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %54 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %55 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = call i32 @qed_iwarp_init_fw_ramrod(%struct.qed_hwfn* %53, %struct.TYPE_14__* %56)
  %58 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %59 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store %struct.rdma_init_func_ramrod_data* %61, %struct.rdma_init_func_ramrod_data** %8, align 8
  br label %67

62:                                               ; preds = %48
  %63 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %64 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store %struct.rdma_init_func_ramrod_data* %66, %struct.rdma_init_func_ramrod_data** %8, align 8
  br label %67

67:                                               ; preds = %62, %52
  %68 = load %struct.rdma_init_func_ramrod_data*, %struct.rdma_init_func_ramrod_data** %8, align 8
  %69 = getelementptr inbounds %struct.rdma_init_func_ramrod_data, %struct.rdma_init_func_ramrod_data* %68, i32 0, i32 1
  store %struct.rdma_init_func_hdr* %69, %struct.rdma_init_func_hdr** %10, align 8
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %71 = load i32, i32* @QED_RDMA_CNQ_RAM, align 4
  %72 = call i64 @RESC_START(%struct.qed_hwfn* %70, i32 %71)
  %73 = load %struct.rdma_init_func_hdr*, %struct.rdma_init_func_hdr** %10, align 8
  %74 = getelementptr inbounds %struct.rdma_init_func_hdr, %struct.rdma_init_func_hdr* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %6, align 8
  %76 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rdma_init_func_hdr*, %struct.rdma_init_func_hdr** %10, align 8
  %79 = getelementptr inbounds %struct.rdma_init_func_hdr, %struct.rdma_init_func_hdr* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %6, align 8
  %81 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @QED_RDMA_CQ_MODE_16_BITS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load %struct.rdma_init_func_hdr*, %struct.rdma_init_func_hdr** %10, align 8
  %87 = getelementptr inbounds %struct.rdma_init_func_hdr, %struct.rdma_init_func_hdr* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  br label %91

88:                                               ; preds = %67
  %89 = load %struct.rdma_init_func_hdr*, %struct.rdma_init_func_hdr** %10, align 8
  %90 = getelementptr inbounds %struct.rdma_init_func_hdr, %struct.rdma_init_func_hdr* %89, i32 0, i32 1
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  store i64 0, i64* %14, align 8
  br label %92

92:                                               ; preds = %152, %91
  %93 = load i64, i64* %14, align 8
  %94 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %6, align 8
  %95 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %155

98:                                               ; preds = %92
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i64 @qed_rdma_get_sb_id(%struct.qed_hwfn* %99, i64 %100)
  store i64 %101, i64* %15, align 8
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %103 = load i64, i64* %15, align 8
  %104 = call i64 @qed_get_igu_sb_id(%struct.qed_hwfn* %102, i64 %103)
  store i64 %104, i64* %16, align 8
  %105 = load i64, i64* %16, align 8
  %106 = call i8* @cpu_to_le16(i64 %105)
  %107 = load %struct.rdma_init_func_ramrod_data*, %struct.rdma_init_func_ramrod_data** %8, align 8
  %108 = getelementptr inbounds %struct.rdma_init_func_ramrod_data, %struct.rdma_init_func_ramrod_data* %107, i32 0, i32 0
  %109 = load %struct.rdma_cnq_params*, %struct.rdma_cnq_params** %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds %struct.rdma_cnq_params, %struct.rdma_cnq_params* %109, i64 %110
  %112 = getelementptr inbounds %struct.rdma_cnq_params, %struct.rdma_cnq_params* %111, i32 0, i32 4
  store i8* %106, i8** %112, align 8
  %113 = load %struct.rdma_init_func_ramrod_data*, %struct.rdma_init_func_ramrod_data** %8, align 8
  %114 = getelementptr inbounds %struct.rdma_init_func_ramrod_data, %struct.rdma_init_func_ramrod_data* %113, i32 0, i32 0
  %115 = load %struct.rdma_cnq_params*, %struct.rdma_cnq_params** %114, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds %struct.rdma_cnq_params, %struct.rdma_cnq_params* %115, i64 %116
  store %struct.rdma_cnq_params* %117, %struct.rdma_cnq_params** %11, align 8
  %118 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %6, align 8
  %119 = getelementptr inbounds %struct.qed_rdma_start_in_params, %struct.qed_rdma_start_in_params* %118, i32 0, i32 2
  %120 = load %struct.qed_rdma_cnq_params*, %struct.qed_rdma_cnq_params** %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds %struct.qed_rdma_cnq_params, %struct.qed_rdma_cnq_params* %120, i64 %121
  store %struct.qed_rdma_cnq_params* %122, %struct.qed_rdma_cnq_params** %9, align 8
  %123 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %124 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.rdma_cnq_params*, %struct.rdma_cnq_params** %11, align 8
  %129 = getelementptr inbounds %struct.rdma_cnq_params, %struct.rdma_cnq_params* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.qed_rdma_cnq_params*, %struct.qed_rdma_cnq_params** %9, align 8
  %131 = getelementptr inbounds %struct.qed_rdma_cnq_params, %struct.qed_rdma_cnq_params* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rdma_cnq_params*, %struct.rdma_cnq_params** %11, align 8
  %134 = getelementptr inbounds %struct.rdma_cnq_params, %struct.rdma_cnq_params* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.rdma_cnq_params*, %struct.rdma_cnq_params** %11, align 8
  %136 = getelementptr inbounds %struct.rdma_cnq_params, %struct.rdma_cnq_params* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.qed_rdma_cnq_params*, %struct.qed_rdma_cnq_params** %9, align 8
  %139 = getelementptr inbounds %struct.qed_rdma_cnq_params, %struct.qed_rdma_cnq_params* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @DMA_REGPAIR_LE(i32 %137, i32 %140)
  %142 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %143 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %14, align 8
  %148 = add i64 %146, %147
  %149 = call i8* @cpu_to_le16(i64 %148)
  %150 = load %struct.rdma_cnq_params*, %struct.rdma_cnq_params** %11, align 8
  %151 = getelementptr inbounds %struct.rdma_cnq_params, %struct.rdma_cnq_params* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %98
  %153 = load i64, i64* %14, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %14, align 8
  br label %92

155:                                              ; preds = %92
  %156 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %157 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %158 = call i32 @qed_spq_post(%struct.qed_hwfn* %156, %struct.qed_spq_entry* %157, i32* null)
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %46
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_init_fw_ramrod(%struct.qed_hwfn*, %struct.TYPE_14__*) #1

declare dso_local i64 @RESC_START(%struct.qed_hwfn*, i32) #1

declare dso_local i64 @qed_rdma_get_sb_id(%struct.qed_hwfn*, i64) #1

declare dso_local i64 @qed_get_igu_sb_id(%struct.qed_hwfn*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
