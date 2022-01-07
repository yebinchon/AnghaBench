; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_sge_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_sge_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.sge_qbase_reg_field = type { i32, i8**, i8* }
%struct.ireg_buf = type { i32*, %struct.ireg_field }
%struct.ireg_field = type { i8*, i8*, i8*, i8* }

@t5_sge_dbg_index_array = common dso_local global i8*** null, align 8
@CHELSIO_T5 = common dso_local global i64 0, align 8
@t6_sge_qbase_index_array = common dso_local global i8** null, align 8
@SGE_QBASE_DATA_REG_NUM = common dso_local global i32 0, align 4
@PCIE_FW_MASTER_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_sge_indirect(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.sge_qbase_reg_field*, align 8
  %11 = alloca %struct.ireg_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ireg_field*, align 8
  %15 = alloca i32*, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %16 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %17 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %16, i32 0, i32 0
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %8, align 8
  %19 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %21 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %22 = call i32 @cudbg_get_buff(%struct.cudbg_init* %20, %struct.cudbg_buffer* %21, i32 104, %struct.cudbg_buffer* %9)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %4, align 4
  br label %174

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ireg_buf*
  store %struct.ireg_buf* %30, %struct.ireg_buf** %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %93, %27
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %96

34:                                               ; preds = %31
  %35 = load %struct.ireg_buf*, %struct.ireg_buf** %11, align 8
  %36 = getelementptr inbounds %struct.ireg_buf, %struct.ireg_buf* %35, i32 0, i32 1
  store %struct.ireg_field* %36, %struct.ireg_field** %14, align 8
  %37 = load %struct.ireg_buf*, %struct.ireg_buf** %11, align 8
  %38 = getelementptr inbounds %struct.ireg_buf, %struct.ireg_buf* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %15, align 8
  %40 = load i8***, i8**** @t5_sge_dbg_index_array, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8**, i8*** %40, i64 %42
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.ireg_field*, %struct.ireg_field** %14, align 8
  %48 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i8***, i8**** @t5_sge_dbg_index_array, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8**, i8*** %49, i64 %51
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.ireg_field*, %struct.ireg_field** %14, align 8
  %57 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i8***, i8**** @t5_sge_dbg_index_array, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8**, i8*** %58, i64 %60
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.ireg_field*, %struct.ireg_field** %14, align 8
  %66 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i8***, i8**** @t5_sge_dbg_index_array, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8**, i8*** %67, i64 %69
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 3
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.ireg_field*, %struct.ireg_field** %14, align 8
  %75 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.adapter*, %struct.adapter** %8, align 8
  %77 = load %struct.ireg_field*, %struct.ireg_field** %14, align 8
  %78 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.ireg_field*, %struct.ireg_field** %14, align 8
  %81 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load %struct.ireg_field*, %struct.ireg_field** %14, align 8
  %85 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.ireg_field*, %struct.ireg_field** %14, align 8
  %88 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @t4_read_indirect(%struct.adapter* %76, i8* %79, i8* %82, i32* %83, i8* %86, i8* %89)
  %91 = load %struct.ireg_buf*, %struct.ireg_buf** %11, align 8
  %92 = getelementptr inbounds %struct.ireg_buf, %struct.ireg_buf* %91, i32 1
  store %struct.ireg_buf* %92, %struct.ireg_buf** %11, align 8
  br label %93

93:                                               ; preds = %34
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %31

96:                                               ; preds = %31
  %97 = load %struct.adapter*, %struct.adapter** %8, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @CHELSIO_CHIP_VERSION(i32 %100)
  %102 = load i64, i64* @CHELSIO_T5, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %170

104:                                              ; preds = %96
  %105 = load %struct.ireg_buf*, %struct.ireg_buf** %11, align 8
  %106 = bitcast %struct.ireg_buf* %105 to %struct.sge_qbase_reg_field*
  store %struct.sge_qbase_reg_field* %106, %struct.sge_qbase_reg_field** %10, align 8
  %107 = load i8**, i8*** @t6_sge_qbase_index_array, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %10, align 8
  %111 = getelementptr inbounds %struct.sge_qbase_reg_field, %struct.sge_qbase_reg_field* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %129, %104
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @SGE_QBASE_DATA_REG_NUM, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i8**, i8*** @t6_sge_qbase_index_array, align 8
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %10, align 8
  %124 = getelementptr inbounds %struct.sge_qbase_reg_field, %struct.sge_qbase_reg_field* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %122, i8** %128, align 8
  br label %129

129:                                              ; preds = %116
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %112

132:                                              ; preds = %112
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %142, %132
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @PCIE_FW_MASTER_M, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load %struct.adapter*, %struct.adapter** %8, align 8
  %139 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %10, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @cudbg_read_sge_qbase_indirect_reg(%struct.adapter* %138, %struct.sge_qbase_reg_field* %139, i32 %140, i32 1)
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %133

145:                                              ; preds = %133
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %159, %145
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.adapter*, %struct.adapter** %8, align 8
  %149 = getelementptr inbounds %struct.adapter, %struct.adapter* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %147, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %146
  %155 = load %struct.adapter*, %struct.adapter** %8, align 8
  %156 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %10, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @cudbg_read_sge_qbase_indirect_reg(%struct.adapter* %155, %struct.sge_qbase_reg_field* %156, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %146

162:                                              ; preds = %146
  %163 = load %struct.adapter*, %struct.adapter** %8, align 8
  %164 = getelementptr inbounds %struct.adapter, %struct.adapter* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sge_qbase_reg_field*, %struct.sge_qbase_reg_field** %10, align 8
  %169 = getelementptr inbounds %struct.sge_qbase_reg_field, %struct.sge_qbase_reg_field* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %162, %96
  %171 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %172 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %173 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %171, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %172)
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %170, %25
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_read_indirect(%struct.adapter*, i8*, i8*, i32*, i8*, i8*) #2

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #2

declare dso_local i32 @cudbg_read_sge_qbase_indirect_reg(%struct.adapter*, %struct.sge_qbase_reg_field*, i32, i32) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
