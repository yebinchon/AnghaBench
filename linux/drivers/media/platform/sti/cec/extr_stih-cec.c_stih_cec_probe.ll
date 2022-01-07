; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_cec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/cec/extr_stih-cec.c_stih_cec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.stih_cec = type { i64, i32, i32, %struct.device*, %struct.device*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@stih_cec_irq_handler = common dso_local global i32 0, align 4
@stih_cec_irq_handler_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cec-clk\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot get cec clock\0A\00", align 1
@sti_cec_adap_ops = common dso_local global i32 0, align 4
@CEC_NAME = common dso_local global i32 0, align 4
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_CONNECTOR_INFO = common dso_local global i32 0, align 4
@CEC_MAX_LOG_ADDRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stih_cec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stih_cec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.stih_cec*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.device* @cec_notifier_parse_hdmi_phandle(%struct.device* %11)
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call i64 @IS_ERR(%struct.device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call i32 @PTR_ERR(%struct.device* %17)
  store i32 %18, i32* %2, align 4
  br label %156

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.stih_cec* @devm_kzalloc(%struct.device* %20, i32 40, i32 %21)
  store %struct.stih_cec* %22, %struct.stih_cec** %6, align 8
  %23 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %24 = icmp ne %struct.stih_cec* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %156

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %31 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %30, i32 0, i32 5
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %32, i32 %33, i32 0)
  store %struct.resource* %34, %struct.resource** %5, align 8
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = call %struct.device* @devm_ioremap_resource(%struct.device* %35, %struct.resource* %36)
  %38 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %39 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %38, i32 0, i32 4
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %41 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %40, i32 0, i32 4
  %42 = load %struct.device*, %struct.device** %41, align 8
  %43 = call i64 @IS_ERR(%struct.device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %47 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %46, i32 0, i32 4
  %48 = load %struct.device*, %struct.device** %47, align 8
  %49 = call i32 @PTR_ERR(%struct.device* %48)
  store i32 %49, i32* %2, align 4
  br label %156

50:                                               ; preds = %28
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = call i64 @platform_get_irq(%struct.platform_device* %51, i32 0)
  %53 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %54 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %56 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %61 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %2, align 4
  br label %156

64:                                               ; preds = %50
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %67 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @stih_cec_irq_handler, align 4
  %71 = load i32, i32* @stih_cec_irq_handler_thread, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %76 = call i32 @devm_request_threaded_irq(%struct.device* %65, i32 %69, i32 %70, i32 %71, i32 0, i32 %74, %struct.stih_cec* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %156

81:                                               ; preds = %64
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call %struct.device* @devm_clk_get(%struct.device* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %85 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %84, i32 0, i32 3
  store %struct.device* %83, %struct.device** %85, align 8
  %86 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %87 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %86, i32 0, i32 3
  %88 = load %struct.device*, %struct.device** %87, align 8
  %89 = call i64 @IS_ERR(%struct.device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %95 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %94, i32 0, i32 3
  %96 = load %struct.device*, %struct.device** %95, align 8
  %97 = call i32 @PTR_ERR(%struct.device* %96)
  store i32 %97, i32* %2, align 4
  br label %156

98:                                               ; preds = %81
  %99 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %100 = load i32, i32* @CEC_NAME, align 4
  %101 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %102 = load i32, i32* @CEC_CAP_CONNECTOR_INFO, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  %105 = call i32 @cec_allocate_adapter(i32* @sti_cec_adap_ops, %struct.stih_cec* %99, i32 %100, i32 %103, i32 %104)
  %106 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %107 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %109 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PTR_ERR_OR_ZERO(i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %98
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %156

116:                                              ; preds = %98
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %119 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @cec_notifier_cec_adap_register(%struct.device* %117, i32* null, i32 %120)
  %122 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %123 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %125 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %116
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  br label %150

131:                                              ; preds = %116
  %132 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %133 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @cec_register_adapter(i32 %134, %struct.device* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %145

141:                                              ; preds = %131
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %144 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.stih_cec* %143)
  store i32 0, i32* %2, align 4
  br label %156

145:                                              ; preds = %140
  %146 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %147 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @cec_notifier_cec_adap_unregister(i32 %148)
  br label %150

150:                                              ; preds = %145, %128
  %151 = load %struct.stih_cec*, %struct.stih_cec** %6, align 8
  %152 = getelementptr inbounds %struct.stih_cec, %struct.stih_cec* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @cec_delete_adapter(i32 %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %150, %141, %114, %91, %79, %59, %45, %25, %16
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.device* @cec_notifier_parse_hdmi_phandle(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.stih_cec* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.device* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.stih_cec*) #1

declare dso_local %struct.device* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cec_allocate_adapter(i32*, %struct.stih_cec*, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @cec_notifier_cec_adap_register(%struct.device*, i32*, i32) #1

declare dso_local i32 @cec_register_adapter(i32, %struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stih_cec*) #1

declare dso_local i32 @cec_notifier_cec_adap_unregister(i32) #1

declare dso_local i32 @cec_delete_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
