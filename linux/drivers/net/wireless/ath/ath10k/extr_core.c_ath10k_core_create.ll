; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32*, i32*, i32*, %struct.TYPE_9__, %struct.device*, i32, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.ath10k_hif_ops* }
%struct.TYPE_8__ = type { i32, %struct.ath10k* }
%struct.device = type { i32 }
%struct.ath10k_hif_ops = type { i32 }

@qca988x_regs = common dso_local global i32 0, align 4
@qcax_ce_regs = common dso_local global i32 0, align 4
@qca988x_values = common dso_local global i32 0, align 4
@qca6174_regs = common dso_local global i32 0, align 4
@qca6174_values = common dso_local global i32 0, align 4
@qca99x0_regs = common dso_local global i32 0, align 4
@qca99x0_values = common dso_local global i32 0, align 4
@qca9888_values = common dso_local global i32 0, align 4
@qca4019_regs = common dso_local global i32 0, align 4
@qca4019_values = common dso_local global i32 0, align 4
@wcn3990_regs = common dso_local global i32 0, align 4
@wcn3990_ce_regs = common dso_local global i32 0, align 4
@wcn3990_values = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unsupported core hardware revision %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@ath10k_scan_timeout_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ath10k_wq\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ath10k_aux_wq\00", align 1
@ath10k_offchan_tx_work = common dso_local global i32 0, align 4
@ath10k_mgmt_over_wmi_tx_work = common dso_local global i32 0, align 4
@ath10k_core_register_work = common dso_local global i32 0, align 4
@ath10k_core_restart = common dso_local global i32 0, align 4
@ath10k_core_set_coverage_class_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath10k* @ath10k_core_create(i64 %0, %struct.device* %1, i32 %2, i32 %3, %struct.ath10k_hif_ops* %4) #0 {
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath10k_hif_ops*, align 8
  %12 = alloca %struct.ath10k*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ath10k_hif_ops* %4, %struct.ath10k_hif_ops** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call %struct.ath10k* @ath10k_mac_create(i64 %14)
  store %struct.ath10k* %15, %struct.ath10k** %12, align 8
  %16 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %17 = icmp ne %struct.ath10k* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.ath10k* null, %struct.ath10k** %6, align 8
  br label %242

19:                                               ; preds = %5
  %20 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %21 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 35
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store %struct.ath10k* %20, %struct.ath10k** %23, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 34
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 35
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 33
  store %struct.device* %30, %struct.device** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ath10k_hif_ops*, %struct.ath10k_hif_ops** %11, align 8
  %37 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 32
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store %struct.ath10k_hif_ops* %36, %struct.ath10k_hif_ops** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %42 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %41, i32 0, i32 32
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %87 [
    i32 131, label %45
    i32 133, label %45
    i32 135, label %52
    i32 134, label %52
    i32 129, label %59
    i32 130, label %59
    i32 132, label %66
    i32 136, label %73
    i32 128, label %80
  ]

45:                                               ; preds = %19, %19
  %46 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 31
  store i32* @qca988x_regs, i32** %47, align 8
  %48 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %49 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %48, i32 0, i32 30
  store i32* @qcax_ce_regs, i32** %49, align 8
  %50 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %51 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %50, i32 0, i32 29
  store i32* @qca988x_values, i32** %51, align 8
  br label %93

52:                                               ; preds = %19, %19
  %53 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %54 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %53, i32 0, i32 31
  store i32* @qca6174_regs, i32** %54, align 8
  %55 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 30
  store i32* @qcax_ce_regs, i32** %56, align 8
  %57 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %58 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %57, i32 0, i32 29
  store i32* @qca6174_values, i32** %58, align 8
  br label %93

59:                                               ; preds = %19, %19
  %60 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 31
  store i32* @qca99x0_regs, i32** %61, align 8
  %62 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %63 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %62, i32 0, i32 30
  store i32* @qcax_ce_regs, i32** %63, align 8
  %64 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %65 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %64, i32 0, i32 29
  store i32* @qca99x0_values, i32** %65, align 8
  br label %93

66:                                               ; preds = %19
  %67 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %68 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %67, i32 0, i32 31
  store i32* @qca99x0_regs, i32** %68, align 8
  %69 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %70 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %69, i32 0, i32 30
  store i32* @qcax_ce_regs, i32** %70, align 8
  %71 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %72 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %71, i32 0, i32 29
  store i32* @qca9888_values, i32** %72, align 8
  br label %93

73:                                               ; preds = %19
  %74 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %75 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %74, i32 0, i32 31
  store i32* @qca4019_regs, i32** %75, align 8
  %76 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %77 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %76, i32 0, i32 30
  store i32* @qcax_ce_regs, i32** %77, align 8
  %78 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %79 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %78, i32 0, i32 29
  store i32* @qca4019_values, i32** %79, align 8
  br label %93

80:                                               ; preds = %19
  %81 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %82 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %81, i32 0, i32 31
  store i32* @wcn3990_regs, i32** %82, align 8
  %83 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %84 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %83, i32 0, i32 30
  store i32* @wcn3990_ce_regs, i32** %84, align 8
  %85 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %86 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %85, i32 0, i32 29
  store i32* @wcn3990_values, i32** %86, align 8
  br label %93

