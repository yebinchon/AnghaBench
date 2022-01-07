; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.device = type { i32 }
%struct.tegra_cec = type { i64, i32, %struct.device*, i32, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to allocate resources for device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to request mem region for device\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to grab IOs for device\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Can't get clock for CEC\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@tegra_cec_irq_handler = common dso_local global i32 0, align 4
@tegra_cec_irq_thread_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"cec_irq\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Unable to request interrupt for device\0A\00", align 1
@tegra_cec_ops = common dso_local global i32 0, align 4
@TEGRA_CEC_NAME = common dso_local global i32 0, align 4
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_ALL = common dso_local global i32 0, align 4
@CEC_CAP_CONNECTOR_INFO = common dso_local global i32 0, align 4
@CEC_MAX_LOG_ADDRS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Couldn't create cec adapter\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Couldn't register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_cec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_cec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_cec*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.device* @cec_notifier_parse_hdmi_phandle(i32* %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i64 @IS_ERR(%struct.device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.device* %15)
  store i32 %16, i32* %2, align 4
  br label %204

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tegra_cec* @devm_kzalloc(i32* %19, i32 48, i32 %20)
  store %struct.tegra_cec* %21, %struct.tegra_cec** %5, align 8
  %22 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %23 = icmp ne %struct.tegra_cec* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %204

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %6, align 8
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = icmp ne %struct.resource* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %204

39:                                               ; preds = %27
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = call i32 @resource_size(%struct.resource* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @devm_request_mem_region(i32* %41, i32 %44, i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %39
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %204

58:                                               ; preds = %39
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = call i64 @platform_get_irq(%struct.platform_device* %59, i32 0)
  %61 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %64 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %204

70:                                               ; preds = %58
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.resource*, %struct.resource** %6, align 8
  %77 = call i32 @resource_size(%struct.resource* %76)
  %78 = call i32 @devm_ioremap_nocache(i32* %72, i32 %75, i32 %77)
  %79 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %80 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %70
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %204

91:                                               ; preds = %70
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @devm_clk_get(i32* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %96 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %98 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @IS_ERR_OR_NULL(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %91
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @ENOENT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %204

108:                                              ; preds = %91
  %109 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %110 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @clk_prepare_enable(i32 %111)
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %116 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %115, i32 0, i32 4
  store i32* %114, i32** %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %119 = call i32 @platform_set_drvdata(%struct.platform_device* %117, %struct.tegra_cec* %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %123 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @tegra_cec_irq_handler, align 4
  %126 = load i32, i32* @tegra_cec_irq_thread_handler, align 4
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @devm_request_threaded_irq(i32* %121, i64 %124, i32 %125, i32 %126, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %108
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @dev_err(i32* %134, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %198

136:                                              ; preds = %108
  %137 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %138 = load i32, i32* @TEGRA_CEC_NAME, align 4
  %139 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %140 = load i32, i32* @CEC_CAP_MONITOR_ALL, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @CEC_CAP_CONNECTOR_INFO, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  %145 = call %struct.device* @cec_allocate_adapter(i32* @tegra_cec_ops, %struct.tegra_cec* %137, i32 %138, i32 %143, i32 %144)
  %146 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %147 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %146, i32 0, i32 2
  store %struct.device* %145, %struct.device** %147, align 8
  %148 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %149 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %148, i32 0, i32 2
  %150 = load %struct.device*, %struct.device** %149, align 8
  %151 = call i64 @IS_ERR(%struct.device* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %136
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %198

159:                                              ; preds = %136
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %162 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %161, i32 0, i32 2
  %163 = load %struct.device*, %struct.device** %162, align 8
  %164 = call i32 @cec_notifier_cec_adap_register(%struct.device* %160, i32* null, %struct.device* %163)
  %165 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %166 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %168 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %159
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %7, align 4
  br label %193

174:                                              ; preds = %159
  %175 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %176 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %175, i32 0, i32 2
  %177 = load %struct.device*, %struct.device** %176, align 8
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @cec_register_adapter(%struct.device* %177, i32* %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %174
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 @dev_err(i32* %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %188

187:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %204

188:                                              ; preds = %183
  %189 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %190 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @cec_notifier_cec_adap_unregister(i32 %191)
  br label %193

193:                                              ; preds = %188, %171
  %194 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %195 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %194, i32 0, i32 2
  %196 = load %struct.device*, %struct.device** %195, align 8
  %197 = call i32 @cec_delete_adapter(%struct.device* %196)
  br label %198

198:                                              ; preds = %193, %153, %132
  %199 = load %struct.tegra_cec*, %struct.tegra_cec** %5, align 8
  %200 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @clk_disable_unprepare(i32 %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %198, %187, %102, %85, %67, %52, %33, %24, %14
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.device* @cec_notifier_parse_hdmi_phandle(i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.tegra_cec* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_request_mem_region(i32*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_ioremap_nocache(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_cec*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.device* @cec_allocate_adapter(i32*, %struct.tegra_cec*, i32, i32, i32) #1

declare dso_local i32 @cec_notifier_cec_adap_register(%struct.device*, i32*, %struct.device*) #1

declare dso_local i32 @cec_register_adapter(%struct.device*, i32*) #1

declare dso_local i32 @cec_notifier_cec_adap_unregister(i32) #1

declare dso_local i32 @cec_delete_adapter(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
