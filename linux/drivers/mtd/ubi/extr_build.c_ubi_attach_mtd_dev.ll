; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_attach_mtd_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_attach_mtd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.mtd_info* }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.mtd_info = type { i32, i64, i32, i32 }

@MAX_MTD_UBI_BEB_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CONFIG_MTD_UBI_BEB_LIMIT = common dso_local global i32 0, align 4
@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@ubi_devices = common dso_local global %struct.ubi_device** null, align 8
@.str = private unnamed_addr constant [41 x i8] c"ubi: mtd%d is already attached to ubi%d\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@MTD_UBIVOLUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"ubi: refuse attaching mtd%d - it is already emulated on top of UBI\0A\00", align 1
@MTD_MLCNANDFLASH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"ubi: refuse attaching mtd%d - MLC NAND is not supported\0A\00", align 1
@UBI_DEV_NUM_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ubi: only %d UBI devices may be created\0A\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"ubi: ubi%i already exists\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_release = common dso_local global i32 0, align 4
@ubi_class = common dso_local global i32 0, align 4
@ubi_dev_groups = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"attaching mtd%d\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to attach mtd%d, error %d\00", align 1
@ubi_thread = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"cannot spawn \22%s\22, error %d\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"attached mtd%d (name \22%s\22, size %llu MiB)\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"PEB size: %d bytes (%d KiB), LEB size: %d bytes\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"min./max. I/O unit sizes: %d/%d, sub-page size %d\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"VID header offset: %d (aligned %d), data offset: %d\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"good PEBs: %d, bad PEBs: %d, corrupted PEBs: %d\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"user volume: %d, internal volumes: %d, max. volumes count: %d\00", align 1
@UBI_INT_VOL_COUNT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [75 x i8] c"max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u\00", align 1
@CONFIG_MTD_UBI_WL_THRESHOLD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [84 x i8] c"available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d\00", align 1
@UBI_VOLUME_ADDED = common dso_local global i32 0, align 4
@UBI_FM_MAX_POOL_SIZE = common dso_local global i32 0, align 4
@UBI_FM_MAX_START = common dso_local global i32 0, align 4
@UBI_FM_MIN_POOL_SIZE = common dso_local global i32 0, align 4
@fm_autoconvert = common dso_local global i32 0, align 4
@fm_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_attach_mtd_dev(%struct.mtd_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubi_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MAX_MTD_UBI_BEB_LIMIT, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %427

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @CONFIG_MTD_UBI_BEB_LIMIT, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %22
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %33, i64 %35
  %37 = load %struct.ubi_device*, %struct.ubi_device** %36, align 8
  store %struct.ubi_device* %37, %struct.ubi_device** %10, align 8
  %38 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %39 = icmp ne %struct.ubi_device* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %45 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %44, i32 0, i32 40
  %46 = load %struct.mtd_info*, %struct.mtd_info** %45, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @EEXIST, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %427

58:                                               ; preds = %40, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %28

62:                                               ; preds = %28
  %63 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %64 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MTD_UBIVOLUME, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %427

75:                                               ; preds = %62
  %76 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %77 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MTD_MLCNANDFLASH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %427

88:                                               ; preds = %75
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @UBI_DEV_NUM_AUTO, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %106, %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %98, i64 %100
  %102 = load %struct.ubi_device*, %struct.ubi_device** %101, align 8
  %103 = icmp ne %struct.ubi_device* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  br label %109

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %93

109:                                              ; preds = %104, %93
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %115 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @ENFILE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %427

118:                                              ; preds = %109
  br label %139

119:                                              ; preds = %88
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %427

126:                                              ; preds = %119
  %127 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %127, i64 %129
  %131 = load %struct.ubi_device*, %struct.ubi_device** %130, align 8
  %132 = icmp ne %struct.ubi_device* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EEXIST, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %427

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %118
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call %struct.ubi_device* @kzalloc(i32 232, i32 %140)
  store %struct.ubi_device* %141, %struct.ubi_device** %10, align 8
  %142 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %143 = icmp ne %struct.ubi_device* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %427

147:                                              ; preds = %139
  %148 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %149 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %148, i32 0, i32 22
  %150 = call i32 @device_initialize(%struct.TYPE_7__* %149)
  %151 = load i32, i32* @dev_release, align 4
  %152 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %153 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %152, i32 0, i32 22
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  %155 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %156 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %155, i32 0, i32 22
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  store i32* @ubi_class, i32** %157, align 8
  %158 = load i32, i32* @ubi_dev_groups, align 4
  %159 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %160 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %159, i32 0, i32 22
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %163 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %164 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %163, i32 0, i32 40
  store %struct.mtd_info* %162, %struct.mtd_info** %164, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %167 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %170 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %172 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %171, i32 0, i32 2
  store i32 -1, i32* %172, align 8
  %173 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %174 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %173, i32 0, i32 3
  store i32 1, i32* %174, align 4
  %175 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %176 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %175, i32 0, i32 37
  %177 = call i32 @mutex_init(i32* %176)
  %178 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %179 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %178, i32 0, i32 36
  %180 = call i32 @mutex_init(i32* %179)
  %181 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %182 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %181, i32 0, i32 35
  %183 = call i32 @mutex_init(i32* %182)
  %184 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %185 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %184, i32 0, i32 34
  %186 = call i32 @spin_lock_init(i32* %185)
  %187 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %188 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %187, i32 0, i32 33
  %189 = call i32 @init_rwsem(i32* %188)
  %190 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %191 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %190, i32 0, i32 32
  %192 = call i32 @init_rwsem(i32* %191)
  %193 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %194 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %195 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %196)
  %198 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @io_init(%struct.ubi_device* %198, i32 %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %147
  br label %414

204:                                              ; preds = %147
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %12, align 4
  %207 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %208 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @vmalloc(i32 %209)
  %211 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %212 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %211, i32 0, i32 24
  store i32 %210, i32* %212, align 4
  %213 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %214 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %213, i32 0, i32 24
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %204
  br label %414

218:                                              ; preds = %204
  %219 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %220 = call i32 @ubi_attach(%struct.ubi_device* %219, i32 0)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218
  %224 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %225 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %226 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %224, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %227, i32 %228)
  br label %414

