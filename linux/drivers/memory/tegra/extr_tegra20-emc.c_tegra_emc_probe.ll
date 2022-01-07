; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_tegra_emc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_tegra_emc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.device_node = type { i32 }
%struct.tegra_emc = type { i32, i8*, i8*, %struct.TYPE_12__, i8*, %struct.TYPE_13__*, i8*, i8*, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"EMC device tree node doesn't have memory timings\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"interrupt not specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"please update your device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_emc_clk_change_notify = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@tegra_emc_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to get emc clock: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pll_m\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to get pll_m clock: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to get pll_p clock: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to get emc_mux clock: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"failed to register clk notifier: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"failed to initialize EMC clock rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_emc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_emc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tegra_emc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @of_get_child_count(i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_info(%struct.TYPE_14__* %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %253

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %253

32:                                               ; preds = %19
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call %struct.device_node* @tegra_emc_find_node_by_ram_code(%struct.TYPE_14__* %34)
  store %struct.device_node* %35, %struct.device_node** %4, align 8
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = icmp ne %struct.device_node* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %253

41:                                               ; preds = %32
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.tegra_emc* @devm_kzalloc(%struct.TYPE_14__* %43, i32 80, i32 %44)
  store %struct.tegra_emc* %45, %struct.tegra_emc** %5, align 8
  %46 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %47 = icmp ne %struct.tegra_emc* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %253

53:                                               ; preds = %41
  %54 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %55 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %54, i32 0, i32 9
  %56 = call i32 @init_completion(i32* %55)
  %57 = load i32, i32* @tegra_emc_clk_change_notify, align 4
  %58 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %59 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %64 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %63, i32 0, i32 8
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %64, align 8
  %65 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %66 = load %struct.device_node*, %struct.device_node** %4, align 8
  %67 = call i32 @tegra_emc_load_timings_from_dt(%struct.tegra_emc* %65, %struct.device_node* %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.device_node*, %struct.device_node** %4, align 8
  %69 = call i32 @of_node_put(%struct.device_node* %68)
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %53
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %253

74:                                               ; preds = %53
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load i32, i32* @IORESOURCE_MEM, align 4
  %77 = call %struct.resource* @platform_get_resource(%struct.platform_device* %75, i32 %76, i32 0)
  store %struct.resource* %77, %struct.resource** %6, align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.resource*, %struct.resource** %6, align 8
  %81 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %79, %struct.resource* %80)
  %82 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %83 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  %84 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %85 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %84, i32 0, i32 7
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %91 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %90, i32 0, i32 7
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %2, align 4
  br label %253

94:                                               ; preds = %74
  %95 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %96 = call i32 @emc_setup_hw(%struct.tegra_emc* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %253

101:                                              ; preds = %94
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @tegra_emc_isr, align 4
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_name(%struct.TYPE_14__* %107)
  %109 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %110 = call i32 @devm_request_irq(%struct.TYPE_14__* %103, i32 %104, i32 %105, i32 0, i32 %108, %struct.tegra_emc* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %101
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %253

120:                                              ; preds = %101
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i8* @devm_clk_get(%struct.TYPE_14__* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %125 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %127 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %120
  %132 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %133 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @PTR_ERR(i8* %134)
  store i32 %135, i32* %8, align 4
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* %8, align 4
  %139 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %253

141:                                              ; preds = %120
  %142 = call i8* @clk_get_sys(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %143 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %144 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %146 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @IS_ERR(i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %141
  %151 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %152 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @PTR_ERR(i8* %153)
  store i32 %154, i32* %8, align 4
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %253

160:                                              ; preds = %141
  %161 = call i8* @clk_get_sys(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %162 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %163 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %165 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @IS_ERR(i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %160
  %170 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %171 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @PTR_ERR(i8* %172)
  store i32 %173, i32* %8, align 4
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = load i32, i32* %8, align 4
  %177 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %176)
  br label %247

178:                                              ; preds = %160
  %179 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %180 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %179, i32 0, i32 4
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @clk_get_parent(i8* %181)
  %183 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %184 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  %185 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %186 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %185, i32 0, i32 6
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @IS_ERR(i8* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %178
  %191 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %192 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %191, i32 0, i32 6
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @PTR_ERR(i8* %193)
  store i32 %194, i32* %8, align 4
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load i32, i32* %8, align 4
  %198 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %196, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %197)
  br label %242

199:                                              ; preds = %178
  %200 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %201 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %200, i32 0, i32 4
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %204 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %203, i32 0, i32 3
  %205 = call i32 @clk_notifier_register(i8* %202, %struct.TYPE_12__* %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %199
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i32, i32* %8, align 4
  %212 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %210, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %211)
  br label %242

213:                                              ; preds = %199
  %214 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %215 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %216 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %215, i32 0, i32 5
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %219 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @emc_init(%struct.tegra_emc* %214, i32 %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %213
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = load i32, i32* %8, align 4
  %233 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %231, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %232)
  br label %235

234:                                              ; preds = %213
  store i32 0, i32* %2, align 4
  br label %253

235:                                              ; preds = %229
  %236 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %237 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %236, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %240 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %239, i32 0, i32 3
  %241 = call i32 @clk_notifier_unregister(i8* %238, %struct.TYPE_12__* %240)
  br label %242

242:                                              ; preds = %235, %208, %190
  %243 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %244 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @clk_put(i8* %245)
  br label %247

247:                                              ; preds = %242, %169
  %248 = load %struct.tegra_emc*, %struct.tegra_emc** %5, align 8
  %249 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @clk_put(i8* %250)
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %247, %234, %150, %131, %113, %99, %89, %72, %48, %38, %24, %15
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i64 @of_get_child_count(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.device_node* @tegra_emc_find_node_by_ram_code(%struct.TYPE_14__*) #1

declare dso_local %struct.tegra_emc* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @tegra_emc_load_timings_from_dt(%struct.tegra_emc*, %struct.device_node*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @emc_setup_hw(%struct.tegra_emc*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.tegra_emc*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @clk_get_sys(i32*, i8*) #1

declare dso_local i8* @clk_get_parent(i8*) #1

declare dso_local i32 @clk_notifier_register(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @emc_init(%struct.tegra_emc*, i32) #1

declare dso_local i32 @clk_notifier_unregister(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @clk_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
