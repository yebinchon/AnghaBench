; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.sdio_func = type { %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.if_sdio_card = type { i32, %struct.if_sdio_card*, %struct.if_sdio_card*, i32, %struct.lbs_private*, i64, i32, i32, i32, i32, %struct.sdio_func* }
%struct.lbs_private = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.if_sdio_packet* }
%struct.if_sdio_packet = type { i32, %struct.if_sdio_packet*, %struct.if_sdio_packet*, i32, %struct.lbs_private*, i64, i32, i32, i32, i32, %struct.sdio_func* }

@.str = private unnamed_addr constant [19 x i8] c"802.11 SDIO ID: %x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ID: %x\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"IBIS Wireless SDIO Card\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to identify card model\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IF_SDIO_SCRATCH_OLD = common dso_local global i32 0, align 4
@IF_SDIO_SCRATCH = common dso_local global i32 0, align 4
@IF_SDIO_FW_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"libertas_sdio\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@if_sdio_host_to_card_worker = common dso_local global i32 0, align 4
@fw_table = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"unknown card model 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"class = 0x%X, vendor = 0x%X, device = 0x%X, model = 0x%X, ioport = 0x%X\0A\00", align 1
@if_sdio_host_to_card = common dso_local global i32 0, align 4
@if_sdio_enter_deep_sleep = common dso_local global i32 0, align 4
@if_sdio_exit_deep_sleep = common dso_local global i32 0, align 4
@if_sdio_reset_deep_sleep_wakeup = common dso_local global i32 0, align 4
@if_sdio_reset_card = common dso_local global i32 0, align 4
@if_sdio_power_save = common dso_local global i32 0, align 4
@if_sdio_power_restore = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @if_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.if_sdio_card*, align 8
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.if_sdio_packet*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %60, %2
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %12
  %21 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %22 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sscanf(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %10)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %63

33:                                               ; preds = %20
  %34 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %35 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sscanf(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %63

46:                                               ; preds = %33
  %47 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %48 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcmp(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store i32 130, i32* %10, align 4
  br label %63

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %12

63:                                               ; preds = %58, %45, %32, %12
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %66 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %273

75:                                               ; preds = %63
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.if_sdio_packet* @kzalloc(i32 72, i32 %76)
  %78 = bitcast %struct.if_sdio_packet* %77 to %struct.if_sdio_card*
  store %struct.if_sdio_card* %78, %struct.if_sdio_card** %6, align 8
  %79 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %80 = icmp ne %struct.if_sdio_card* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %273

84:                                               ; preds = %75
  %85 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %86 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %87 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %86, i32 0, i32 10
  store %struct.sdio_func* %85, %struct.sdio_func** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %90 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %92 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %103 [
    i32 130, label %94
    i32 129, label %98
    i32 128, label %102
  ]

94:                                               ; preds = %84
  %95 = load i32, i32* @IF_SDIO_SCRATCH_OLD, align 4
  %96 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %97 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 4
  br label %107

98:                                               ; preds = %84
  %99 = load i32, i32* @IF_SDIO_SCRATCH, align 4
  %100 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %101 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 4
  br label %107

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %84, %102
  %104 = load i32, i32* @IF_SDIO_FW_STATUS, align 4
  %105 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %106 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %98, %94
  %108 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %109 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %108, i32 0, i32 8
  %110 = call i32 @spin_lock_init(i32* %109)
  %111 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %112 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 0)
  %113 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %114 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %116 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %115, i32 0, i32 7
  %117 = load i32, i32* @if_sdio_host_to_card_worker, align 4
  %118 = call i32 @INIT_WORK(i32* %116, i32 %117)
  %119 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %120 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %119, i32 0, i32 6
  %121 = call i32 @init_waitqueue_head(i32* %120)
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %140, %107
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fw_table, align 8
  %125 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %124)
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %122
  %128 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %129 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fw_table, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %130, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %143

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %122

143:                                              ; preds = %138, %122
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fw_table, align 8
  %146 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %145)
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %150 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %245

