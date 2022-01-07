; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_setup_banks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_setup_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.spear_smi = type { %struct.TYPE_7__*, %struct.spear_snor_flash** }
%struct.TYPE_7__ = type { i32 }
%struct.spear_snor_flash = type { i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.spear_smi* }
%struct.TYPE_6__ = type { i32* }
%struct.spear_smi_flash_info = type { i32, i32, %struct.mtd_partition*, i64, i32, i64 }
%struct.mtd_partition = type { i32 }
%struct.spear_smi_plat_data = type { i32, %struct.spear_smi_flash_info* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"smi-nor%d not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@flash_devices = common dso_local global %struct.TYPE_9__* null, align 8
@MTD_NORFLASH = common dso_local global i32 0, align 4
@MTD_CAP_NORFLASH = common dso_local global i32 0, align 4
@spear_mtd_erase = common dso_local global i32 0, align 4
@spear_mtd_read = common dso_local global i32 0, align 4
@spear_mtd_write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mtd .name=%s .size=%llx(%lluM)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c".erasesize = 0x%x(%uK)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Err MTD partition=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, %struct.device_node*)* @spear_smi_setup_banks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_smi_setup_banks(%struct.platform_device* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.spear_smi*, align 8
  %9 = alloca %struct.spear_smi_flash_info*, align 8
  %10 = alloca %struct.spear_smi_plat_data*, align 8
  %11 = alloca %struct.spear_snor_flash*, align 8
  %12 = alloca %struct.mtd_partition*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = call %struct.spear_smi* @platform_get_drvdata(%struct.platform_device* %16)
  store %struct.spear_smi* %17, %struct.spear_smi** %8, align 8
  store %struct.mtd_partition* null, %struct.mtd_partition** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.spear_smi_plat_data* @dev_get_platdata(i32* %19)
  store %struct.spear_smi_plat_data* %20, %struct.spear_smi_plat_data** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %10, align 8
  %23 = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %272

30:                                               ; preds = %3
  %31 = load %struct.spear_smi_plat_data*, %struct.spear_smi_plat_data** %10, align 8
  %32 = getelementptr inbounds %struct.spear_smi_plat_data, %struct.spear_smi_plat_data* %31, i32 0, i32 1
  %33 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %33, i64 %35
  store %struct.spear_smi_flash_info* %36, %struct.spear_smi_flash_info** %9, align 8
  %37 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %38 = icmp ne %struct.spear_smi_flash_info* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %272

42:                                               ; preds = %30
  %43 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.spear_snor_flash* @devm_kzalloc(i32* %44, i32 96, i32 %45)
  store %struct.spear_snor_flash* %46, %struct.spear_snor_flash** %11, align 8
  %47 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %48 = icmp ne %struct.spear_snor_flash* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %272

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %55 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %57 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %63 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %65 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %64, i32 0, i32 7
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.spear_smi*, %struct.spear_smi** %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @spear_smi_probe_flash(%struct.spear_smi* %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %52
  %73 = load %struct.spear_smi*, %struct.spear_smi** %8, align 8
  %74 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %4, align 4
  br label %272

80:                                               ; preds = %52
  %81 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %84 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %87 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @devm_ioremap(i32* %82, i32 %85, i32 %88)
  %90 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %91 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %93 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %80
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %272

99:                                               ; preds = %80
  %100 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %101 = load %struct.spear_smi*, %struct.spear_smi** %8, align 8
  %102 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %101, i32 0, i32 1
  %103 = load %struct.spear_snor_flash**, %struct.spear_snor_flash*** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.spear_snor_flash*, %struct.spear_snor_flash** %103, i64 %105
  store %struct.spear_snor_flash* %100, %struct.spear_snor_flash** %106, align 8
  %107 = load %struct.spear_smi*, %struct.spear_smi** %8, align 8
  %108 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %109 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 11
  store %struct.spear_smi* %107, %struct.spear_smi** %110, align 8
  %111 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %112 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %99
  %116 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %117 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %120 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store i64 %118, i64* %121, align 8
  br label %132

122:                                              ; preds = %99
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_devices, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %130 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  store i64 %128, i64* %131, align 8
  br label %132

132:                                              ; preds = %122, %115
  %133 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %136 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 10
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32* %134, i32** %138, align 8
  %139 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %140 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %139, i32 0, i32 2
  %141 = load %struct.device_node*, %struct.device_node** %7, align 8
  %142 = call i32 @mtd_set_of_node(%struct.TYPE_8__* %140, %struct.device_node* %141)
  %143 = load i32, i32* @MTD_NORFLASH, align 4
  %144 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %145 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 9
  store i32 %143, i32* %146, align 4
  %147 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %148 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = load i32, i32* @MTD_CAP_NORFLASH, align 4
  %151 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %152 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 8
  store i32 %150, i32* %153, align 8
  %154 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %155 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %158 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_devices, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %167 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_devices, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %176 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 8
  %177 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %178 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %181 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 7
  store i32 %179, i32* %182, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_devices, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %190 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @spear_mtd_erase, align 4
  %192 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %193 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 6
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* @spear_mtd_read, align 4
  %196 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %197 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 5
  store i32 %195, i32* %198, align 4
  %199 = load i32, i32* @spear_mtd_write, align 4
  %200 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %201 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 4
  store i32 %199, i32* %202, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** @flash_devices, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %210 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 8
  %211 = load %struct.spear_smi*, %struct.spear_smi** %8, align 8
  %212 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %211, i32 0, i32 0
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %216 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = trunc i64 %218 to i32
  %220 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %221 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %225 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sdiv i32 %227, 1048576
  %229 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %219, i32 %223, i32 %228)
  %230 = load %struct.spear_smi*, %struct.spear_smi** %8, align 8
  %231 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %230, i32 0, i32 0
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %235 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %239 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sdiv i32 %241, 1024
  %243 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %233, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %242)
  %244 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %245 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %244, i32 0, i32 2
  %246 = load %struct.mtd_partition*, %struct.mtd_partition** %245, align 8
  %247 = icmp ne %struct.mtd_partition* %246, null
  br i1 %247, label %248, label %255

