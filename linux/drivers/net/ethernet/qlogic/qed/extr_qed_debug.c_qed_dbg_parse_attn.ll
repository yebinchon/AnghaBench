; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_parse_attn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_parse_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.user_dbg_array = type { i64* }
%struct.qed_hwfn = type { i32 }
%struct.dbg_attn_block_result = type { i64, i64, %struct.dbg_attn_reg_result*, i32 }
%struct.dbg_attn_reg_result = type { i64, i32, i32, i32 }
%struct.dbg_attn_bit_mapping = type { i32 }

@DBG_ATTN_BLOCK_RESULT_NUM_REGS = common dso_local global i32 0, align 4
@DBG_ATTN_BLOCK_RESULT_ATTN_TYPE = common dso_local global i32 0, align 4
@s_block_info_arr = common dso_local global %struct.TYPE_2__* null, align 8
@s_user_dbg_arrays = common dso_local global %struct.user_dbg_array* null, align 8
@BIN_BUF_DBG_ATTN_INDEXES = common dso_local global i64 0, align 8
@BIN_BUF_DBG_ATTN_NAME_OFFSETS = common dso_local global i64 0, align 8
@BIN_BUF_DBG_PARSING_STRINGS = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_ARRAY_NOT_SET = common dso_local global i32 0, align 4
@DBG_ATTN_REG_RESULT_NUM_REG_ATTN = common dso_local global i32 0, align 4
@DBG_ATTN_BIT_MAPPING_VAL = common dso_local global i32 0, align 4
@DBG_ATTN_BIT_MAPPING_IS_UNUSED_BIT_CNT = common dso_local global i32 0, align 4
@ATTN_TYPE_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Parity\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" [masked]\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DBG_ATTN_REG_RESULT_STS_ADDRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"%s (%s) : %s [address 0x%08x, bit %d]%s\0A\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_parse_attn(%struct.qed_hwfn* %0, %struct.dbg_attn_block_result* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.dbg_attn_block_result*, align 8
  %6 = alloca %struct.user_dbg_array*, align 8
  %7 = alloca %struct.user_dbg_array*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dbg_attn_bit_mapping*, align 8
  %15 = alloca %struct.dbg_attn_reg_result*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.dbg_attn_block_result* %1, %struct.dbg_attn_block_result** %5, align 8
  %24 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %5, align 8
  %25 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DBG_ATTN_BLOCK_RESULT_NUM_REGS, align 4
  %28 = call i64 @GET_FIELD(i32 %26, i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %5, align 8
  %30 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DBG_ATTN_BLOCK_RESULT_ATTN_TYPE, align 4
  %33 = call i64 @GET_FIELD(i32 %31, i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_block_info_arr, align 8
  %36 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %5, align 8
  %37 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  %42 = load %struct.user_dbg_array*, %struct.user_dbg_array** @s_user_dbg_arrays, align 8
  %43 = load i64, i64* @BIN_BUF_DBG_ATTN_INDEXES, align 8
  %44 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %42, i64 %43
  %45 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %2
  %49 = load %struct.user_dbg_array*, %struct.user_dbg_array** @s_user_dbg_arrays, align 8
  %50 = load i64, i64* @BIN_BUF_DBG_ATTN_NAME_OFFSETS, align 8
  %51 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %49, i64 %50
  %52 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.user_dbg_array*, %struct.user_dbg_array** @s_user_dbg_arrays, align 8
  %57 = load i64, i64* @BIN_BUF_DBG_PARSING_STRINGS, align 8
  %58 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %56, i64 %57
  %59 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %55, %48, %2
  %63 = load i32, i32* @DBG_STATUS_DBG_ARRAY_NOT_SET, align 4
  store i32 %63, i32* %3, align 4
  br label %188

64:                                               ; preds = %55
  %65 = load %struct.user_dbg_array*, %struct.user_dbg_array** @s_user_dbg_arrays, align 8
  %66 = load i64, i64* @BIN_BUF_DBG_ATTN_NAME_OFFSETS, align 8
  %67 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %65, i64 %66
  store %struct.user_dbg_array* %67, %struct.user_dbg_array** %6, align 8
  %68 = load %struct.user_dbg_array*, %struct.user_dbg_array** %6, align 8
  %69 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %5, align 8
  %72 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  store i64* %74, i64** %8, align 8
  store i64 0, i64* %12, align 8
  br label %75

75:                                               ; preds = %183, %64
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %186

79:                                               ; preds = %75
  store i64 0, i64* %17, align 8
  %80 = load %struct.dbg_attn_block_result*, %struct.dbg_attn_block_result** %5, align 8
  %81 = getelementptr inbounds %struct.dbg_attn_block_result, %struct.dbg_attn_block_result* %80, i32 0, i32 2
  %82 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %82, i64 %83
  store %struct.dbg_attn_reg_result* %84, %struct.dbg_attn_reg_result** %15, align 8
  %85 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %15, align 8
  %86 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DBG_ATTN_REG_RESULT_NUM_REG_ATTN, align 4
  %89 = call i64 @GET_FIELD(i32 %87, i32 %88)
  store i64 %89, i64* %16, align 8
  %90 = load %struct.user_dbg_array*, %struct.user_dbg_array** @s_user_dbg_arrays, align 8
  %91 = load i64, i64* @BIN_BUF_DBG_ATTN_INDEXES, align 8
  %92 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %90, i64 %91
  store %struct.user_dbg_array* %92, %struct.user_dbg_array** %6, align 8
  %93 = load %struct.user_dbg_array*, %struct.user_dbg_array** %6, align 8
  %94 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = bitcast i64* %95 to %struct.dbg_attn_bit_mapping*
  %97 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %15, align 8
  %98 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.dbg_attn_bit_mapping, %struct.dbg_attn_bit_mapping* %96, i64 %99
  store %struct.dbg_attn_bit_mapping* %100, %struct.dbg_attn_bit_mapping** %14, align 8
  %101 = load %struct.user_dbg_array*, %struct.user_dbg_array** @s_user_dbg_arrays, align 8
  %102 = load i64, i64* @BIN_BUF_DBG_PARSING_STRINGS, align 8
  %103 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %101, i64 %102
  store %struct.user_dbg_array* %103, %struct.user_dbg_array** %7, align 8
  store i64 0, i64* %13, align 8
  br label %104

104:                                              ; preds = %179, %79
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %16, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %182

108:                                              ; preds = %104
  %109 = load %struct.dbg_attn_bit_mapping*, %struct.dbg_attn_bit_mapping** %14, align 8
  %110 = load i64, i64* %13, align 8
  %111 = getelementptr inbounds %struct.dbg_attn_bit_mapping, %struct.dbg_attn_bit_mapping* %109, i64 %110
  %112 = getelementptr inbounds %struct.dbg_attn_bit_mapping, %struct.dbg_attn_bit_mapping* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DBG_ATTN_BIT_MAPPING_VAL, align 4
  %115 = call i64 @GET_FIELD(i32 %113, i32 %114)
  store i64 %115, i64* %18, align 8
  %116 = load %struct.dbg_attn_bit_mapping*, %struct.dbg_attn_bit_mapping** %14, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds %struct.dbg_attn_bit_mapping, %struct.dbg_attn_bit_mapping* %116, i64 %117
  %119 = getelementptr inbounds %struct.dbg_attn_bit_mapping, %struct.dbg_attn_bit_mapping* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @DBG_ATTN_BIT_MAPPING_IS_UNUSED_BIT_CNT, align 4
  %122 = call i64 @GET_FIELD(i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %108
  %125 = load i64, i64* %18, align 8
  %126 = load i64, i64* %17, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %17, align 8
  br label %179

128:                                              ; preds = %108
  %129 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %15, align 8
  %130 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %17, align 8
  %133 = call i32 @BIT(i64 %132)
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = load i64, i64* %17, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %17, align 8
  br label %179

139:                                              ; preds = %128
  %140 = load i64*, i64** %8, align 8
  %141 = load i64, i64* %18, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %22, align 8
  %144 = load %struct.user_dbg_array*, %struct.user_dbg_array** %7, align 8
  %145 = getelementptr inbounds %struct.user_dbg_array, %struct.user_dbg_array* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = bitcast i64* %146 to i8*
  %148 = load i64, i64* %22, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %19, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @ATTN_TYPE_INTERRUPT, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %154, i8** %20, align 8
  %155 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %15, align 8
  %156 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i64, i64* %17, align 8
  %159 = call i32 @BIT(i64 %158)
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  store i8* %163, i8** %21, align 8
  %164 = load %struct.dbg_attn_reg_result*, %struct.dbg_attn_reg_result** %15, align 8
  %165 = getelementptr inbounds %struct.dbg_attn_reg_result, %struct.dbg_attn_reg_result* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DBG_ATTN_REG_RESULT_STS_ADDRESS, align 4
  %168 = call i64 @GET_FIELD(i32 %166, i32 %167)
  store i64 %168, i64* %23, align 8
  %169 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = load i8*, i8** %20, align 8
  %172 = load i8*, i8** %19, align 8
  %173 = load i64, i64* %23, align 8
  %174 = load i64, i64* %17, align 8
  %175 = load i8*, i8** %21, align 8
  %176 = call i32 @DP_NOTICE(%struct.qed_hwfn* %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %170, i8* %171, i8* %172, i64 %173, i64 %174, i8* %175)
  %177 = load i64, i64* %17, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %17, align 8
  br label %179

179:                                              ; preds = %139, %136, %124
  %180 = load i64, i64* %13, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %13, align 8
  br label %104

182:                                              ; preds = %104
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %12, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %12, align 8
  br label %75

186:                                              ; preds = %75
  %187 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %62
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i8*, i8*, i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
