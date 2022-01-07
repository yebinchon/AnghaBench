; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tid_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tid_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { i32, %struct.tid_info, %struct.TYPE_2__ }
%struct.tid_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CHELSIO_T5 = common dso_local global i32 0, align 4
@LE_DB_ACTIVE_TABLE_START_INDEX_A = common dso_local global i32 0, align 4
@LE_DB_CONFIG_A = common dso_local global i32 0, align 4
@HASHEN_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Connections in use: %u\0A\00", align 1
@LE_DB_SERVER_INDEX_A = common dso_local global i32 0, align 4
@LE_DB_SRVR_START_INDEX_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"TID range: %u..%u/%u..%u\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c", in use: %u/%u\0A\00", align 1
@CXGB4_FW_OFLD_CONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"TID range: %u..%u\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c", in use: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"STID range: %u..%u, in use-IPv4/IPv6: %u/%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ATID range: 0..%u, in use: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"FTID range: %u..%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"SFTID range: %u..%u in use: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"HW TID usage: %u IP users, %u IPv6 users\0A\00", align 1
@LE_DB_ACT_CNT_IPV4_A = common dso_local global i32 0, align 4
@LE_DB_ACT_CNT_IPV6_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tid_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tid_info_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.tid_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %6, align 8
  %13 = load %struct.adapter*, %struct.adapter** %6, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.tid_info* %14, %struct.tid_info** %7, align 8
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @CHELSIO_CHIP_VERSION(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CHELSIO_T5, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.adapter*, %struct.adapter** %6, align 8
  %25 = load i32, i32* @LE_DB_ACTIVE_TABLE_START_INDEX_A, align 4
  %26 = call i32 @t4_read_reg(%struct.adapter* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.adapter*, %struct.adapter** %6, align 8
  %29 = load i32, i32* @LE_DB_CONFIG_A, align 4
  %30 = call i32 @t4_read_reg(%struct.adapter* %28, i32 %29)
  %31 = load i32, i32* @HASHEN_F, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %127

34:                                               ; preds = %27
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %37 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %36, i32 0, i32 14
  %38 = call i32 @atomic_read(i32* %37)
  %39 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CHELSIO_T5, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.adapter*, %struct.adapter** %6, align 8
  %45 = load i32, i32* @LE_DB_SERVER_INDEX_A, align 4
  %46 = call i32 @t4_read_reg(%struct.adapter* %44, i32 %45)
  %47 = sdiv i32 %46, 4
  store i32 %47, i32* %9, align 4
  br label %52

48:                                               ; preds = %34
  %49 = load %struct.adapter*, %struct.adapter** %6, align 8
  %50 = load i32, i32* @LE_DB_SRVR_START_INDEX_A, align 4
  %51 = call i32 @t4_read_reg(%struct.adapter* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 %58, 1
  %60 = load %struct.adapter*, %struct.adapter** %6, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %65 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59, i32 %63, i32 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %71 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %70, i32 0, i32 13
  %72 = call i32 @atomic_read(i32* %71)
  %73 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %74 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %73, i32 0, i32 15
  %75 = call i32 @atomic_read(i32* %74)
  %76 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75)
  br label %126

77:                                               ; preds = %52
  %78 = load %struct.adapter*, %struct.adapter** %6, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CXGB4_FW_OFLD_CONN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %77
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %87 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %86, i32 0, i32 17
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %90 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %89, i32 0, i32 16
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.adapter*, %struct.adapter** %6, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %97 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91, i32 %95, i32 %99)
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %103 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %102, i32 0, i32 13
  %104 = call i32 @atomic_read(i32* %103)
  %105 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %106 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %105, i32 0, i32 15
  %107 = call i32 @atomic_read(i32* %106)
  %108 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %107)
  br label %125

109:                                              ; preds = %77
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load %struct.adapter*, %struct.adapter** %6, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %116 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %118)
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %122 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %121, i32 0, i32 15
  %123 = call i32 @atomic_read(i32* %122)
  %124 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %109, %84
  br label %126

126:                                              ; preds = %125, %55
  br label %153

127:                                              ; preds = %27
  %128 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %129 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %127
  %133 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %134 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %135 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %134, i32 0, i32 14
  %136 = call i32 @atomic_read(i32* %135)
  %137 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %142 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add i32 %140, %143
  %145 = sub i32 %144, 1
  %146 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %145)
  %147 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %148 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %149 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %148, i32 0, i32 13
  %150 = call i32 @atomic_read(i32* %149)
  %151 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %132, %127
  br label %153

153:                                              ; preds = %152, %126
  %154 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %155 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %198

158:                                              ; preds = %153
  %159 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %160 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %161 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @CHELSIO_T5, align 4
  %167 = icmp ule i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %170 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  br label %177

173:                                              ; preds = %164, %158
  %174 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %175 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  br label %177

177:                                              ; preds = %173, %168
  %178 = phi i32 [ %172, %168 ], [ %176, %173 ]
  %179 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %180 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %183 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %181, %184
  %186 = sub nsw i32 %185, 1
  %187 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %188 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %187, i32 0, i32 12
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %191 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %190, i32 0, i32 11
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %189, %192
  %194 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %195 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %194, i32 0, i32 11
  %196 = load i64, i64* %195, align 8
  %197 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %159, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %178, i32 %186, i64 %193, i64 %196)
  br label %198

198:                                              ; preds = %177, %153
  %199 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %200 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %205 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %206 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %207, 1
  %209 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %210 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %208, i32 %211)
  br label %213

213:                                              ; preds = %203, %198
  %214 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %215 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %216 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %219 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %222 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %220, %223
  %225 = sub nsw i32 %224, 1
  %226 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %214, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %217, i32 %225)
  %227 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %228 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %213
  %232 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %233 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %234 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %237 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %240 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %238, %241
  %243 = sub nsw i32 %242, 2
  %244 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %245 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %244, i32 0, i32 10
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %232, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %235, i32 %243, i32 %246)
  br label %248

248:                                              ; preds = %231, %213
  %249 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %250 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %248
  %254 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %255 = load %struct.adapter*, %struct.adapter** %6, align 8
  %256 = load i32, i32* @LE_DB_ACT_CNT_IPV4_A, align 4
  %257 = call i32 @t4_read_reg(%struct.adapter* %255, i32 %256)
  %258 = load %struct.adapter*, %struct.adapter** %6, align 8
  %259 = load i32, i32* @LE_DB_ACT_CNT_IPV6_A, align 4
  %260 = call i32 @t4_read_reg(%struct.adapter* %258, i32 %259)
  %261 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %254, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %257, i32 %260)
  br label %262

262:                                              ; preds = %253, %248
  ret i32 0
}

declare dso_local i32 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
