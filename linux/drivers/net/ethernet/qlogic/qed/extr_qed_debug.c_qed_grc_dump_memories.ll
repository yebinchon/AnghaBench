; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_memories.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_memories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.dbg_dump_split_hdr = type { i32 }
%struct.dbg_array = type { i64, i32* }

@s_dbg_arrays = common dso_local global %struct.TYPE_2__* null, align 8
@BIN_BUF_DBG_DUMP_MEM = common dso_local global i64 0, align 8
@DBG_DUMP_SPLIT_HDR_SPLIT_TYPE_ID = common dso_local global i32 0, align 4
@DBG_DUMP_SPLIT_HDR_DATA_SIZE = common dso_local global i32 0, align 4
@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Dumping split memories is currently not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32)* @qed_grc_dump_memories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_grc_dump_memories(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dbg_dump_split_hdr*, align 8
  %12 = alloca %struct.dbg_array, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %76, %4
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %18 = load i64, i64* @BIN_BUF_DBG_DUMP_MEM, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %25 = load i64, i64* @BIN_BUF_DBG_DUMP_MEM, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %10, align 8
  %31 = getelementptr inbounds i32, i32* %28, i64 %29
  %32 = bitcast i32* %31 to %struct.dbg_dump_split_hdr*
  store %struct.dbg_dump_split_hdr* %32, %struct.dbg_dump_split_hdr** %11, align 8
  %33 = load %struct.dbg_dump_split_hdr*, %struct.dbg_dump_split_hdr** %11, align 8
  %34 = getelementptr inbounds %struct.dbg_dump_split_hdr, %struct.dbg_dump_split_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DBG_DUMP_SPLIT_HDR_SPLIT_TYPE_ID, align 4
  %37 = call i8* @GET_FIELD(i32 %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load %struct.dbg_dump_split_hdr*, %struct.dbg_dump_split_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.dbg_dump_split_hdr, %struct.dbg_dump_split_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DBG_DUMP_SPLIT_HDR_DATA_SIZE, align 4
  %43 = call i8* @GET_FIELD(i32 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %14, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %46 = load i64, i64* @BIN_BUF_DBG_DUMP_MEM, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = getelementptr inbounds %struct.dbg_array, %struct.dbg_array* %12, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds %struct.dbg_array, %struct.dbg_array* %12, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %23
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %60 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i32, i32* %8, align 4
  %65 = bitcast %struct.dbg_array* %12 to { i64, i32* }*
  %66 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %65, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @qed_grc_dump_mem_entries(%struct.qed_hwfn* %59, %struct.qed_ptt* %60, i64 %67, i32* %69, i64* %63, i32 %64)
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %9, align 8
  br label %76

73:                                               ; preds = %23
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %75 = call i32 @DP_NOTICE(%struct.qed_hwfn* %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %58
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %10, align 8
  br label %15

80:                                               ; preds = %15
  %81 = load i64, i64* %9, align 8
  ret i64 %81
}

declare dso_local i8* @GET_FIELD(i32, i32) #1

declare dso_local i64 @qed_grc_dump_mem_entries(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32*, i64*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
