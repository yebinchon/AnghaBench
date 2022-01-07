; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_io_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"sizeof(struct ubi_ainf_peb) %zu\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"sizeof(struct ubi_wl_entry) %zu\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"multiple regions, not implemented\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTD_NORFLASH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"min. I/O unit (%d) is not power of 2\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"bad write buffer size %d for %d min. I/O unit\00", align 1
@UBI_EC_HDR_SIZE = common dso_local global i32 0, align 4
@UBI_VID_HDR_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"min_io_size      %d\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"max_write_size   %d\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"hdrs_min_io_size %d\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ec_hdr_alsize    %d\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"vid_hdr_alsize   %d\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"vid_hdr_offset   %d\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"vid_hdr_aloffset %d\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"vid_hdr_shift    %d\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"leb_start        %d\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"unaligned VID header shift %d\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"bad VID header (%d) or data offsets (%d)\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"max_erroneous    %d\00", align 1
@.str.17 = private unnamed_addr constant [78 x i8] c"EC and VID headers are in the same minimal I/O unit, switch to read-only mode\00", align 1
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [59 x i8] c"MTD device %d is write-protected, attach in read-only mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @io_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_init(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @dbg_gen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 4)
  %7 = call i32 @dbg_gen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %8 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %9 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %8, i32 0, i32 16
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %16 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %411

19:                                               ; preds = %2
  %20 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %411

27:                                               ; preds = %19
  %28 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 16
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %41 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %40, i32 0, i32 16
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @mtd_div_by_eb(i32 %39, %struct.TYPE_3__* %42)
  %44 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %45 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 16
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %52 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %51, i32 0, i32 18
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %54 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %53, i32 0, i32 16
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i64 @mtd_can_have_bb(%struct.TYPE_3__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %27
  %59 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %60 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @get_bad_peb_limit(%struct.ubi_device* %61, i32 %62)
  %64 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %65 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %64, i32 0, i32 17
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %58, %27
  %67 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %68 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %67, i32 0, i32 16
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MTD_NORFLASH, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %76 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %75, i32 0, i32 16
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = call i32 @ubi_assert(i32 %81)
  %83 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %84 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %83, i32 0, i32 4
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %74, %66
  %86 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %87 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %86, i32 0, i32 16
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %92 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %94 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %93, i32 0, i32 16
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %99 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %98, i32 0, i32 16
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %97, %102
  %104 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %105 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %107 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @is_power_of_2(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %85
  %112 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %113 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %114 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %411

119:                                              ; preds = %85
  %120 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %121 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @ubi_assert(i32 %124)
  %126 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %127 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %130 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @ubi_assert(i32 %133)
  %135 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %136 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %139 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = srem i32 %137, %140
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @ubi_assert(i32 %143)
  %145 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %146 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %145, i32 0, i32 16
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %151 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 4
  %152 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %153 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %156 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %174, label %159

159:                                              ; preds = %119
  %160 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %161 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %164 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = srem i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %159
  %169 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %170 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @is_power_of_2(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %185, label %174

174:                                              ; preds = %168, %159, %119
  %175 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %176 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %177 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %180 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %175, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %411

185:                                              ; preds = %168
  %186 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %187 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %188 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @ALIGN(i32 %186, i32 %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %193 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %192, i32 0, i32 8
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %195 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %196 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = call i8* @ALIGN(i32 %194, i32 %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %201 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %200, i32 0, i32 9
  store i32 %199, i32* %201, align 4
  %202 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %203 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  %206 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %207 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %208)
  %210 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %211 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %212)
  %214 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %215 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  %218 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %219 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %220)
  %222 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %223 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %185
  %227 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %228 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %231 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %230, i32 0, i32 10
  store i32 %229, i32* %231, align 8
  %232 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %233 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %232, i32 0, i32 0
  store i32 %229, i32* %233, align 8
  br label %255

234:                                              ; preds = %185
  %235 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %236 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %239 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 1
  %242 = xor i32 %241, -1
  %243 = and i32 %237, %242
  %244 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %245 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %244, i32 0, i32 10
  store i32 %243, i32* %245, align 8
  %246 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %247 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %250 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %248, %251
  %253 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %254 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %253, i32 0, i32 11
  store i32 %252, i32* %254, align 4
  br label %255

255:                                              ; preds = %234, %226
  %256 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %257 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %260 = add nsw i32 %258, %259
  %261 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %262 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %261, i32 0, i32 12
  store i32 %260, i32* %262, align 8
  %263 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %264 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %263, i32 0, i32 12
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %267 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = call i8* @ALIGN(i32 %265, i32 %268)
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %272 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %271, i32 0, i32 12
  store i32 %270, i32* %272, align 8
  %273 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %274 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %275)
  %277 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %278 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %277, i32 0, i32 10
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %279)
  %281 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %282 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %281, i32 0, i32 11
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %283)
  %285 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %286 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %285, i32 0, i32 12
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %287)
  %289 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %290 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %289, i32 0, i32 11
  %291 = load i32, i32* %290, align 4
  %292 = srem i32 %291, 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %255
  %295 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %296 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %297 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %296, i32 0, i32 11
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %295, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %411

