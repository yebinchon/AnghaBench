; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_meminfo_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_meminfo_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cudbg_meminfo = type { i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i32, i32*, i32, i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@meminfo_show.memory = internal constant [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"EDC0:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EDC1:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MC:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MC0:\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"MC1:\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HMA:\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@cudbg_region = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"uP RAM:\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"uP Extmem2:\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"\0A%u Rx pages (%u free) of size %uKiB for %u channels\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%u Tx pages (%u free) of size %u%ciB for %u channels\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%u p-structs (%u free)\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Port %d using %u pages out of %u allocated\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Loopback %d using %u pages out of %u allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @meminfo_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meminfo_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.cudbg_meminfo, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %6, align 8
  %13 = call i32 @memset(%struct.cudbg_meminfo* %7, i32 0, i32 128)
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = call i32 @cudbg_fill_meminfo(%struct.adapter* %14, %struct.cudbg_meminfo* %7)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %249

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* @meminfo_show.memory, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 17
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 17
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @mem_region_show(%struct.seq_file* %28, i8* %37, i64 %44, i64 %52)
  br label %54

54:                                               ; preds = %27
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = call i32 @seq_putc(%struct.seq_file* %58, i8 signext 10)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %138, %57
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %141

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 16
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i8**, i8*** @cudbg_region, align 8
  %74 = call i64 @ARRAY_SIZE(i8** %73)
  %75 = icmp uge i64 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %138

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 16
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 16
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 1
  br label %103

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %92
  %104 = phi i64 [ %101, %92 ], [ -1, %102 ]
  %105 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 16
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i64 %104, i64* %110, align 8
  br label %111

111:                                              ; preds = %103, %77
  %112 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %113 = load i8**, i8*** @cudbg_region, align 8
  %114 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 16
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8*, i8** %113, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 16
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 16
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @mem_region_show(%struct.seq_file* %112, i8* %122, i64 %129, i64 %136)
  br label %138

138:                                              ; preds = %111, %76
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %60

141:                                              ; preds = %60
  %142 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %143 = call i32 @seq_putc(%struct.seq_file* %142, i8 signext 10)
  %144 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %145 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 15
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 14
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @mem_region_show(%struct.seq_file* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %146, i64 %148)
  %150 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %151 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 13
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 12
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @mem_region_show(%struct.seq_file* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 %152, i64 %154)
  %156 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %157 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 10
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 11
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 10
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 10
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %156, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %160, i32 %162, i32 %166, i32 %170)
  %172 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %173 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 8
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 9
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 8
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 8
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %172, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %176, i32 %178, i32 %182, i32 %186, i32 %190)
  %192 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %193 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %194, i32 %196)
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %217, %141
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 4
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  %202 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %203 = load i32, i32* %8, align 4
  %204 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %202, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %203, i32 %209, i32 %215)
  br label %217

217:                                              ; preds = %201
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %198

220:                                              ; preds = %198
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %245, %220
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.adapter*, %struct.adapter** %6, align 8
  %224 = getelementptr inbounds %struct.adapter, %struct.adapter* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %222, %227
  br i1 %228, label %229, label %248

229:                                              ; preds = %221
  %230 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %231 = load i32, i32* %8, align 4
  %232 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %7, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (%struct.seq_file*, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %230, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %231, i32 %237, i32 %243)
  br label %245

245:                                              ; preds = %229
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %221

248:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %248, %18
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @memset(%struct.cudbg_meminfo*, i32, i32) #1

declare dso_local i32 @cudbg_fill_meminfo(%struct.adapter*, %struct.cudbg_meminfo*) #1

declare dso_local i32 @mem_region_show(%struct.seq_file*, i8*, i64, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