230:                                              ; preds = %218
  %231 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %232 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, -1
  br i1 %234, label %235, label %245

235:                                              ; preds = %230
  %236 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %237 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %238 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @autoresize(%struct.ubi_device* %236, i32 %239)
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %401

244:                                              ; preds = %235
  br label %245

245:                                              ; preds = %244, %230
  %246 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %247 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %247, i64 %249
  store %struct.ubi_device* %246, %struct.ubi_device** %250, align 8
  %251 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %252 = call i32 @uif_init(%struct.ubi_device* %251)
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %245
  br label %401

256:                                              ; preds = %245
  %257 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %258 = call i32 @ubi_debugfs_init_dev(%struct.ubi_device* %257)
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  br label %398

262:                                              ; preds = %256
  %263 = load i32, i32* @ubi_thread, align 4
  %264 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %265 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %266 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @kthread_create(i32 %263, %struct.ubi_device* %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %267)
  %269 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %270 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %269, i32 0, i32 27
  store i32 %268, i32* %270, align 8
  %271 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %272 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %271, i32 0, i32 27
  %273 = load i32, i32* %272, align 8
  %274 = call i64 @IS_ERR(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %262
  %277 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %278 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %277, i32 0, i32 27
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @PTR_ERR(i32 %279)
  store i32 %280, i32* %12, align 4
  %281 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %282 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %283 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %12, align 4
  %286 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %281, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %284, i32 %285)
  br label %395

