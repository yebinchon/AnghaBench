; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_alloc_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_alloc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_blk_data = type { i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_16__, i64, %struct.device*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.mmc_blk_data*, i32*, i32 }
%struct.TYPE_16__ = type { i32, %struct.mmc_blk_data* }
%struct.mmc_card = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.device = type { i32 }

@mmc_blk_ida = common dso_local global i32 0, align 4
@max_devices = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"no more device IDs available\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@perdev_minors = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MMC_BLOCK_MAJOR = common dso_local global i32 0, align 4
@mmc_bdops = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@MMC_BLK_DATA_AREA_RPMB = common dso_local global i32 0, align 4
@MMC_BLK_DATA_AREA_BOOT = common dso_local global i32 0, align 4
@GENHD_FL_NO_PART_SCAN = common dso_local global i32 0, align 4
@GENHD_FL_SUPPRESS_PARTITION_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mmcblk%u%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CSD_SPEC_VER_3 = common dso_local global i64 0, align 8
@SD_SCR_CMD23_SUPPORT = common dso_local global i32 0, align 4
@MMC_BLK_CMD23 = common dso_local global i32 0, align 4
@EXT_CSD_WR_REL_PARAM_EN = common dso_local global i32 0, align 4
@MMC_BLK_REL_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmc_blk_data* (%struct.mmc_card*, %struct.device*, i32, i32, i8*, i32)* @mmc_blk_alloc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmc_blk_data* @mmc_blk_alloc_req(%struct.mmc_card* %0, %struct.device* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.mmc_blk_data*, align 8
  %8 = alloca %struct.mmc_card*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mmc_blk_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %8, align 8
  store %struct.device* %1, %struct.device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @max_devices, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @ida_simple_get(i32* @mmc_blk_ida, i32 0, i32 %17, i32 %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %29 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = call i32 @mmc_dev(%struct.TYPE_17__* %30)
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %15, align 4
  %35 = call %struct.mmc_blk_data* @ERR_PTR(i32 %34)
  store %struct.mmc_blk_data* %35, %struct.mmc_blk_data** %7, align 8
  br label %274

36:                                               ; preds = %6
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.mmc_blk_data* @kzalloc(i32 64, i32 %37)
  store %struct.mmc_blk_data* %38, %struct.mmc_blk_data** %14, align 8
  %39 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %40 = icmp ne %struct.mmc_blk_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %16, align 4
  br label %269

44:                                               ; preds = %36
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %47 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %49 = call i64 @mmc_blk_readonly(%struct.mmc_card* %48)
  %50 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %51 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @perdev_minors, align 4
  %53 = call %struct.TYPE_15__* @alloc_disk(i32 %52)
  %54 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %55 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %54, i32 0, i32 3
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %55, align 8
  %56 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %57 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %56, i32 0, i32 3
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = icmp eq %struct.TYPE_15__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %16, align 4
  br label %266

63:                                               ; preds = %44
  %64 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %65 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %64, i32 0, i32 8
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %68 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %67, i32 0, i32 7
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %71 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %73 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %72, i32 0, i32 4
  %74 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %75 = call i32 @mmc_init_queue(%struct.TYPE_16__* %73, %struct.mmc_card* %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %261

79:                                               ; preds = %63
  %80 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %81 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %82 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store %struct.mmc_blk_data* %80, %struct.mmc_blk_data** %83, align 8
  %84 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %85 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @blk_get_queue(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %79
  %91 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %92 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %91, i32 0, i32 4
  %93 = call i32 @mmc_cleanup_queue(%struct.TYPE_16__* %92)
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %16, align 4
  br label %261

96:                                               ; preds = %79
  %97 = load i32, i32* @MMC_BLOCK_MAJOR, align 4
  %98 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %99 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %98, i32 0, i32 3
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 6
  store i32 %97, i32* %101, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @perdev_minors, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %106 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %105, i32 0, i32 3
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  %109 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %110 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 5
  store i32* @mmc_bdops, i32** %112, align 8
  %113 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %114 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %115 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %114, i32 0, i32 3
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 4
  store %struct.mmc_blk_data* %113, %struct.mmc_blk_data** %117, align 8
  %118 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %119 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %123 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %122, i32 0, i32 3
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  store i32 %121, i32* %125, align 4
  %126 = load %struct.device*, %struct.device** %9, align 8
  %127 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %128 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %127, i32 0, i32 6
  store %struct.device* %126, %struct.device** %128, align 8
  %129 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %130 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %129, i32 0, i32 3
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %133 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %96
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %136, %96
  %140 = phi i1 [ true, %96 ], [ %138, %136 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @set_disk_ro(%struct.TYPE_15__* %131, i32 %141)
  %143 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %144 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %145 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %144, i32 0, i32 3
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @MMC_BLK_DATA_AREA_RPMB, align 4
  %150 = load i32, i32* @MMC_BLK_DATA_AREA_BOOT, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %139
  %155 = load i32, i32* @GENHD_FL_NO_PART_SCAN, align 4
  %156 = load i32, i32* @GENHD_FL_SUPPRESS_PARTITION_INFO, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %159 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %158, i32 0, i32 3
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %157
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %154, %139
  %165 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %166 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %165, i32 0, i32 3
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %171 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %170, i32 0, i32 3
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %12, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %164
  %178 = load i8*, i8** %12, align 8
  br label %180

179:                                              ; preds = %164
  br label %180

180:                                              ; preds = %179, %177
  %181 = phi i8* [ %178, %177 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %179 ]
  %182 = call i32 @snprintf(i32 %169, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %174, i8* %181)
  %183 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %184 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %183, i32 0, i32 3
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @set_capacity(%struct.TYPE_15__* %185, i32 %186)
  %188 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %189 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %188, i32 0, i32 3
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = call i64 @mmc_host_cmd23(%struct.TYPE_17__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %223

193:                                              ; preds = %180
  %194 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %195 = call i64 @mmc_card_mmc(%struct.mmc_card* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %199 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @CSD_SPEC_VER_3, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %216, label %204

204:                                              ; preds = %197, %193
  %205 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %206 = call i64 @mmc_card_sd(%struct.mmc_card* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %204
  %209 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %210 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @SD_SCR_CMD23_SUPPORT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %208, %197
  %217 = load i32, i32* @MMC_BLK_CMD23, align 4
  %218 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %219 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %216, %208, %204
  br label %223

223:                                              ; preds = %222, %180
  %224 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %225 = call i64 @mmc_card_mmc(%struct.mmc_card* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %259

227:                                              ; preds = %223
  %228 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %229 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @MMC_BLK_CMD23, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %259

234:                                              ; preds = %227
  %235 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %236 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @EXT_CSD_WR_REL_PARAM_EN, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %234
  %243 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %244 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %242, %234
  %249 = load i32, i32* @MMC_BLK_REL_WR, align 4
  %250 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %251 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %255 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @blk_queue_write_cache(i32 %257, i32 1, i32 1)
  br label %259

259:                                              ; preds = %248, %242, %227, %223
  %260 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  store %struct.mmc_blk_data* %260, %struct.mmc_blk_data** %7, align 8
  br label %274

261:                                              ; preds = %90, %78
  %262 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %263 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %262, i32 0, i32 3
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = call i32 @put_disk(%struct.TYPE_15__* %264)
  br label %266

266:                                              ; preds = %261, %60
  %267 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %14, align 8
  %268 = call i32 @kfree(%struct.mmc_blk_data* %267)
  br label %269

269:                                              ; preds = %266, %41
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @ida_simple_remove(i32* @mmc_blk_ida, i32 %270)
  %272 = load i32, i32* %16, align 4
  %273 = call %struct.mmc_blk_data* @ERR_PTR(i32 %272)
  store %struct.mmc_blk_data* %273, %struct.mmc_blk_data** %7, align 8
  br label %274

274:                                              ; preds = %269, %259, %33
  %275 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %7, align 8
  ret %struct.mmc_blk_data* %275
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_17__*) #1

declare dso_local %struct.mmc_blk_data* @ERR_PTR(i32) #1

declare dso_local %struct.mmc_blk_data* @kzalloc(i32, i32) #1

declare dso_local i64 @mmc_blk_readonly(%struct.mmc_card*) #1

declare dso_local %struct.TYPE_15__* @alloc_disk(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mmc_init_queue(%struct.TYPE_16__*, %struct.mmc_card*) #1

declare dso_local i32 @blk_get_queue(i32) #1

declare dso_local i32 @mmc_cleanup_queue(%struct.TYPE_16__*) #1

declare dso_local i32 @set_disk_ro(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @set_capacity(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @mmc_host_cmd23(%struct.TYPE_17__*) #1

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i32 @blk_queue_write_cache(i32, i32, i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_15__*) #1

declare dso_local i32 @kfree(%struct.mmc_blk_data*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
