; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_big_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_big_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big_ram_defs = type { i32*, i32, i32, i32, i32*, i32 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64 }
%struct.qed_ptt = type { i32 }

@__const.qed_grc_dump_big_ram.mem_name = private unnamed_addr constant [12 x i8] c"???_BIG_RAM\00", align 1
@__const.qed_grc_dump_big_ram.type_name = private unnamed_addr constant [8 x i8] c"???_RAM\00", align 1
@s_big_ram_defs = common dso_local global %struct.big_ram_defs* null, align 8
@BIG_RAM_NAME_LEN = common dso_local global i32 0, align 4
@BRB_REG_BIG_RAM_DATA_SIZE = common dso_local global i32 0, align 4
@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i64)* @qed_grc_dump_big_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_grc_dump_big_ram(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dbg_tools_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [12 x i8], align 1
  %19 = alloca [8 x i8], align 1
  %20 = alloca %struct.big_ram_defs*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  store %struct.dbg_tools_data* %24, %struct.dbg_tools_data** %12, align 8
  store i32 0, i32* %15, align 4
  %25 = bitcast [12 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.qed_grc_dump_big_ram.mem_name, i32 0, i32 0), i64 12, i1 false)
  %26 = bitcast [8 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.qed_grc_dump_big_ram.type_name, i32 0, i32 0), i64 8, i1 false)
  %27 = load %struct.big_ram_defs*, %struct.big_ram_defs** @s_big_ram_defs, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %27, i64 %28
  store %struct.big_ram_defs* %29, %struct.big_ram_defs** %20, align 8
  %30 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %31 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %34 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %40 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %41 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @qed_rd(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %46 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %49 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = and i32 %44, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 256, i32 128
  store i32 %57, i32* %13, align 4
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %59 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %60 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BIG_RAM_NAME_LEN, align 4
  %63 = call i32 @strncpy(i8* %58, i32 %61, i32 %62)
  %64 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %65 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %66 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BIG_RAM_NAME_LEN, align 4
  %69 = call i32 @strncpy(i8* %64, i32 %67, i32 %68)
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %10, align 4
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 %78, 8
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %81 = call i32 @qed_grc_dump_mem_hdr(%struct.qed_hwfn* %70, i32* %74, i32 %75, i8* %76, i32 0, i32 %77, i32 %79, i32 0, i8* %80, i32 0, i32 0)
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %5
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %6, align 4
  br label %128

90:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %91

91:                                               ; preds = %123, %90
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @BRB_REG_BIG_RAM_DATA_SIZE, align 4
  %95 = call i32 @DIV_ROUND_UP(i32 %93, i32 %94)
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %91
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %99 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %100 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %101 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @qed_wr(%struct.qed_hwfn* %98, %struct.qed_ptt* %99, i32 %102, i32 %103)
  %105 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %106 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @BYTES_TO_DWORDS(i32 %107)
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* @BRB_REG_BIG_RAM_DATA_SIZE, align 4
  store i32 %109, i32* %22, align 4
  %110 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %111 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %120 = call i32 @qed_grc_dump_addr_range(%struct.qed_hwfn* %110, %struct.qed_ptt* %111, i32* %115, i32 %116, i32 %117, i32 %118, i32 0, i32 %119, i32 0)
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %97
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %91

126:                                              ; preds = %91
  %127 = load i32, i32* %15, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %86
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @qed_grc_dump_mem_hdr(%struct.qed_hwfn*, i32*, i32, i8*, i32, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #2

declare dso_local i32 @BYTES_TO_DWORDS(i32) #2

declare dso_local i32 @qed_grc_dump_addr_range(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
