; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_fill_cos_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_fill_cos_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.bnx2x_dcbx_cos_params* }
%struct.bnx2x_dcbx_cos_params = type { i64, i64, i64, i32 }
%struct.pg_help_data = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.dcbx_ets_feature = type { i32 }
%struct.cos_help_data = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i64, i64 }

@DCBX_STRICT_PRIORITY = common dso_local global i64 0, align 8
@DCBX_MAX_NUM_PG_BW_ENTRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid pg[%d] data %x\0A\00", align 1
@BNX2X_DCBX_STRICT_INVALID = common dso_local global i64 0, align 8
@DCBX_INVALID_COS_BW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid pri_bitmask for %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Inconsistent config for pausable COS %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Inconsistent config for nonpausable COS %d\0A\00", align 1
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"COS %d PAUSABLE prijoinmask 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"COS %d NONPAUSABLE prijoinmask 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.pg_help_data*, %struct.dcbx_ets_feature*, i32*)* @bnx2x_dcbx_fill_cos_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_fill_cos_params(%struct.bnx2x* %0, %struct.pg_help_data* %1, %struct.dcbx_ets_feature* %2, i32* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.pg_help_data*, align 8
  %7 = alloca %struct.dcbx_ets_feature*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cos_help_data, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.bnx2x_dcbx_cos_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.pg_help_data* %1, %struct.pg_help_data** %6, align 8
  store %struct.dcbx_ets_feature* %2, %struct.dcbx_ets_feature** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %14 = call i32 @memset(%struct.cos_help_data* %9, i32 0, i32 16)
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %70, %4
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %18 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %15
  %22 = load i64, i64* @DCBX_STRICT_PRIORITY, align 8
  %23 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %24 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %22, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %21
  %32 = load i64, i64* @DCBX_MAX_NUM_PG_BW_ENTRIES, align 8
  %33 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %34 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %32, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %44 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %49)
  br label %51

51:                                               ; preds = %41, %31, %21
  %52 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %53 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %62 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %51
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %15

73:                                               ; preds = %15
  %74 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 0
  store i32 1, i32* %74, align 8
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %104, %73
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %78)
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %107

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 8
  %92 = load i64, i64* @BNX2X_DCBX_STRICT_INVALID, align 8
  %93 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i64 %92, i64* %97, align 8
  %98 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %99 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  store i64 %98, i64* %103, align 8
  br label %104

104:                                              ; preds = %81
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %10, align 8
  br label %75

107:                                              ; preds = %75
  %108 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %109 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %113 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %114 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %7, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @bnx2x_dcbx_cee_fill_cos_params(%struct.bnx2x* %112, %struct.pg_help_data* %113, %struct.dcbx_ets_feature* %114, %struct.cos_help_data* %9, i32 %115)
  br label %125

117:                                              ; preds = %107
  %118 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %119 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %120 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %7, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @bnx2x_dcbx_2cos_limit_cee_fill_cos_params(%struct.bnx2x* %118, %struct.pg_help_data* %119, %struct.dcbx_ets_feature* %120, %struct.cos_help_data* %9, i32* %121, i32 %122, i64 %123)
  br label %125

125:                                              ; preds = %117, %111
  store i64 0, i64* %10, align 8
  br label %126

126:                                              ; preds = %257, %125
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = icmp ult i64 %127, %130
  br i1 %131, label %132, label %260

132:                                              ; preds = %126
  %133 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %134 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %137, i64 %138
  store %struct.bnx2x_dcbx_cos_params* %139, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %140 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %147 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %155 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %163 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %171 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %173 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %132
  %178 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %179 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @BNX2X_DCBX_STRICT_INVALID, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %231

183:                                              ; preds = %177, %132
  %184 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %185 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i64, i64* %10, align 8
  %190 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %189)
  br label %191

191:                                              ; preds = %188, %183
  %192 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %193 = call i64 @CHIP_IS_E2(%struct.bnx2x* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %197 = call i64 @CHIP_IS_E3A0(%struct.bnx2x* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %195, %191
  %200 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %201 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %206 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %207 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @DCBX_PFC_PRI_GET_NON_PAUSE(%struct.bnx2x* %205, i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load i64, i64* %10, align 8
  %213 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %212)
  br label %214

214:                                              ; preds = %211, %204, %199
  %215 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %216 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %229, label %219

219:                                              ; preds = %214
  %220 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %221 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %222 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @DCBX_PFC_PRI_GET_PAUSE(%struct.bnx2x* %220, i64 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %219
  %227 = load i64, i64* %10, align 8
  %228 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %227)
  br label %229

229:                                              ; preds = %226, %219, %214
  br label %230

230:                                              ; preds = %229, %195
  br label %231

231:                                              ; preds = %230, %177
  %232 = load %struct.bnx2x_dcbx_cos_params*, %struct.bnx2x_dcbx_cos_params** %13, align 8
  %233 = getelementptr inbounds %struct.bnx2x_dcbx_cos_params, %struct.bnx2x_dcbx_cos_params* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %231
  %237 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %238 = load i64, i64* %10, align 8
  %239 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = load i64, i64* %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @DP(i32 %237, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %238, i64 %244)
  br label %256

246:                                              ; preds = %231
  %247 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %248 = load i64, i64* %10, align 8
  %249 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 1
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = load i64, i64* %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @DP(i32 %247, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %248, i64 %254)
  br label %256

256:                                              ; preds = %246, %236
  br label %257

257:                                              ; preds = %256
  %258 = load i64, i64* %10, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %10, align 8
  br label %126

260:                                              ; preds = %126
  %261 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %9, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %265 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  store i64 %263, i64* %267, align 8
  ret void
}

declare dso_local i32 @memset(%struct.cos_help_data*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_cee_fill_cos_params(%struct.bnx2x*, %struct.pg_help_data*, %struct.dcbx_ets_feature*, %struct.cos_help_data*, i32) #1

declare dso_local i32 @bnx2x_dcbx_2cos_limit_cee_fill_cos_params(%struct.bnx2x*, %struct.pg_help_data*, %struct.dcbx_ets_feature*, %struct.cos_help_data*, i32*, i32, i64) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3A0(%struct.bnx2x*) #1

declare dso_local i64 @DCBX_PFC_PRI_GET_NON_PAUSE(%struct.bnx2x*, i64) #1

declare dso_local i64 @DCBX_PFC_PRI_GET_PAUSE(%struct.bnx2x*, i64) #1

declare dso_local i32 @DP(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