302:                                              ; preds = %255
  %303 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %304 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %338, label %308

308:                                              ; preds = %302
  %309 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %310 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %309, i32 0, i32 12
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %313 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %316 = add nsw i32 %314, %315
  %317 = icmp slt i32 %311, %316
  br i1 %317, label %338, label %318

318:                                              ; preds = %308
  %319 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %320 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %319, i32 0, i32 12
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %323 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %326 = sub nsw i32 %324, %325
  %327 = icmp sgt i32 %321, %326
  br i1 %327, label %338, label %328

328:                                              ; preds = %318
  %329 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %330 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %329, i32 0, i32 12
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %333 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 4
  %335 = sub nsw i32 %334, 1
  %336 = and i32 %331, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %349

338:                                              ; preds = %328, %318, %308, %302
  %339 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %340 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %341 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %344 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %343, i32 0, i32 12
  %345 = load i32, i32* %344, align 8
  %346 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %339, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %342, i32 %345)
  %347 = load i32, i32* @EINVAL, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %3, align 4
  br label %411

349:                                              ; preds = %328
  %350 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %351 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = sdiv i32 %352, 10
  %354 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %355 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %354, i32 0, i32 13
  store i32 %353, i32* %355, align 4
  %356 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %357 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %356, i32 0, i32 13
  %358 = load i32, i32* %357, align 4
  %359 = icmp slt i32 %358, 16
  br i1 %359, label %360, label %363

360:                                              ; preds = %349
  %361 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %362 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %361, i32 0, i32 13
  store i32 16, i32* %362, align 4
  br label %363

363:                                              ; preds = %360, %349
  %364 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %365 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %364, i32 0, i32 13
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %366)
  %368 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %369 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %372 = add nsw i32 %370, %371
  %373 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %374 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 8
  %376 = icmp sle i32 %372, %375
  br i1 %376, label %377, label %382

377:                                              ; preds = %363
  %378 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %379 = call i32 @ubi_warn(%struct.ubi_device* %378, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.17, i64 0, i64 0))
  %380 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %381 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %380, i32 0, i32 14
  store i32 1, i32* %381, align 8
  br label %382

382:                                              ; preds = %377, %363
  %383 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %384 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %387 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %386, i32 0, i32 12
  %388 = load i32, i32* %387, align 8
  %389 = sub nsw i32 %385, %388
  %390 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %391 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %390, i32 0, i32 15
  store i32 %389, i32* %391, align 4
  %392 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %393 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %392, i32 0, i32 16
  %394 = load %struct.TYPE_3__*, %struct.TYPE_3__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @MTD_WRITEABLE, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %410, label %400

400:                                              ; preds = %382
  %401 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %402 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %403 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %402, i32 0, i32 16
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 7
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @ubi_msg(%struct.ubi_device* %401, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), i32 %406)
  %408 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %409 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %408, i32 0, i32 14
  store i32 1, i32* %409, align 8
  br label %410

410:                                              ; preds = %400, %382
  store i32 0, i32* %3, align 4
  br label %411

411:                                              ; preds = %410, %338, %294, %174, %111, %24, %14
  %412 = load i32, i32* %3, align 4
  ret i32 %412
}

declare dso_local i32 @dbg_gen(i8*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @mtd_div_by_eb(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @mtd_can_have_bb(%struct.TYPE_3__*) #1

declare dso_local i32 @get_bad_peb_limit(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
