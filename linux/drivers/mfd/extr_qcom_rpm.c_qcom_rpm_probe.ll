; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom_rpm.c_qcom_rpm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom_rpm.c_qcom_rpm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.qcom_rpm = type { %struct.TYPE_12__*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_13__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@qcom_rpm_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"qcom,ipc\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no qcom,ipc node\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"no offset in qcom,ipc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"no bit in qcom,ipc\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"RPM version %u.%u.%u incompatible with driver version %u\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"RPM firmware %u.%u.%u\0A\00", align 1
@qcom_rpm_ack_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"qcom_rpm_ack\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to request ack interrupt\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"failed to mark ack irq as wakeup\0A\00", align 1
@qcom_rpm_err_interrupt = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"qcom_rpm_err\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"failed to request err interrupt\0A\00", align 1
@qcom_rpm_wakeup_interrupt = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"qcom_rpm_wakeup\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"failed to request wakeup interrupt\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"failed to mark wakeup irq as wakeup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_rpm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_rpm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.qcom_rpm*, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.qcom_rpm* @devm_kzalloc(%struct.TYPE_13__* %14, i32 72, i32 %15)
  store %struct.qcom_rpm* %16, %struct.qcom_rpm** %7, align 8
  %17 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %18 = icmp ne %struct.qcom_rpm* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %329

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %26 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %25, i32 0, i32 10
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %26, align 8
  %27 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %28 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %27, i32 0, i32 9
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %31 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %30, i32 0, i32 8
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32* @devm_clk_get(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %37 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %36, i32 0, i32 7
  store i32* %35, i32** %37, align 8
  %38 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %39 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %22
  %44 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %45 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %2, align 4
  br label %329

54:                                               ; preds = %43
  %55 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %56 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %55, i32 0, i32 7
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %54, %22
  %58 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %59 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %58, i32 0, i32 7
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @clk_prepare_enable(i32* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = call i32 @platform_get_irq_byname(%struct.platform_device* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %2, align 4
  br label %329

68:                                               ; preds = %57
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i32 @platform_get_irq_byname(%struct.platform_device* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %2, align 4
  br label %329

75:                                               ; preds = %68
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = call i32 @platform_get_irq_byname(%struct.platform_device* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %329

82:                                               ; preds = %75
  %83 = load i32, i32* @qcom_rpm_of_match, align 4
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call %struct.of_device_id* @of_match_device(i32 %83, %struct.TYPE_13__* %85)
  store %struct.of_device_id* %86, %struct.of_device_id** %4, align 8
  %87 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %88 = icmp ne %struct.of_device_id* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %329

92:                                               ; preds = %82
  %93 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %94 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %97 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %96, i32 0, i32 0
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load i32, i32* @IORESOURCE_MEM, align 4
  %100 = call %struct.resource* @platform_get_resource(%struct.platform_device* %98, i32 %99, i32 0)
  store %struct.resource* %100, %struct.resource** %6, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.resource*, %struct.resource** %6, align 8
  %104 = call i32* @devm_ioremap_resource(%struct.TYPE_13__* %102, %struct.resource* %103)
  %105 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %106 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %105, i32 0, i32 4
  store i32* %104, i32** %106, align 8
  %107 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %108 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @IS_ERR(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %92
  %113 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %114 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @PTR_ERR(i32* %115)
  store i32 %116, i32* %2, align 4
  br label %329

117:                                              ; preds = %92
  %118 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %119 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1024
  %122 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %123 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %122, i32 0, i32 6
  store i32* %121, i32** %123, align 8
  %124 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %125 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1536
  %128 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %129 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %128, i32 0, i32 5
  store i32* %127, i32** %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.device_node* @of_parse_phandle(i32 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %134, %struct.device_node** %5, align 8
  %135 = load %struct.device_node*, %struct.device_node** %5, align 8
  %136 = icmp ne %struct.device_node* %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %117
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %329

143:                                              ; preds = %117
  %144 = load %struct.device_node*, %struct.device_node** %5, align 8
  %145 = call i32* @syscon_node_to_regmap(%struct.device_node* %144)
  %146 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %147 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %146, i32 0, i32 3
  store i32* %145, i32** %147, align 8
  %148 = load %struct.device_node*, %struct.device_node** %5, align 8
  %149 = call i32 @of_node_put(%struct.device_node* %148)
  %150 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %151 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = call i64 @IS_ERR(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %143
  %156 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %157 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @PTR_ERR(i32* %158)
  store i32 %159, i32* %2, align 4
  br label %329

160:                                              ; preds = %143
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %166 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %165, i32 0, i32 2
  %167 = call i32 @of_property_read_u32_index(i32 %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 1, i32* %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %160
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %329

176:                                              ; preds = %160
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %182 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %181, i32 0, i32 1
  %183 = call i32 @of_property_read_u32_index(i32 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 2, i32* %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %176
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %2, align 4
  br label %329

192:                                              ; preds = %176
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %196 = call i32 @dev_set_drvdata(%struct.TYPE_13__* %194, %struct.qcom_rpm* %195)
  %197 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %198 = call i32 @RPM_STATUS_REG(%struct.qcom_rpm* %197, i32 0)
  %199 = call i64 @readl(i32 %198)
  %200 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %199, i64* %200, align 16
  %201 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %202 = call i32 @RPM_STATUS_REG(%struct.qcom_rpm* %201, i32 1)
  %203 = call i64 @readl(i32 %202)
  %204 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %203, i64* %204, align 8
  %205 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %206 = call i32 @RPM_STATUS_REG(%struct.qcom_rpm* %205, i32 2)
  %207 = call i64 @readl(i32 %206)
  %208 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %207, i64* %208, align 16
  %209 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %210 = load i64, i64* %209, align 16
  %211 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %212 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %211, i32 0, i32 0
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %210, %215
  br i1 %216, label %217, label %234

217:                                              ; preds = %192
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %221 = load i64, i64* %220, align 16
  %222 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %225 = load i64, i64* %224, align 16
  %226 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %227 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %226, i32 0, i32 0
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %219, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i64 %221, i64 %223, i64 %225, i64 %230)
  %232 = load i32, i32* @EFAULT, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %2, align 4
  br label %329

234:                                              ; preds = %192
  %235 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %236 = load i64, i64* %235, align 16
  %237 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %238 = call i32 @RPM_CTRL_REG(%struct.qcom_rpm* %237, i32 0)
  %239 = call i32 @writel(i64 %236, i32 %238)
  %240 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %243 = call i32 @RPM_CTRL_REG(%struct.qcom_rpm* %242, i32 1)
  %244 = call i32 @writel(i64 %241, i32 %243)
  %245 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %246 = load i64, i64* %245, align 16
  %247 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %248 = call i32 @RPM_CTRL_REG(%struct.qcom_rpm* %247, i32 2)
  %249 = call i32 @writel(i64 %246, i32 %248)
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %253 = load i64, i64* %252, align 16
  %254 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %257 = load i64, i64* %256, align 16
  %258 = call i32 @dev_info(%struct.TYPE_13__* %251, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i64 %253, i64 %255, i64 %257)
  %259 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %260 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %259, i32 0, i32 0
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* @qcom_rpm_ack_interrupt, align 4
  %263 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %264 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %265 = call i32 @devm_request_irq(%struct.TYPE_13__* %260, i32 %261, i32 %262, i32 %263, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), %struct.qcom_rpm* %264)
  store i32 %265, i32* %12, align 4
  %266 = load i32, i32* %12, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %234
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %269, i32 0, i32 0
  %271 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %270, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %272 = load i32, i32* %12, align 4
  store i32 %272, i32* %2, align 4
  br label %329

273:                                              ; preds = %234
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @irq_set_irq_wake(i32 %274, i32 1)
  store i32 %275, i32* %12, align 4
  %276 = load i32, i32* %12, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %280 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %279, i32 0, i32 0
  %281 = call i32 @dev_warn(%struct.TYPE_13__* %280, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %282

282:                                              ; preds = %278, %273
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %283, i32 0, i32 0
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* @qcom_rpm_err_interrupt, align 4
  %287 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %288 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %289 = call i32 @devm_request_irq(%struct.TYPE_13__* %284, i32 %285, i32 %286, i32 %287, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), %struct.qcom_rpm* %288)
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %282
  %293 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %294 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %293, i32 0, i32 0
  %295 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %296 = load i32, i32* %12, align 4
  store i32 %296, i32* %2, align 4
  br label %329

297:                                              ; preds = %282
  %298 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %299 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %298, i32 0, i32 0
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* @qcom_rpm_wakeup_interrupt, align 4
  %302 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %303 = load %struct.qcom_rpm*, %struct.qcom_rpm** %7, align 8
  %304 = call i32 @devm_request_irq(%struct.TYPE_13__* %299, i32 %300, i32 %301, i32 %302, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), %struct.qcom_rpm* %303)
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* %12, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %297
  %308 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %309 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %308, i32 0, i32 0
  %310 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %309, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %311 = load i32, i32* %12, align 4
  store i32 %311, i32* %2, align 4
  br label %329

312:                                              ; preds = %297
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @irq_set_irq_wake(i32 %313, i32 1)
  store i32 %314, i32* %12, align 4
  %315 = load i32, i32* %12, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %312
  %318 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %319 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %318, i32 0, i32 0
  %320 = call i32 @dev_warn(%struct.TYPE_13__* %319, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  br label %321

321:                                              ; preds = %317, %312
  %322 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %323 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %326, i32 0, i32 0
  %328 = call i32 @of_platform_populate(i32 %325, i32* null, i32* null, %struct.TYPE_13__* %327)
  store i32 %328, i32* %2, align 4
  br label %329

329:                                              ; preds = %321, %307, %292, %268, %217, %186, %170, %155, %137, %112, %89, %80, %73, %66, %52, %19
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local %struct.qcom_rpm* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32_index(i32, i8*, i32, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_13__*, %struct.qcom_rpm*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @RPM_STATUS_REG(%struct.qcom_rpm*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @RPM_CTRL_REG(%struct.qcom_rpm*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i64, i64, i64) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i8*, %struct.qcom_rpm*) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
