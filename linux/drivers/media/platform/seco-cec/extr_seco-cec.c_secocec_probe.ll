; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.secocec_data = type { %struct.device*, i32, i32, %struct.device*, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRA_SMB_BASE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"CEC00001\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Request memory region failed\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot find any ACPI companion\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Cannot assign gpio to IRQ\00", align 1
@SECOCEC_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Cannot check fw version\00", align 1
@SECOCEC_LATEST_FW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [54 x i8] c"CEC Firmware not supported (v.%04x). Use ver > v.%04x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@secocec_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Cannot request IRQ %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@secocec_cec_adap_ops = common dso_local global i32 0, align 4
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_CONNECTOR_INFO = common dso_local global i32 0, align 4
@SECOCEC_MAX_ADDRS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Device registered\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s device probe failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @secocec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secocec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.secocec_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  store i8* null, i8** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.device* @secocec_cec_find_hdmi_dev(%struct.device* %13, i8** %7)
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call i64 @IS_ERR(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.device* %19)
  store i32 %20, i32* %2, align 4
  br label %185

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.secocec_data* @devm_kzalloc(%struct.device* %22, i32 32, i32 %23)
  store %struct.secocec_data* %24, %struct.secocec_data** %4, align 8
  %25 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %26 = icmp ne %struct.secocec_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %185

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %33 = call i32 @dev_set_drvdata(%struct.device* %31, %struct.secocec_data* %32)
  %34 = load i32, i32* @BRA_SMB_BASE_ADDR, align 4
  %35 = call i32 @request_muxed_region(i32 %34, i32 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %185

42:                                               ; preds = %30
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %45 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %44, i32 0, i32 4
  store %struct.platform_device* %43, %struct.platform_device** %45, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %48 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %47, i32 0, i32 3
  store %struct.device* %46, %struct.device** %48, align 8
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @has_acpi_companion(%struct.device* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %179

57:                                               ; preds = %42
  %58 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %59 = call i32 @secocec_acpi_probe(%struct.secocec_data* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %179

67:                                               ; preds = %57
  %68 = load i32, i32* @SECOCEC_VERSION, align 4
  %69 = call i32 @smb_rd16(i32 %68, i64* %9)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %179

75:                                               ; preds = %67
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @SECOCEC_LATEST_FW, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @SECOCEC_LATEST_FW, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i64 %81, i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %179

86:                                               ; preds = %75
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %89 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @secocec_irq_handler, align 4
  %92 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %93 = load i32, i32* @IRQF_ONESHOT, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_name(%struct.device* %96)
  %98 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %99 = call i32 @devm_request_threaded_irq(%struct.device* %87, i32 %90, i32* null, i32 %91, i32 %94, i32 %97, %struct.secocec_data* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %86
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %105 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  br label %179

110:                                              ; preds = %86
  %111 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 @dev_name(%struct.device* %112)
  %114 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %115 = load i32, i32* @CEC_CAP_CONNECTOR_INFO, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SECOCEC_MAX_ADDRS, align 4
  %118 = call %struct.device* @cec_allocate_adapter(i32* @secocec_cec_adap_ops, %struct.secocec_data* %111, i32 %113, i32 %116, i32 %117)
  %119 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %120 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %119, i32 0, i32 0
  store %struct.device* %118, %struct.device** %120, align 8
  %121 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %122 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %121, i32 0, i32 0
  %123 = load %struct.device*, %struct.device** %122, align 8
  %124 = call i64 @IS_ERR(%struct.device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %110
  %127 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %128 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %127, i32 0, i32 0
  %129 = load %struct.device*, %struct.device** %128, align 8
  %130 = call i32 @PTR_ERR(%struct.device* %129)
  store i32 %130, i32* %8, align 4
  br label %179

131:                                              ; preds = %110
  %132 = load %struct.device*, %struct.device** %6, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %135 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %134, i32 0, i32 0
  %136 = load %struct.device*, %struct.device** %135, align 8
  %137 = call i32 @cec_notifier_cec_adap_register(%struct.device* %132, i8* %133, %struct.device* %136)
  %138 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %139 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %141 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %131
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %8, align 4
  br label %174

147:                                              ; preds = %131
  %148 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %149 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %148, i32 0, i32 0
  %150 = load %struct.device*, %struct.device** %149, align 8
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = call i32 @cec_register_adapter(%struct.device* %150, %struct.device* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %169

156:                                              ; preds = %147
  %157 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %158 = call i32 @secocec_ir_probe(%struct.secocec_data* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %169

162:                                              ; preds = %156
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %165 = call i32 @platform_set_drvdata(%struct.platform_device* %163, %struct.secocec_data* %164)
  %166 = load %struct.device*, %struct.device** %5, align 8
  %167 = call i32 @dev_dbg(%struct.device* %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %2, align 4
  br label %185

169:                                              ; preds = %161, %155
  %170 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %171 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @cec_notifier_cec_adap_unregister(i32 %172)
  br label %174

174:                                              ; preds = %169, %144
  %175 = load %struct.secocec_data*, %struct.secocec_data** %4, align 8
  %176 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %175, i32 0, i32 0
  %177 = load %struct.device*, %struct.device** %176, align 8
  %178 = call i32 @cec_delete_adapter(%struct.device* %177)
  br label %179

179:                                              ; preds = %174, %126, %102, %79, %72, %62, %52
  %180 = load %struct.device*, %struct.device** %5, align 8
  %181 = load %struct.device*, %struct.device** %5, align 8
  %182 = call i32 @dev_name(%struct.device* %181)
  %183 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %179, %162, %37, %27, %18
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.device* @secocec_cec_find_hdmi_dev(%struct.device*, i8**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.secocec_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.secocec_data*) #1

declare dso_local i32 @request_muxed_region(i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @has_acpi_companion(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @secocec_acpi_probe(%struct.secocec_data*) #1

declare dso_local i32 @smb_rd16(i32, i64*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.secocec_data*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.device* @cec_allocate_adapter(i32*, %struct.secocec_data*, i32, i32, i32) #1

declare dso_local i32 @cec_notifier_cec_adap_register(%struct.device*, i8*, %struct.device*) #1

declare dso_local i32 @cec_register_adapter(%struct.device*, %struct.device*) #1

declare dso_local i32 @secocec_ir_probe(%struct.secocec_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.secocec_data*) #1

declare dso_local i32 @cec_notifier_cec_adap_unregister(i32) #1

declare dso_local i32 @cec_delete_adapter(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
