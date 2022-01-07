; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_decode_ext_csd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_decode_ext_csd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@EXT_CSD_STRUCTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s: unrecognised EXT_CSD structure version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mmc-card\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"broken-hpi\00", align 1
@EXT_CSD_REV = common dso_local global i64 0, align 8
@mmc_ext_csd_fixups = common dso_local global i32 0, align 4
@EXT_CSD_SEC_CNT = common dso_local global i32 0, align 4
@EXT_CSD_STROBE_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_CARD_TYPE = common dso_local global i64 0, align 8
@EXT_CSD_S_A_TIMEOUT = common dso_local global i64 0, align 8
@EXT_CSD_ERASE_TIMEOUT_MULT = common dso_local global i64 0, align 8
@EXT_CSD_HC_ERASE_GRP_SIZE = common dso_local global i64 0, align 8
@EXT_CSD_PART_CONFIG = common dso_local global i64 0, align 8
@EXT_CSD_PART_SWITCH_TIME = common dso_local global i64 0, align 8
@MMC_MIN_PART_SWITCH_TIME = common dso_local global i32 0, align 4
@EXT_CSD_ERASE_GROUP_DEF = common dso_local global i64 0, align 8
@EXT_CSD_REL_WR_SEC_C = common dso_local global i64 0, align 8
@EXT_CSD_BOOT_MULT = common dso_local global i64 0, align 8
@MMC_NUM_BOOT_PARTITION = common dso_local global i32 0, align 4
@EXT_CSD_PART_CONFIG_ACC_BOOT0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"boot%d\00", align 1
@MMC_BLK_DATA_AREA_BOOT = common dso_local global i32 0, align 4
@EXT_CSD_HC_WP_GRP_SIZE = common dso_local global i64 0, align 8
@EXT_CSD_SEC_TRIM_MULT = common dso_local global i64 0, align 8
@EXT_CSD_SEC_ERASE_MULT = common dso_local global i64 0, align 8
@EXT_CSD_SEC_FEATURE_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_TRIM_MULT = common dso_local global i64 0, align 8
@EXT_CSD_PARTITION_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_DRIVER_STRENGTH = common dso_local global i64 0, align 8
@EXT_CSD_PARTITION_SETTING_COMPLETED = common dso_local global i64 0, align 8
@EXT_CSD_PART_SETTING_COMPLETED = common dso_local global i32 0, align 4
@EXT_CSD_BOOT_WP = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_52_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_26_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_52_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_26_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_200_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_200_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_DDR_52_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_DDR_52_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_DDR_200_360 = common dso_local global i64 0, align 8
@EXT_CSD_BKOPS_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_BKOPS_EN = common dso_local global i64 0, align 8
@EXT_CSD_MANUAL_BKOPS_MASK = common dso_local global i32 0, align 4
@EXT_CSD_BKOPS_STATUS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: MAN_BKOPS_EN bit is set\0A\00", align 1
@EXT_CSD_AUTO_BKOPS_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: AUTO_BKOPS_EN bit is set\0A\00", align 1
@EXT_CSD_HPI_FEATURES = common dso_local global i64 0, align 8
@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@MMC_SEND_STATUS = common dso_local global i32 0, align 4
@EXT_CSD_OUT_OF_INTERRUPT_TIME = common dso_local global i64 0, align 8
@EXT_CSD_WR_REL_PARAM = common dso_local global i64 0, align 8
@EXT_CSD_RST_N_FUNCTION = common dso_local global i64 0, align 8
@EXT_CSD_RPMB_MULT = common dso_local global i64 0, align 8
@EXT_CSD_PART_CONFIG_ACC_RPMB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"rpmb\00", align 1
@MMC_BLK_DATA_AREA_RPMB = common dso_local global i32 0, align 4
@EXT_CSD_ERASED_MEM_CONT = common dso_local global i64 0, align 8
@DEFAULT_CMD6_TIMEOUT_MS = common dso_local global i32 0, align 4
@MMC_DISCARD_FEATURE = common dso_local global i32 0, align 4
@EXT_CSD_GENERIC_CMD6_TIME = common dso_local global i64 0, align 8
@EXT_CSD_POWER_OFF_LONG_TIME = common dso_local global i64 0, align 8
@EXT_CSD_CACHE_SIZE = common dso_local global i32 0, align 4
@EXT_CSD_DATA_SECTOR_SIZE = common dso_local global i64 0, align 8
@EXT_CSD_DATA_TAG_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_TAG_UNIT_SIZE = common dso_local global i64 0, align 8
@EXT_CSD_MAX_PACKED_WRITES = common dso_local global i64 0, align 8
@EXT_CSD_MAX_PACKED_READS = common dso_local global i64 0, align 8
@EXT_CSD_FIRMWARE_VERSION = common dso_local global i64 0, align 8
@MMC_FIRMWARE_LEN = common dso_local global i32 0, align 4
@EXT_CSD_SUPPORTED_MODE = common dso_local global i64 0, align 8
@EXT_CSD_FW_CONFIG = common dso_local global i64 0, align 8
@EXT_CSD_PRE_EOL_INFO = common dso_local global i64 0, align 8
@EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A = common dso_local global i64 0, align 8
@EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B = common dso_local global i64 0, align 8
@EXT_CSD_CMDQ_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_CMDQ_SUPPORTED = common dso_local global i32 0, align 4
@EXT_CSD_CMDQ_DEPTH = common dso_local global i64 0, align 8
@EXT_CSD_CMDQ_DEPTH_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"%s: Command Queue supported depth %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32*)* @mmc_decode_ext_csd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_decode_ext_csd(%struct.mmc_card* %0, i32* %1) #0 {
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* @EXT_CSD_STRUCTURE, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mmc_hostname(i32 %32)
  %34 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %931

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.device_node* @mmc_of_find_child_device(i32 %45, i32 0)
  store %struct.device_node* %46, %struct.device_node** %8, align 8
  %47 = load %struct.device_node*, %struct.device_node** %8, align 8
  %48 = icmp ne %struct.device_node* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.device_node*, %struct.device_node** %8, align 8
  %51 = call i64 @of_device_is_compatible(%struct.device_node* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.device_node*, %struct.device_node** %8, align 8
  %55 = call i32 @of_property_read_bool(%struct.device_node* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %49, %42
  %57 = load %struct.device_node*, %struct.device_node** %8, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* @EXT_CSD_REV, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %64 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %67 = load i32, i32* @mmc_ext_csd_fixups, align 4
  %68 = call i32 @mmc_fixup_device(%struct.mmc_card* %66, i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %71 = add nsw i32 %70, 0
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %76 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %74, i32* %79, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %87 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %85, i32* %90, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %98 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %96, i32* %101, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %104 = add nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %109 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %107, i32* %112, align 4
  %113 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %114 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 2
  br i1 %117, label %118, label %162

118:                                              ; preds = %56
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %121 = add nsw i32 %120, 0
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 0
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 8
  %133 = or i32 %125, %132
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %136 = add nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 16
  %141 = or i32 %133, %140
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %144 = add nsw i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 24
  %149 = or i32 %141, %148
  %150 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %151 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 8
  %153 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %154 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ugt i32 %156, 4194304
  br i1 %157, label %158, label %161

158:                                              ; preds = %118
  %159 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %160 = call i32 @mmc_card_set_blockaddr(%struct.mmc_card* %159)
  br label %161

161:                                              ; preds = %158, %118
  br label %162

162:                                              ; preds = %161, %56
  %163 = load i32*, i32** %4, align 8
  %164 = load i64, i64* @EXT_CSD_STROBE_SUPPORT, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %168 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  store i32 %166, i32* %169, align 4
  %170 = load i32*, i32** %4, align 8
  %171 = load i64, i64* @EXT_CSD_CARD_TYPE, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %175 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  store i32 %173, i32* %176, align 8
  %177 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %178 = call i32 @mmc_select_card_type(%struct.mmc_card* %177)
  %179 = load i32*, i32** %4, align 8
  %180 = load i64, i64* @EXT_CSD_S_A_TIMEOUT, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %184 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 6
  store i32 %182, i32* %185, align 4
  %186 = load i32*, i32** %4, align 8
  %187 = load i64, i64* @EXT_CSD_ERASE_TIMEOUT_MULT, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %191 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 7
  store i32 %189, i32* %192, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = load i64, i64* @EXT_CSD_HC_ERASE_GRP_SIZE, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %198 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 8
  store i32 %196, i32* %199, align 4
  %200 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %201 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp sge i32 %203, 3
  br i1 %204, label %205, label %324

205:                                              ; preds = %162
  %206 = load i32*, i32** %4, align 8
  %207 = load i64, i64* @EXT_CSD_S_A_TIMEOUT, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %10, align 4
  %210 = load i32*, i32** %4, align 8
  %211 = load i64, i64* @EXT_CSD_PART_CONFIG, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %215 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 9
  store i32 %213, i32* %216, align 8
  %217 = load i32*, i32** %4, align 8
  %218 = load i64, i64* @EXT_CSD_PART_SWITCH_TIME, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 10, %220
  %222 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %223 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 10
  store i32 %221, i32* %224, align 4
  %225 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %226 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 10
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %205
  %231 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %232 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 10
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @MMC_MIN_PART_SWITCH_TIME, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %230
  %238 = load i32, i32* @MMC_MIN_PART_SWITCH_TIME, align 4
  %239 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %240 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 10
  store i32 %238, i32* %241, align 4
  br label %242

242:                                              ; preds = %237, %230, %205
  %243 = load i32, i32* %10, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %257

245:                                              ; preds = %242
  %246 = load i32, i32* %10, align 4
  %247 = icmp sle i32 %246, 23
  br i1 %247, label %248, label %257

248:                                              ; preds = %245
  %249 = load i32*, i32** %4, align 8
  %250 = load i64, i64* @EXT_CSD_S_A_TIMEOUT, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 1, %252
  %254 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %255 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 11
  store i32 %253, i32* %256, align 8
  br label %257

257:                                              ; preds = %248, %245, %242
  %258 = load i32*, i32** %4, align 8
  %259 = load i64, i64* @EXT_CSD_ERASE_GROUP_DEF, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %263 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 12
  store i32 %261, i32* %264, align 4
  %265 = load i32*, i32** %4, align 8
  %266 = load i64, i64* @EXT_CSD_ERASE_TIMEOUT_MULT, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = mul nsw i32 300, %268
  %270 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %271 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 13
  store i32 %269, i32* %272, align 8
  %273 = load i32*, i32** %4, align 8
  %274 = load i64, i64* @EXT_CSD_HC_ERASE_GRP_SIZE, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = shl i32 %276, 10
  %278 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %279 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 14
  store i32 %277, i32* %280, align 4
  %281 = load i32*, i32** %4, align 8
  %282 = load i64, i64* @EXT_CSD_REL_WR_SEC_C, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %286 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 15
  store i32 %284, i32* %287, align 8
  %288 = load i32*, i32** %4, align 8
  %289 = load i64, i64* @EXT_CSD_BOOT_MULT, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %323

293:                                              ; preds = %257
  %294 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %295 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i64 @mmc_boot_partition_access(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %323

299:                                              ; preds = %293
  store i32 0, i32* %6, align 4
  br label %300

300:                                              ; preds = %319, %299
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* @MMC_NUM_BOOT_PARTITION, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %322

304:                                              ; preds = %300
  %305 = load i32*, i32** %4, align 8
  %306 = load i64, i64* @EXT_CSD_BOOT_MULT, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = shl i32 %308, 17
  store i32 %309, i32* %7, align 4
  %310 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %311 = load i32, i32* %7, align 4
  %312 = load i64, i64* @EXT_CSD_PART_CONFIG_ACC_BOOT0, align 8
  %313 = load i32, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %312, %314
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* @MMC_BLK_DATA_AREA_BOOT, align 4
  %318 = call i32 @mmc_part_add(%struct.mmc_card* %310, i32 %311, i64 %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %316, i32 1, i32 %317)
  br label %319

319:                                              ; preds = %304
  %320 = load i32, i32* %6, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %6, align 4
  br label %300

322:                                              ; preds = %300
  br label %323

323:                                              ; preds = %322, %293, %257
  br label %324

324:                                              ; preds = %323, %162
  %325 = load i32*, i32** %4, align 8
  %326 = load i64, i64* @EXT_CSD_HC_WP_GRP_SIZE, align 8
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %330 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 16
  store i32 %328, i32* %331, align 4
  %332 = load i32*, i32** %4, align 8
  %333 = load i64, i64* @EXT_CSD_SEC_TRIM_MULT, align 8
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %337 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 17
  store i32 %335, i32* %338, align 8
  %339 = load i32*, i32** %4, align 8
  %340 = load i64, i64* @EXT_CSD_SEC_ERASE_MULT, align 8
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %344 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 18
  store i32 %342, i32* %345, align 4
  %346 = load i32*, i32** %4, align 8
  %347 = load i64, i64* @EXT_CSD_SEC_FEATURE_SUPPORT, align 8
  %348 = getelementptr inbounds i32, i32* %346, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %351 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 19
  store i32 %349, i32* %352, align 8
  %353 = load i32*, i32** %4, align 8
  %354 = load i64, i64* @EXT_CSD_TRIM_MULT, align 8
  %355 = getelementptr inbounds i32, i32* %353, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %358 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 20
  store i32 %356, i32* %359, align 4
  %360 = load i32*, i32** %4, align 8
  %361 = load i64, i64* @EXT_CSD_PARTITION_SUPPORT, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %365 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 21
  store i32 %363, i32* %366, align 8
  %367 = load i32*, i32** %4, align 8
  %368 = load i64, i64* @EXT_CSD_DRIVER_STRENGTH, align 8
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %372 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 22
  store i32 %370, i32* %373, align 4
  %374 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %375 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = icmp sge i32 %377, 4
  br i1 %378, label %379, label %504

379:                                              ; preds = %324
  %380 = load i32*, i32** %4, align 8
  %381 = load i64, i64* @EXT_CSD_PARTITION_SETTING_COMPLETED, align 8
  %382 = getelementptr inbounds i32, i32* %380, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @EXT_CSD_PART_SETTING_COMPLETED, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %379
  %388 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %389 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 23
  store i32 1, i32* %390, align 8
  br label %395

391:                                              ; preds = %379
  %392 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %393 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 23
  store i32 0, i32* %394, align 8
  br label %395

395:                                              ; preds = %391, %387
  %396 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %397 = load i32*, i32** %4, align 8
  %398 = call i32 @mmc_manage_enhanced_area(%struct.mmc_card* %396, i32* %397)
  %399 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %400 = load i32*, i32** %4, align 8
  %401 = call i32 @mmc_manage_gp_partitions(%struct.mmc_card* %399, i32* %400)
  %402 = load i32*, i32** %4, align 8
  %403 = load i64, i64* @EXT_CSD_SEC_TRIM_MULT, align 8
  %404 = getelementptr inbounds i32, i32* %402, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %407 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 24
  store i32 %405, i32* %408, align 4
  %409 = load i32*, i32** %4, align 8
  %410 = load i64, i64* @EXT_CSD_SEC_ERASE_MULT, align 8
  %411 = getelementptr inbounds i32, i32* %409, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %414 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 25
  store i32 %412, i32* %415, align 8
  %416 = load i32*, i32** %4, align 8
  %417 = load i64, i64* @EXT_CSD_SEC_FEATURE_SUPPORT, align 8
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %421 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 26
  store i32 %419, i32* %422, align 4
  %423 = load i32*, i32** %4, align 8
  %424 = load i64, i64* @EXT_CSD_TRIM_MULT, align 8
  %425 = getelementptr inbounds i32, i32* %423, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = mul nsw i32 300, %426
  %428 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %429 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 27
  store i32 %427, i32* %430, align 8
  %431 = load i32*, i32** %4, align 8
  %432 = load i64, i64* @EXT_CSD_BOOT_WP, align 8
  %433 = getelementptr inbounds i32, i32* %431, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %436 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 28
  store i32 %434, i32* %437, align 4
  %438 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %439 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 29
  store i32 1, i32* %440, align 8
  %441 = load i32*, i32** %4, align 8
  %442 = load i64, i64* @EXT_CSD_PWR_CL_52_195, align 8
  %443 = getelementptr inbounds i32, i32* %441, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %446 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 30
  store i32 %444, i32* %447, align 4
  %448 = load i32*, i32** %4, align 8
  %449 = load i64, i64* @EXT_CSD_PWR_CL_26_195, align 8
  %450 = getelementptr inbounds i32, i32* %448, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %453 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 31
  store i32 %451, i32* %454, align 8
  %455 = load i32*, i32** %4, align 8
  %456 = load i64, i64* @EXT_CSD_PWR_CL_52_360, align 8
  %457 = getelementptr inbounds i32, i32* %455, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %460 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 32
  store i32 %458, i32* %461, align 4
  %462 = load i32*, i32** %4, align 8
  %463 = load i64, i64* @EXT_CSD_PWR_CL_26_360, align 8
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %467 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 33
  store i32 %465, i32* %468, align 8
  %469 = load i32*, i32** %4, align 8
  %470 = load i64, i64* @EXT_CSD_PWR_CL_200_195, align 8
  %471 = getelementptr inbounds i32, i32* %469, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %474 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 34
  store i32 %472, i32* %475, align 4
  %476 = load i32*, i32** %4, align 8
  %477 = load i64, i64* @EXT_CSD_PWR_CL_200_360, align 8
  %478 = getelementptr inbounds i32, i32* %476, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %481 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 35
  store i32 %479, i32* %482, align 8
  %483 = load i32*, i32** %4, align 8
  %484 = load i64, i64* @EXT_CSD_PWR_CL_DDR_52_195, align 8
  %485 = getelementptr inbounds i32, i32* %483, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %488 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 36
  store i32 %486, i32* %489, align 4
  %490 = load i32*, i32** %4, align 8
  %491 = load i64, i64* @EXT_CSD_PWR_CL_DDR_52_360, align 8
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %495 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 37
  store i32 %493, i32* %496, align 8
  %497 = load i32*, i32** %4, align 8
  %498 = load i64, i64* @EXT_CSD_PWR_CL_DDR_200_360, align 8
  %499 = getelementptr inbounds i32, i32* %497, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %502 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 38
  store i32 %500, i32* %503, align 4
  br label %504

504:                                              ; preds = %395, %324
  %505 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %506 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = icmp sge i32 %508, 5
  br i1 %509, label %510, label %669

510:                                              ; preds = %504
  %511 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %512 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %511, i32 0, i32 3
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = icmp slt i32 %514, 2010
  br i1 %515, label %516, label %522

516:                                              ; preds = %510
  %517 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %518 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %517, i32 0, i32 3
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = add nsw i32 %520, 16
  store i32 %521, i32* %519, align 4
  br label %522

522:                                              ; preds = %516, %510
  %523 = load i32*, i32** %4, align 8
  %524 = load i64, i64* @EXT_CSD_BKOPS_SUPPORT, align 8
  %525 = getelementptr inbounds i32, i32* %523, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = and i32 %526, 1
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %582

529:                                              ; preds = %522
  %530 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %531 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %531, i32 0, i32 39
  store i32 1, i32* %532, align 8
  %533 = load i32*, i32** %4, align 8
  %534 = load i64, i64* @EXT_CSD_BKOPS_EN, align 8
  %535 = getelementptr inbounds i32, i32* %533, i64 %534
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* @EXT_CSD_MANUAL_BKOPS_MASK, align 4
  %538 = and i32 %536, %537
  %539 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %540 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 40
  store i32 %538, i32* %541, align 4
  %542 = load i32*, i32** %4, align 8
  %543 = load i64, i64* @EXT_CSD_BKOPS_STATUS, align 8
  %544 = getelementptr inbounds i32, i32* %542, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %547 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 41
  store i32 %545, i32* %548, align 8
  %549 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %550 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 40
  %552 = load i32, i32* %551, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %560

554:                                              ; preds = %529
  %555 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %556 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 8
  %558 = call i32 @mmc_hostname(i32 %557)
  %559 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %558)
  br label %560

560:                                              ; preds = %554, %529
  %561 = load i32*, i32** %4, align 8
  %562 = load i64, i64* @EXT_CSD_BKOPS_EN, align 8
  %563 = getelementptr inbounds i32, i32* %561, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = load i32, i32* @EXT_CSD_AUTO_BKOPS_MASK, align 4
  %566 = and i32 %564, %565
  %567 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %568 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %568, i32 0, i32 42
  store i32 %566, i32* %569, align 4
  %570 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %571 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %570, i32 0, i32 1
  %572 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %571, i32 0, i32 42
  %573 = load i32, i32* %572, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %581

575:                                              ; preds = %560
  %576 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %577 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 8
  %579 = call i32 @mmc_hostname(i32 %578)
  %580 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %579)
  br label %581

581:                                              ; preds = %575, %560
  br label %582

582:                                              ; preds = %581, %522
  %583 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %584 = call i32 @mmc_card_broken_hpi(%struct.mmc_card* %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %625, label %586

586:                                              ; preds = %582
  %587 = load i32, i32* %9, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %625, label %589

589:                                              ; preds = %586
  %590 = load i32*, i32** %4, align 8
  %591 = load i64, i64* @EXT_CSD_HPI_FEATURES, align 8
  %592 = getelementptr inbounds i32, i32* %590, i64 %591
  %593 = load i32, i32* %592, align 4
  %594 = and i32 %593, 1
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %625

596:                                              ; preds = %589
  %597 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %598 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %598, i32 0, i32 43
  store i32 1, i32* %599, align 8
  %600 = load i32*, i32** %4, align 8
  %601 = load i64, i64* @EXT_CSD_HPI_FEATURES, align 8
  %602 = getelementptr inbounds i32, i32* %600, i64 %601
  %603 = load i32, i32* %602, align 4
  %604 = and i32 %603, 2
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %611

606:                                              ; preds = %596
  %607 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %608 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %609 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %608, i32 0, i32 1
  %610 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %609, i32 0, i32 64
  store i32 %607, i32* %610, align 4
  br label %616

611:                                              ; preds = %596
  %612 = load i32, i32* @MMC_SEND_STATUS, align 4
  %613 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %614 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %613, i32 0, i32 1
  %615 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %614, i32 0, i32 64
  store i32 %612, i32* %615, align 4
  br label %616

616:                                              ; preds = %611, %606
  %617 = load i32*, i32** %4, align 8
  %618 = load i64, i64* @EXT_CSD_OUT_OF_INTERRUPT_TIME, align 8
  %619 = getelementptr inbounds i32, i32* %617, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = mul nsw i32 %620, 10
  %622 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %623 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %622, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %623, i32 0, i32 44
  store i32 %621, i32* %624, align 4
  br label %625

625:                                              ; preds = %616, %589, %586, %582
  %626 = load i32*, i32** %4, align 8
  %627 = load i64, i64* @EXT_CSD_WR_REL_PARAM, align 8
  %628 = getelementptr inbounds i32, i32* %626, i64 %627
  %629 = load i32, i32* %628, align 4
  %630 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %631 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %631, i32 0, i32 45
  store i32 %629, i32* %632, align 8
  %633 = load i32*, i32** %4, align 8
  %634 = load i64, i64* @EXT_CSD_RST_N_FUNCTION, align 8
  %635 = getelementptr inbounds i32, i32* %633, i64 %634
  %636 = load i32, i32* %635, align 4
  %637 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %638 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %638, i32 0, i32 46
  store i32 %636, i32* %639, align 4
  %640 = load i32*, i32** %4, align 8
  %641 = load i64, i64* @EXT_CSD_RPMB_MULT, align 8
  %642 = getelementptr inbounds i32, i32* %640, i64 %641
  %643 = load i32, i32* %642, align 4
  %644 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %645 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %644, i32 0, i32 1
  %646 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %645, i32 0, i32 47
  store i32 %643, i32* %646, align 8
  %647 = load i32*, i32** %4, align 8
  %648 = load i64, i64* @EXT_CSD_RPMB_MULT, align 8
  %649 = getelementptr inbounds i32, i32* %647, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %668

652:                                              ; preds = %625
  %653 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %654 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %653, i32 0, i32 2
  %655 = load i32, i32* %654, align 8
  %656 = call i64 @mmc_host_cmd23(i32 %655)
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %668

658:                                              ; preds = %652
  %659 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %660 = load i32*, i32** %4, align 8
  %661 = load i64, i64* @EXT_CSD_RPMB_MULT, align 8
  %662 = getelementptr inbounds i32, i32* %660, i64 %661
  %663 = load i32, i32* %662, align 4
  %664 = shl i32 %663, 17
  %665 = load i64, i64* @EXT_CSD_PART_CONFIG_ACC_RPMB, align 8
  %666 = load i32, i32* @MMC_BLK_DATA_AREA_RPMB, align 4
  %667 = call i32 @mmc_part_add(%struct.mmc_card* %659, i32 %664, i64 %665, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0, i32 %666)
  br label %668

668:                                              ; preds = %658, %652, %625
  br label %669

669:                                              ; preds = %668, %504
  %670 = load i32*, i32** %4, align 8
  %671 = load i64, i64* @EXT_CSD_ERASED_MEM_CONT, align 8
  %672 = getelementptr inbounds i32, i32* %670, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %675 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %674, i32 0, i32 1
  %676 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %675, i32 0, i32 48
  store i32 %673, i32* %676, align 4
  %677 = load i32*, i32** %4, align 8
  %678 = load i64, i64* @EXT_CSD_ERASED_MEM_CONT, align 8
  %679 = getelementptr inbounds i32, i32* %677, i64 %678
  %680 = load i32, i32* %679, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %685

682:                                              ; preds = %669
  %683 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %684 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %683, i32 0, i32 0
  store i32 255, i32* %684, align 8
  br label %688

685:                                              ; preds = %669
  %686 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %687 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %686, i32 0, i32 0
  store i32 0, i32* %687, align 8
  br label %688

688:                                              ; preds = %685, %682
  %689 = load i32, i32* @DEFAULT_CMD6_TIMEOUT_MS, align 4
  %690 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %691 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %691, i32 0, i32 49
  store i32 %689, i32* %692, align 8
  %693 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %694 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = icmp sge i32 %696, 6
  br i1 %697, label %698, label %814

698:                                              ; preds = %688
  %699 = load i32, i32* @MMC_DISCARD_FEATURE, align 4
  %700 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %701 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %701, i32 0, i32 63
  %703 = load i32, i32* %702, align 8
  %704 = or i32 %703, %699
  store i32 %704, i32* %702, align 8
  %705 = load i32*, i32** %4, align 8
  %706 = load i64, i64* @EXT_CSD_GENERIC_CMD6_TIME, align 8
  %707 = getelementptr inbounds i32, i32* %705, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = mul nsw i32 10, %708
  %710 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %711 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %710, i32 0, i32 1
  %712 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %711, i32 0, i32 49
  store i32 %709, i32* %712, align 8
  %713 = load i32*, i32** %4, align 8
  %714 = load i64, i64* @EXT_CSD_POWER_OFF_LONG_TIME, align 8
  %715 = getelementptr inbounds i32, i32* %713, i64 %714
  %716 = load i32, i32* %715, align 4
  %717 = mul nsw i32 10, %716
  %718 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %719 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %718, i32 0, i32 1
  %720 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %719, i32 0, i32 50
  store i32 %717, i32* %720, align 4
  %721 = load i32*, i32** %4, align 8
  %722 = load i32, i32* @EXT_CSD_CACHE_SIZE, align 4
  %723 = add nsw i32 %722, 0
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i32, i32* %721, i64 %724
  %726 = load i32, i32* %725, align 4
  %727 = shl i32 %726, 0
  %728 = load i32*, i32** %4, align 8
  %729 = load i32, i32* @EXT_CSD_CACHE_SIZE, align 4
  %730 = add nsw i32 %729, 1
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i32, i32* %728, i64 %731
  %733 = load i32, i32* %732, align 4
  %734 = shl i32 %733, 8
  %735 = or i32 %727, %734
  %736 = load i32*, i32** %4, align 8
  %737 = load i32, i32* @EXT_CSD_CACHE_SIZE, align 4
  %738 = add nsw i32 %737, 2
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i32, i32* %736, i64 %739
  %741 = load i32, i32* %740, align 4
  %742 = shl i32 %741, 16
  %743 = or i32 %735, %742
  %744 = load i32*, i32** %4, align 8
  %745 = load i32, i32* @EXT_CSD_CACHE_SIZE, align 4
  %746 = add nsw i32 %745, 3
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds i32, i32* %744, i64 %747
  %749 = load i32, i32* %748, align 4
  %750 = shl i32 %749, 24
  %751 = or i32 %743, %750
  %752 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %753 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %752, i32 0, i32 1
  %754 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %753, i32 0, i32 51
  store i32 %751, i32* %754, align 8
  %755 = load i32*, i32** %4, align 8
  %756 = load i64, i64* @EXT_CSD_DATA_SECTOR_SIZE, align 8
  %757 = getelementptr inbounds i32, i32* %755, i64 %756
  %758 = load i32, i32* %757, align 4
  %759 = icmp eq i32 %758, 1
  br i1 %759, label %760, label %764

760:                                              ; preds = %698
  %761 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %762 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %761, i32 0, i32 1
  %763 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %762, i32 0, i32 52
  store i32 4096, i32* %763, align 4
  br label %768

764:                                              ; preds = %698
  %765 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %766 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %765, i32 0, i32 1
  %767 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %766, i32 0, i32 52
  store i32 512, i32* %767, align 4
  br label %768

768:                                              ; preds = %764, %760
  %769 = load i32*, i32** %4, align 8
  %770 = load i64, i64* @EXT_CSD_DATA_TAG_SUPPORT, align 8
  %771 = getelementptr inbounds i32, i32* %769, i64 %770
  %772 = load i32, i32* %771, align 4
  %773 = and i32 %772, 1
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %795

775:                                              ; preds = %768
  %776 = load i32*, i32** %4, align 8
  %777 = load i64, i64* @EXT_CSD_TAG_UNIT_SIZE, align 8
  %778 = getelementptr inbounds i32, i32* %776, i64 %777
  %779 = load i32, i32* %778, align 4
  %780 = icmp sle i32 %779, 8
  br i1 %780, label %781, label %795

781:                                              ; preds = %775
  %782 = load i32*, i32** %4, align 8
  %783 = load i64, i64* @EXT_CSD_TAG_UNIT_SIZE, align 8
  %784 = getelementptr inbounds i32, i32* %782, i64 %783
  %785 = load i32, i32* %784, align 4
  %786 = shl i32 1, %785
  %787 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %788 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %787, i32 0, i32 1
  %789 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %788, i32 0, i32 52
  %790 = load i32, i32* %789, align 4
  %791 = mul i32 %786, %790
  %792 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %793 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %792, i32 0, i32 1
  %794 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %793, i32 0, i32 53
  store i32 %791, i32* %794, align 8
  br label %799

795:                                              ; preds = %775, %768
  %796 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %797 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %796, i32 0, i32 1
  %798 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %797, i32 0, i32 53
  store i32 0, i32* %798, align 8
  br label %799

799:                                              ; preds = %795, %781
  %800 = load i32*, i32** %4, align 8
  %801 = load i64, i64* @EXT_CSD_MAX_PACKED_WRITES, align 8
  %802 = getelementptr inbounds i32, i32* %800, i64 %801
  %803 = load i32, i32* %802, align 4
  %804 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %805 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %804, i32 0, i32 1
  %806 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %805, i32 0, i32 54
  store i32 %803, i32* %806, align 4
  %807 = load i32*, i32** %4, align 8
  %808 = load i64, i64* @EXT_CSD_MAX_PACKED_READS, align 8
  %809 = getelementptr inbounds i32, i32* %807, i64 %808
  %810 = load i32, i32* %809, align 4
  %811 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %812 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %811, i32 0, i32 1
  %813 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %812, i32 0, i32 55
  store i32 %810, i32* %813, align 8
  br label %818

814:                                              ; preds = %688
  %815 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %816 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %816, i32 0, i32 52
  store i32 512, i32* %817, align 4
  br label %818

818:                                              ; preds = %814, %799
  %819 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %820 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %819, i32 0, i32 1
  %821 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %820, i32 0, i32 1
  %822 = load i32, i32* %821, align 4
  %823 = icmp sge i32 %822, 7
  br i1 %823, label %824, label %875

824:                                              ; preds = %818
  %825 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %826 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %825, i32 0, i32 1
  %827 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %826, i32 0, i32 62
  %828 = load i32, i32* %827, align 4
  %829 = load i32*, i32** %4, align 8
  %830 = load i64, i64* @EXT_CSD_FIRMWARE_VERSION, align 8
  %831 = getelementptr inbounds i32, i32* %829, i64 %830
  %832 = load i32, i32* @MMC_FIRMWARE_LEN, align 4
  %833 = call i32 @memcpy(i32 %828, i32* %831, i32 %832)
  %834 = load i32*, i32** %4, align 8
  %835 = load i64, i64* @EXT_CSD_SUPPORTED_MODE, align 8
  %836 = getelementptr inbounds i32, i32* %834, i64 %835
  %837 = load i32, i32* %836, align 4
  %838 = and i32 %837, 1
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %840, label %848

840:                                              ; preds = %824
  %841 = load i32*, i32** %4, align 8
  %842 = load i64, i64* @EXT_CSD_FW_CONFIG, align 8
  %843 = getelementptr inbounds i32, i32* %841, i64 %842
  %844 = load i32, i32* %843, align 4
  %845 = and i32 %844, 1
  %846 = icmp ne i32 %845, 0
  %847 = xor i1 %846, true
  br label %848

848:                                              ; preds = %840, %824
  %849 = phi i1 [ false, %824 ], [ %847, %840 ]
  %850 = zext i1 %849 to i32
  %851 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %852 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %851, i32 0, i32 1
  %853 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %852, i32 0, i32 56
  store i32 %850, i32* %853, align 4
  %854 = load i32*, i32** %4, align 8
  %855 = load i64, i64* @EXT_CSD_PRE_EOL_INFO, align 8
  %856 = getelementptr inbounds i32, i32* %854, i64 %855
  %857 = load i32, i32* %856, align 4
  %858 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %859 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %858, i32 0, i32 1
  %860 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %859, i32 0, i32 57
  store i32 %857, i32* %860, align 8
  %861 = load i32*, i32** %4, align 8
  %862 = load i64, i64* @EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_A, align 8
  %863 = getelementptr inbounds i32, i32* %861, i64 %862
  %864 = load i32, i32* %863, align 4
  %865 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %866 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %866, i32 0, i32 58
  store i32 %864, i32* %867, align 4
  %868 = load i32*, i32** %4, align 8
  %869 = load i64, i64* @EXT_CSD_DEVICE_LIFE_TIME_EST_TYP_B, align 8
  %870 = getelementptr inbounds i32, i32* %868, i64 %869
  %871 = load i32, i32* %870, align 4
  %872 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %873 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %872, i32 0, i32 1
  %874 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %873, i32 0, i32 59
  store i32 %871, i32* %874, align 8
  br label %875

875:                                              ; preds = %848, %818
  %876 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %877 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %876, i32 0, i32 1
  %878 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %877, i32 0, i32 1
  %879 = load i32, i32* %878, align 4
  %880 = icmp sge i32 %879, 8
  br i1 %880, label %881, label %930

881:                                              ; preds = %875
  %882 = load i32*, i32** %4, align 8
  %883 = load i64, i64* @EXT_CSD_CMDQ_SUPPORT, align 8
  %884 = getelementptr inbounds i32, i32* %882, i64 %883
  %885 = load i32, i32* %884, align 4
  %886 = load i32, i32* @EXT_CSD_CMDQ_SUPPORTED, align 4
  %887 = and i32 %885, %886
  %888 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %889 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %888, i32 0, i32 1
  %890 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %889, i32 0, i32 60
  store i32 %887, i32* %890, align 4
  %891 = load i32*, i32** %4, align 8
  %892 = load i64, i64* @EXT_CSD_CMDQ_DEPTH, align 8
  %893 = getelementptr inbounds i32, i32* %891, i64 %892
  %894 = load i32, i32* %893, align 4
  %895 = load i32, i32* @EXT_CSD_CMDQ_DEPTH_MASK, align 4
  %896 = and i32 %894, %895
  %897 = add nsw i32 %896, 1
  %898 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %899 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %898, i32 0, i32 1
  %900 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %899, i32 0, i32 61
  store i32 %897, i32* %900, align 8
  %901 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %902 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %902, i32 0, i32 61
  %904 = load i32, i32* %903, align 8
  %905 = icmp sle i32 %904, 2
  br i1 %905, label %906, label %913

906:                                              ; preds = %881
  %907 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %908 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %907, i32 0, i32 1
  %909 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %908, i32 0, i32 60
  store i32 0, i32* %909, align 4
  %910 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %911 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %911, i32 0, i32 61
  store i32 0, i32* %912, align 8
  br label %913

913:                                              ; preds = %906, %881
  %914 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %915 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %914, i32 0, i32 1
  %916 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %915, i32 0, i32 60
  %917 = load i32, i32* %916, align 4
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %919, label %929

919:                                              ; preds = %913
  %920 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %921 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %920, i32 0, i32 2
  %922 = load i32, i32* %921, align 8
  %923 = call i32 @mmc_hostname(i32 %922)
  %924 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %925 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %924, i32 0, i32 1
  %926 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %925, i32 0, i32 61
  %927 = load i32, i32* %926, align 8
  %928 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %923, i32 %927)
  br label %929

929:                                              ; preds = %919, %913
  br label %930

930:                                              ; preds = %929, %875
  br label %931

931:                                              ; preds = %930, %29
  %932 = load i32, i32* %5, align 4
  ret i32 %932
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local %struct.device_node* @mmc_of_find_child_device(i32, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @mmc_fixup_device(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_card_set_blockaddr(%struct.mmc_card*) #1

declare dso_local i32 @mmc_select_card_type(%struct.mmc_card*) #1

declare dso_local i64 @mmc_boot_partition_access(i32) #1

declare dso_local i32 @mmc_part_add(%struct.mmc_card*, i32, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_manage_enhanced_area(%struct.mmc_card*, i32*) #1

declare dso_local i32 @mmc_manage_gp_partitions(%struct.mmc_card*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @mmc_card_broken_hpi(%struct.mmc_card*) #1

declare dso_local i64 @mmc_host_cmd23(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