87:                                               ; preds = %19
  %88 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ath10k_err(%struct.ath10k* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ENOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %13, align 4
  br label %239

93:                                               ; preds = %80, %73, %66, %59, %52, %45
  %94 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %95 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %94, i32 0, i32 19
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = call i32 @init_completion(i32* %96)
  %98 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %99 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %98, i32 0, i32 19
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = call i32 @init_completion(i32* %100)
  %102 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %103 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %102, i32 0, i32 19
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = call i32 @init_completion(i32* %104)
  %106 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %107 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %106, i32 0, i32 28
  %108 = call i32 @init_completion(i32* %107)
  %109 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %110 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %109, i32 0, i32 27
  %111 = call i32 @init_completion(i32* %110)
  %112 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %113 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %112, i32 0, i32 26
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = call i32 @init_completion(i32* %114)
  %116 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %117 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %116, i32 0, i32 25
  %118 = call i32 @init_completion(i32* %117)
  %119 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %120 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %119, i32 0, i32 24
  %121 = call i32 @init_completion(i32* %120)
  %122 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %123 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %122, i32 0, i32 23
  %124 = call i32 @init_completion(i32* %123)
  %125 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %126 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %125, i32 0, i32 22
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = call i32 @init_completion(i32* %127)
  %129 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %130 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %129, i32 0, i32 21
  %131 = call i32 @init_completion(i32* %130)
  %132 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %133 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %132, i32 0, i32 20
  %134 = call i32 @init_completion(i32* %133)
  %135 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %136 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %135, i32 0, i32 19
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* @ath10k_scan_timeout_work, align 4
  %139 = call i32 @INIT_DELAYED_WORK(i32* %137, i32 %138)
  %140 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %142 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %144 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %93
  br label %239

148:                                              ; preds = %93
  %149 = call i8* @create_singlethread_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %150 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %151 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %153 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %148
  br label %234

157:                                              ; preds = %148
  %158 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %159 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %158, i32 0, i32 18
  %160 = call i32 @mutex_init(i32* %159)
  %161 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %162 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %161, i32 0, i32 17
  %163 = call i32 @mutex_init(i32* %162)
  %164 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %165 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %164, i32 0, i32 16
  %166 = call i32 @spin_lock_init(i32* %165)
  %167 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %168 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %167, i32 0, i32 15
  %169 = call i32 @INIT_LIST_HEAD(i32* %168)
  %170 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %171 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %170, i32 0, i32 14
  %172 = call i32 @init_waitqueue_head(i32* %171)
  %173 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %174 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %173, i32 0, i32 13
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = call i32 @init_waitqueue_head(i32* %175)
  %177 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %178 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %177, i32 0, i32 12
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = call i32 @init_waitqueue_head(i32* %179)
  %181 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %182 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %181, i32 0, i32 11
  %183 = call i32 @init_completion(i32* %182)
  %184 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %185 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %184, i32 0, i32 10
  %186 = load i32, i32* @ath10k_offchan_tx_work, align 4
  %187 = call i32 @INIT_WORK(i32* %185, i32 %186)
  %188 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %189 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %188, i32 0, i32 9
  %190 = call i32 @skb_queue_head_init(i32* %189)
  %191 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %192 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %191, i32 0, i32 8
  %193 = load i32, i32* @ath10k_mgmt_over_wmi_tx_work, align 4
  %194 = call i32 @INIT_WORK(i32* %192, i32 %193)
  %195 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %196 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %195, i32 0, i32 7
  %197 = call i32 @skb_queue_head_init(i32* %196)
  %198 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %199 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %198, i32 0, i32 6
  %200 = load i32, i32* @ath10k_core_register_work, align 4
  %201 = call i32 @INIT_WORK(i32* %199, i32 %200)
  %202 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %203 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %202, i32 0, i32 5
  %204 = load i32, i32* @ath10k_core_restart, align 4
  %205 = call i32 @INIT_WORK(i32* %203, i32 %204)
  %206 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %207 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %206, i32 0, i32 4
  %208 = load i32, i32* @ath10k_core_set_coverage_class_work, align 4
  %209 = call i32 @INIT_WORK(i32* %207, i32 %208)
  %210 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %211 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %210, i32 0, i32 3
  %212 = call i32 @init_dummy_netdev(i32* %211)
  %213 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %214 = call i32 @ath10k_coredump_create(%struct.ath10k* %213)
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %157
  br label %229

218:                                              ; preds = %157
  %219 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %220 = call i32 @ath10k_debug_create(%struct.ath10k* %219)
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %226

224:                                              ; preds = %218
  %225 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %225, %struct.ath10k** %6, align 8
  br label %242

226:                                              ; preds = %223
  %227 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %228 = call i32 @ath10k_coredump_destroy(%struct.ath10k* %227)
  br label %229

229:                                              ; preds = %226, %217
  %230 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %231 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @destroy_workqueue(i8* %232)
  br label %234

234:                                              ; preds = %229, %156
  %235 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %236 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @destroy_workqueue(i8* %237)
  br label %239

239:                                              ; preds = %234, %147, %87
  %240 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %241 = call i32 @ath10k_mac_destroy(%struct.ath10k* %240)
  store %struct.ath10k* null, %struct.ath10k** %6, align 8
  br label %242

242:                                              ; preds = %239, %224, %18
  %243 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  ret %struct.ath10k* %243
}

declare dso_local %struct.ath10k* @ath10k_mac_create(i64) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_dummy_netdev(i32*) #1

declare dso_local i32 @ath10k_coredump_create(%struct.ath10k*) #1

declare dso_local i32 @ath10k_debug_create(%struct.ath10k*) #1

declare dso_local i32 @ath10k_coredump_destroy(%struct.ath10k*) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @ath10k_mac_destroy(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
