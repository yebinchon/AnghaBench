; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.mtdswap_dev = type { i32, i32, i64*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.rb_root }
%struct.rb_root = type { i64 }

@MTDSWAP_TREE_CNT = common dso_local global i32 0, align 4
@mtdswap_show.name = internal constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"bitflip\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"failing\00", align 1
@BLOCK_UNDEF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"%s:\09%5d erase blocks, erased min %d, max %d times\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%s:\09%5d erase blocks, all erased %d times\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"bad:\09%5u erase blocks\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"current erase block: %u pages used, %u free, erased %u times\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"total erasures: %lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"mtdswap_readsect count: %llu\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"mtdswap_writesect count: %llu\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"mtdswap_discard count: %llu\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"mtd read count: %llu\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"mtd write count: %llu\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"discarded pages count: %llu\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"total pages: %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"pages mapped: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mtdswap_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtdswap_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.rb_root*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.mtdswap_dev*
  store %struct.mtdswap_dev* %23, %struct.mtdswap_dev** %5, align 8
  %24 = load i32, i32* @MTDSWAP_TREE_CNT, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load i32, i32* @MTDSWAP_TREE_CNT, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  %31 = load i32, i32* @MTDSWAP_TREE_CNT, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %34 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %35 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %34, i32 0, i32 10
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %82, %2
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @MTDSWAP_TREE_CNT, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %45 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %44, i32 0, i32 14
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store %struct.rb_root* %50, %struct.rb_root** %19, align 8
  %51 = load %struct.rb_root*, %struct.rb_root** %19, align 8
  %52 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %43
  %56 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %56, i32 0, i32 14
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %27, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load %struct.rb_root*, %struct.rb_root** %19, align 8
  %68 = call i32 @MTDSWAP_ECNT_MIN(%struct.rb_root* %67)
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %30, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load %struct.rb_root*, %struct.rb_root** %19, align 8
  %73 = call i32 @MTDSWAP_ECNT_MAX(%struct.rb_root* %72)
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %33, i64 %75
  store i32 %73, i32* %76, align 4
  br label %81

77:                                               ; preds = %43
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %27, i64 %79
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %55
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %39

85:                                               ; preds = %39
  %86 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %87 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %86, i32 0, i32 13
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  store i32 1, i32* %12, align 4
  %91 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %92 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %13, align 4
  %94 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %95 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %94, i32 0, i32 13
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %90, %85
  store i64 0, i64* %6, align 8
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %117, %99
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %103 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %108 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %107, i32 0, i32 12
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %11, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %100

120:                                              ; preds = %100
  %121 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %122 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %125 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %124, i32 0, i32 11
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %123, %128
  store i32 %129, i32* %18, align 4
  %130 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %131 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %130, i32 0, i32 11
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @mtdswap_badblocks(%struct.TYPE_10__* %132, i32 %133)
  store i32 %134, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %135 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %136 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %135, i32 0, i32 10
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %158, %120
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %146 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @BLOCK_UNDEF, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load i32, i32* %16, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %16, align 4
  br label %157

157:                                              ; preds = %154, %144
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %140

161:                                              ; preds = %140
  %162 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %163 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %162, i32 0, i32 10
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = call i32 @mutex_unlock(i32* %165)
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %223, %161
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @MTDSWAP_TREE_CNT, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %171, label %226

171:                                              ; preds = %167
  %172 = load i32, i32* %11, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %27, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %171
  br label %223

178:                                              ; preds = %171
  %179 = load i32, i32* %11, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %30, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %11, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %33, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %182, %186
  br i1 %187, label %188, label %207

188:                                              ; preds = %178
  %189 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %190 = load i32, i32* %11, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [7 x i8*], [7 x i8*]* @mtdswap_show.name, i64 0, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %27, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %11, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %30, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %33, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %189, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8* %193, i32 %197, i32 %201, i32 %205)
  br label %222

207:                                              ; preds = %178
  %208 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %209 = load i32, i32* %11, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [7 x i8*], [7 x i8*]* @mtdswap_show.name, i64 0, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %27, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %30, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %208, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %212, i32 %216, i32 %220)
  br label %222

222:                                              ; preds = %207, %188
  br label %223

223:                                              ; preds = %222, %177
  %224 = load i32, i32* %11, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %167

226:                                              ; preds = %167
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %231 = load i32, i32* %15, align 4
  %232 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %229, %226
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %240 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sub i32 %241, %242
  %244 = load i32, i32* %14, align 4
  %245 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %237, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %238, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %236, %233
  %247 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %248 = load i64, i64* %6, align 8
  %249 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %247, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i64 %248)
  %250 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %251 = call i32 @seq_puts(%struct.seq_file* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %252 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %253 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %254 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %252, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %255)
  %257 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %258 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %259 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %257, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %260)
  %262 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %263 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %264 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %262, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %265)
  %267 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %268 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %269 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  %271 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %270)
  %272 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %273 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %274 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %272, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %275)
  %277 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %278 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %279 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %277, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %280)
  %282 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %283 = call i32 @seq_puts(%struct.seq_file* %282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %284 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %285 = load i32, i32* %17, align 4
  %286 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %284, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %285)
  %287 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %288 = load i32, i32* %16, align 4
  %289 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %287, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %288)
  %290 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %290)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @MTDSWAP_ECNT_MIN(%struct.rb_root*) #2

declare dso_local i32 @MTDSWAP_ECNT_MAX(%struct.rb_root*) #2

declare dso_local i32 @mtdswap_badblocks(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