155:                                              ; preds = %143
  %156 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %157 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %158 = bitcast %struct.if_sdio_card* %157 to %struct.if_sdio_packet*
  %159 = call i32 @sdio_set_drvdata(%struct.sdio_func* %156, %struct.if_sdio_packet* %158)
  %160 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %161 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %164 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %167 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %171 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %162, i32 %165, i32 %168, i32 %169, i32 %173)
  %175 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %176 = bitcast %struct.if_sdio_card* %175 to %struct.if_sdio_packet*
  %177 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %178 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %177, i32 0, i32 1
  %179 = call %struct.lbs_private* @lbs_add_card(%struct.if_sdio_packet* %176, i32* %178)
  store %struct.lbs_private* %179, %struct.lbs_private** %7, align 8
  %180 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %181 = call i64 @IS_ERR(%struct.lbs_private* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %155
  %184 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %185 = call i32 @PTR_ERR(%struct.lbs_private* %184)
  store i32 %185, i32* %8, align 4
  br label %245

186:                                              ; preds = %155
  %187 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %188 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %189 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %188, i32 0, i32 4
  store %struct.lbs_private* %187, %struct.lbs_private** %189, align 8
  %190 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %191 = bitcast %struct.if_sdio_card* %190 to %struct.if_sdio_packet*
  %192 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %193 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %192, i32 0, i32 8
  store %struct.if_sdio_packet* %191, %struct.if_sdio_packet** %193, align 8
  %194 = load i32, i32* @if_sdio_host_to_card, align 4
  %195 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %196 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @if_sdio_enter_deep_sleep, align 4
  %198 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %199 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* @if_sdio_exit_deep_sleep, align 4
  %201 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %202 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* @if_sdio_reset_deep_sleep_wakeup, align 4
  %204 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %205 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* @if_sdio_reset_card, align 4
  %207 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %208 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* @if_sdio_power_save, align 4
  %210 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %211 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* @if_sdio_power_restore, align 4
  %213 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %214 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %216 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %215, i32 0, i32 0
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %228 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %230 = bitcast %struct.if_sdio_card* %229 to %struct.if_sdio_packet*
  %231 = call i32 @if_sdio_power_on(%struct.if_sdio_packet* %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %186
  br label %238

235:                                              ; preds = %186
  br label %236

236:                                              ; preds = %269, %235
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %3, align 4
  br label %273

238:                                              ; preds = %234
  %239 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %240 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @flush_workqueue(i32 %241)
  %243 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %244 = call i32 @lbs_remove_card(%struct.lbs_private* %243)
  br label %245

245:                                              ; preds = %238, %183, %148
  %246 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %247 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @destroy_workqueue(i32 %248)
  br label %250

250:                                              ; preds = %255, %245
  %251 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %252 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %251, i32 0, i32 2
  %253 = load %struct.if_sdio_card*, %struct.if_sdio_card** %252, align 8
  %254 = icmp ne %struct.if_sdio_card* %253, null
  br i1 %254, label %255, label %269

255:                                              ; preds = %250
  %256 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %257 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %256, i32 0, i32 2
  %258 = load %struct.if_sdio_card*, %struct.if_sdio_card** %257, align 8
  %259 = bitcast %struct.if_sdio_card* %258 to %struct.if_sdio_packet*
  store %struct.if_sdio_packet* %259, %struct.if_sdio_packet** %11, align 8
  %260 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %261 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %260, i32 0, i32 2
  %262 = load %struct.if_sdio_card*, %struct.if_sdio_card** %261, align 8
  %263 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %262, i32 0, i32 1
  %264 = load %struct.if_sdio_card*, %struct.if_sdio_card** %263, align 8
  %265 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %266 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %265, i32 0, i32 2
  store %struct.if_sdio_card* %264, %struct.if_sdio_card** %266, align 8
  %267 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %268 = call i32 @kfree(%struct.if_sdio_packet* %267)
  br label %250

269:                                              ; preds = %250
  %270 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  %271 = bitcast %struct.if_sdio_card* %270 to %struct.if_sdio_packet*
  %272 = call i32 @kfree(%struct.if_sdio_packet* %271)
  br label %236

273:                                              ; preds = %236, %81, %71
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.if_sdio_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.if_sdio_packet*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.lbs_private* @lbs_add_card(%struct.if_sdio_packet*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.lbs_private*) #1

declare dso_local i32 @PTR_ERR(%struct.lbs_private*) #1

declare dso_local i32 @if_sdio_power_on(%struct.if_sdio_packet*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @lbs_remove_card(%struct.lbs_private*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.if_sdio_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
