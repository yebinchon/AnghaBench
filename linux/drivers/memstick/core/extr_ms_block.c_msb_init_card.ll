; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.memstick_dev = type { %struct.TYPE_5__, %struct.memstick_host* }
%struct.TYPE_5__ = type { i64 }
%struct.memstick_host = type { i32 }
%struct.msb_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, %struct.ms_boot_page* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ms_boot_page = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@MEMSTICK_CLASS_ROM = common dso_local global i64 0, align 8
@MEMSTICK_CAP_PAR4 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"device page %d size isn't supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@chs_table = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Total block count = %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Each block consists of %d pages\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Page size = %d bytes\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Parallel mode supported: %d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Read only: %d\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"failed to read bad block table from primary boot block, trying from backup\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Scan of media failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*)* @msb_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_init_card(%struct.memstick_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca %struct.memstick_host*, align 8
  %6 = alloca %struct.ms_boot_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  %10 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %11 = call %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev* %10)
  store %struct.msb_data* %11, %struct.msb_data** %4, align 8
  %12 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %13 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %12, i32 0, i32 1
  %14 = load %struct.memstick_host*, %struct.memstick_host** %13, align 8
  store %struct.memstick_host* %14, %struct.memstick_host** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %16 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %18 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MEMSTICK_CLASS_ROM, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %25 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MEMSTICK_CLASS_ROM, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %32 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %23, %1
  %34 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %35 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %34, i32 0, i32 2
  store i32 -1, i32* %35, align 8
  %36 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %37 = call i32 @msb_reset(%struct.msb_data* %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %270

42:                                               ; preds = %33
  %43 = load %struct.memstick_host*, %struct.memstick_host** %5, align 8
  %44 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MEMSTICK_CAP_PAR4, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %51 = call i32 @msb_switch_to_parallel(%struct.msb_data* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %54 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %53, i32 0, i32 3
  store i32 20, i32* %54, align 4
  %55 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %56 = call i32 @msb_read_boot_blocks(%struct.msb_data* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %270

62:                                               ; preds = %52
  %63 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %64 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %63, i32 0, i32 9
  %65 = load %struct.ms_boot_page*, %struct.ms_boot_page** %64, align 8
  %66 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %65, i64 0
  store %struct.ms_boot_page* %66, %struct.ms_boot_page** %6, align 8
  %67 = load %struct.ms_boot_page*, %struct.ms_boot_page** %6, align 8
  %68 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %72 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ms_boot_page*, %struct.ms_boot_page** %6, align 8
  %74 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %78 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ms_boot_page*, %struct.ms_boot_page** %6, align 8
  %80 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 2
  %84 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %85 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %87 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %90 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %94 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %96 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %62
  %101 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %102 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %270

107:                                              ; preds = %62
  %108 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %109 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i32 @kzalloc(i32 %110, i32 %111)
  %113 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %114 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 8
  %115 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %116 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %107
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %270

122:                                              ; preds = %107
  %123 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %124 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %127 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %125, %128
  %130 = ashr i32 %129, 20
  store i32 %130, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %177, %122
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chs_table, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %180

139:                                              ; preds = %131
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chs_table, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %177

149:                                              ; preds = %139
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chs_table, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %157 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chs_table, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %166 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %165, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** @chs_table, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %175 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 4
  br label %180

177:                                              ; preds = %148
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %131

180:                                              ; preds = %149, %131
  %181 = load %struct.ms_boot_page*, %struct.ms_boot_page** %6, align 8
  %182 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load i32, i32* @MEMSTICK_CAP_PAR4, align 4
  %188 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %189 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %180
  %193 = load %struct.ms_boot_page*, %struct.ms_boot_page** %6, align 8
  %194 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 3
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %201 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %200, i32 0, i32 1
  store i32 1, i32* %201, align 4
  br label %202

202:                                              ; preds = %199, %192
  %203 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %204 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  %207 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %208 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %209)
  %211 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %212 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  %215 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %216 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @MEMSTICK_CAP_PAR4, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %223)
  %225 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %226 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %227)
  %229 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %230 = call i32 @msb_cache_init(%struct.msb_data* %229)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %202
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %2, align 4
  br label %270

235:                                              ; preds = %202
  %236 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %237 = call i32 @msb_ftl_initialize(%struct.msb_data* %236)
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %2, align 4
  br label %270

242:                                              ; preds = %235
  %243 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %244 = call i32 @msb_read_bad_block_table(%struct.msb_data* %243, i32 0)
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %242
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = sub nsw i32 0, %249
  %251 = icmp ne i32 %248, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  %254 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %255 = call i32 @msb_read_bad_block_table(%struct.msb_data* %254, i32 1)
  store i32 %255, i32* %7, align 4
  br label %256

256:                                              ; preds = %252, %247, %242
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = load i32, i32* %7, align 4
  store i32 %260, i32* %2, align 4
  br label %270

261:                                              ; preds = %256
  %262 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %263 = call i32 @msb_ftl_scan(%struct.msb_data* %262)
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* %7, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %268 = load i32, i32* %7, align 4
  store i32 %268, i32* %2, align 4
  br label %270

269:                                              ; preds = %261
  store i32 0, i32* %2, align 4
  br label %270

270:                                              ; preds = %269, %266, %259, %240, %233, %119, %100, %59, %40
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local %struct.msb_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @msb_reset(%struct.msb_data*, i32) #1

declare dso_local i32 @msb_switch_to_parallel(%struct.msb_data*) #1

declare dso_local i32 @msb_read_boot_blocks(%struct.msb_data*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @msb_cache_init(%struct.msb_data*) #1

declare dso_local i32 @msb_ftl_initialize(%struct.msb_data*) #1

declare dso_local i32 @msb_read_bad_block_table(%struct.msb_data*, i32) #1

declare dso_local i32 @msb_ftl_scan(%struct.msb_data*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