287:                                              ; preds = %262
  %288 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %289 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %290 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %293 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %296 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 8
  %298 = ashr i32 %297, 20
  %299 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %288, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %291, i32 %294, i32 %298)
  %300 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %301 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %302 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %305 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = ashr i32 %306, 10
  %308 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %309 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 4
  %311 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %300, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %303, i32 %307, i32 %310)
  %312 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %313 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %314 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %317 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %316, i32 0, i32 9
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %320 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %319, i32 0, i32 10
  %321 = load i32, i32* %320, align 8
  %322 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %312, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %315, i32 %318, i32 %321)
  %323 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %324 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %325 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %328 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %327, i32 0, i32 11
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %331 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %330, i32 0, i32 12
  %332 = load i32, i32* %331, align 8
  %333 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %323, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %326, i32 %329, i32 %332)
  %334 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %335 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %336 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %335, i32 0, i32 13
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %339 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %338, i32 0, i32 14
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %342 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %341, i32 0, i32 15
  %343 = load i32, i32* %342, align 4
  %344 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %334, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 %337, i32 %340, i32 %343)
  %345 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %346 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %347 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %346, i32 0, i32 16
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @UBI_INT_VOL_COUNT, align 4
  %350 = sub nsw i32 %348, %349
  %351 = load i32, i32* @UBI_INT_VOL_COUNT, align 4
  %352 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %353 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %352, i32 0, i32 17
  %354 = load i32, i32* %353, align 4
  %355 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %345, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i32 %350, i32 %351, i32 %354)
  %356 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %357 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %358 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %357, i32 0, i32 30
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %361 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %360, i32 0, i32 29
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @CONFIG_MTD_UBI_WL_THRESHOLD, align 4
  %364 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %365 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %364, i32 0, i32 28
  %366 = load i32, i32* %365, align 4
  %367 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %356, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 %359, i32 %362, i32 %363, i32 %366)
  %368 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %369 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %370 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %369, i32 0, i32 18
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %373 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %372, i32 0, i32 19
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %376 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %375, i32 0, i32 20
  %377 = load i32, i32* %376, align 8
  %378 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_msg(%struct.ubi_device* %368, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.16, i64 0, i64 0), i32 %371, i32 %374, i32 %377)
  %379 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %380 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %379, i32 0, i32 26
  %381 = call i32 @spin_lock(i32* %380)
  %382 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %383 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %382, i32 0, i32 21
  store i32 1, i32* %383, align 4
  %384 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %385 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %384, i32 0, i32 27
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @wake_up_process(i32 %386)
  %388 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %389 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %388, i32 0, i32 26
  %390 = call i32 @spin_unlock(i32* %389)
  %391 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %392 = load i32, i32* @UBI_VOLUME_ADDED, align 4
  %393 = call i32 @ubi_notify_all(%struct.ubi_device* %391, i32 %392, i32* null)
  %394 = load i32, i32* %7, align 4
  store i32 %394, i32* %5, align 4
  br label %427

395:                                              ; preds = %276
  %396 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %397 = call i32 @ubi_debugfs_exit_dev(%struct.ubi_device* %396)
  br label %398

398:                                              ; preds = %395, %261
  %399 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %400 = call i32 @uif_close(%struct.ubi_device* %399)
  br label %401

401:                                              ; preds = %398, %255, %243
  %402 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %402, i64 %404
  store %struct.ubi_device* null, %struct.ubi_device** %405, align 8
  %406 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %407 = call i32 @ubi_wl_close(%struct.ubi_device* %406)
  %408 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %409 = call i32 @ubi_free_internal_volumes(%struct.ubi_device* %408)
  %410 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %411 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %410, i32 0, i32 25
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @vfree(i32 %412)
  br label %414

414:                                              ; preds = %401, %223, %217, %203
  %415 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %416 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %415, i32 0, i32 24
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @vfree(i32 %417)
  %419 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %420 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %419, i32 0, i32 23
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @vfree(i32 %421)
  %423 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %424 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %423, i32 0, i32 22
  %425 = call i32 @put_device(%struct.TYPE_7__* %424)
  %426 = load i32, i32* %12, align 4
  store i32 %426, i32* %5, align 4
  br label %427

427:                                              ; preds = %414, %287, %144, %133, %123, %113, %81, %68, %50, %19
  %428 = load i32, i32* %5, align 4
  ret i32 %428
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local %struct.ubi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @io_init(%struct.ubi_device*, i32) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @ubi_attach(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @autoresize(%struct.ubi_device*, i32) #1

declare dso_local i32 @uif_init(%struct.ubi_device*) #1

declare dso_local i32 @ubi_debugfs_init_dev(%struct.ubi_device*) #1

declare dso_local i32 @kthread_create(i32, %struct.ubi_device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubi_notify_all(%struct.ubi_device*, i32, i32*) #1

declare dso_local i32 @ubi_debugfs_exit_dev(%struct.ubi_device*) #1

declare dso_local i32 @uif_close(%struct.ubi_device*) #1

declare dso_local i32 @ubi_wl_close(%struct.ubi_device*) #1

declare dso_local i32 @ubi_free_internal_volumes(%struct.ubi_device*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