248:                                              ; preds = %132
  %249 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %250 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %249, i32 0, i32 2
  %251 = load %struct.mtd_partition*, %struct.mtd_partition** %250, align 8
  store %struct.mtd_partition* %251, %struct.mtd_partition** %12, align 8
  %252 = load %struct.spear_smi_flash_info*, %struct.spear_smi_flash_info** %9, align 8
  %253 = getelementptr inbounds %struct.spear_smi_flash_info, %struct.spear_smi_flash_info* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %13, align 4
  br label %255

255:                                              ; preds = %248, %132
  %256 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %11, align 8
  %257 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %256, i32 0, i32 2
  %258 = load %struct.mtd_partition*, %struct.mtd_partition** %12, align 8
  %259 = load i32, i32* %13, align 4
  %260 = call i32 @mtd_device_register(%struct.TYPE_8__* %257, %struct.mtd_partition* %258, i32 %259)
  store i32 %260, i32* %15, align 4
  %261 = load i32, i32* %15, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %255
  %264 = load %struct.spear_smi*, %struct.spear_smi** %8, align 8
  %265 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %264, i32 0, i32 0
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i32, i32* %15, align 4
  %269 = call i32 @dev_err(i32* %267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %15, align 4
  store i32 %270, i32* %4, align 4
  br label %272

271:                                              ; preds = %255
  store i32 0, i32* %4, align 4
  br label %272

272:                                              ; preds = %271, %263, %96, %72, %49, %39, %27
  %273 = load i32, i32* %4, align 4
  ret i32 %273
}

declare dso_local %struct.spear_smi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.spear_smi_plat_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.spear_snor_flash* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spear_smi_probe_flash(%struct.spear_smi*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @mtd_set_of_node(%struct.TYPE_8__*, %struct.device_node*) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_8__*, %struct.mtd_partition*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
