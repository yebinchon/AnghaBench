; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_s5p_cec.c_s5p_cec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_s5p_cec.c_s5p_cec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.s5p_cec_dev = type { i64, i32, i32, %struct.device*, %struct.device*, %struct.device*, %struct.device* }

@.str = private unnamed_addr constant [10 x i8] c"needs-hpd\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s5p_cec_irq_handler = common dso_local global i32 0, align 4
@s5p_cec_irq_handler_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"hdmicec\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@s5p_cec_adap_ops = common dso_local global i32 0, align 4
@CEC_NAME = common dso_local global i32 0, align 4
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_NEEDS_HPD = common dso_local global i32 0, align 4
@CEC_CAP_CONNECTOR_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"successfully probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s5p_cec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_cec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.s5p_cec_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @of_property_read_bool(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.device* @cec_notifier_parse_hdmi_phandle(%struct.device* %17)
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i64 @IS_ERR(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @PTR_ERR(%struct.device* %23)
  store i32 %24, i32* %2, align 4
  br label %187

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.s5p_cec_dev* @devm_kzalloc(%struct.device* %27, i32 48, i32 %28)
  store %struct.s5p_cec_dev* %29, %struct.s5p_cec_dev** %7, align 8
  %30 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %31 = icmp ne %struct.s5p_cec_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %187

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %38 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %37, i32 0, i32 6
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i64 @platform_get_irq(%struct.platform_device* %39, i32 0)
  %41 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %42 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %44 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %49 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %187

52:                                               ; preds = %35
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %55 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @s5p_cec_irq_handler, align 4
  %59 = load i32, i32* @s5p_cec_irq_handler_thread, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %64 = call i32 @devm_request_threaded_irq(%struct.device* %53, i32 %57, i32 %58, i32 %59, i32 0, i32 %62, %struct.s5p_cec_dev* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %187

69:                                               ; preds = %52
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call %struct.device* @devm_clk_get(%struct.device* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %73 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %72, i32 0, i32 5
  store %struct.device* %71, %struct.device** %73, align 8
  %74 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %75 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %74, i32 0, i32 5
  %76 = load %struct.device*, %struct.device** %75, align 8
  %77 = call i64 @IS_ERR(%struct.device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %81 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %80, i32 0, i32 5
  %82 = load %struct.device*, %struct.device** %81, align 8
  %83 = call i32 @PTR_ERR(%struct.device* %82)
  store i32 %83, i32* %2, align 4
  br label %187

84:                                               ; preds = %69
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.device* @syscon_regmap_lookup_by_phandle(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %90 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %89, i32 0, i32 4
  store %struct.device* %88, %struct.device** %90, align 8
  %91 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %92 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %91, i32 0, i32 4
  %93 = load %struct.device*, %struct.device** %92, align 8
  %94 = call i64 @IS_ERR(%struct.device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load i32, i32* @EPROBE_DEFER, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %187

99:                                               ; preds = %84
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load i32, i32* @IORESOURCE_MEM, align 4
  %102 = call %struct.resource* @platform_get_resource(%struct.platform_device* %100, i32 %101, i32 0)
  store %struct.resource* %102, %struct.resource** %6, align 8
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load %struct.resource*, %struct.resource** %6, align 8
  %105 = call %struct.device* @devm_ioremap_resource(%struct.device* %103, %struct.resource* %104)
  %106 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %107 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %106, i32 0, i32 3
  store %struct.device* %105, %struct.device** %107, align 8
  %108 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %109 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %108, i32 0, i32 3
  %110 = load %struct.device*, %struct.device** %109, align 8
  %111 = call i64 @IS_ERR(%struct.device* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %99
  %114 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %115 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %114, i32 0, i32 3
  %116 = load %struct.device*, %struct.device** %115, align 8
  %117 = call i32 @PTR_ERR(%struct.device* %116)
  store i32 %117, i32* %2, align 4
  br label %187

118:                                              ; preds = %99
  %119 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %120 = load i32, i32* @CEC_NAME, align 4
  %121 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @CEC_CAP_NEEDS_HPD, align 4
  br label %127

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  %129 = or i32 %121, %128
  %130 = load i32, i32* @CEC_CAP_CONNECTOR_INFO, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @cec_allocate_adapter(i32* @s5p_cec_adap_ops, %struct.s5p_cec_dev* %119, i32 %120, i32 %131, i32 1)
  %133 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %134 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %136 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @PTR_ERR_OR_ZERO(i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %2, align 4
  br label %187

143:                                              ; preds = %127
  %144 = load %struct.device*, %struct.device** %5, align 8
  %145 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %146 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @cec_notifier_cec_adap_register(%struct.device* %144, i32* null, i32 %147)
  %149 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %150 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %152 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %143
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %9, align 4
  br label %181

158:                                              ; preds = %143
  %159 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %160 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 @cec_register_adapter(i32 %161, %struct.device* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %176

168:                                              ; preds = %158
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %171 = call i32 @platform_set_drvdata(%struct.platform_device* %169, %struct.s5p_cec_dev* %170)
  %172 = load %struct.device*, %struct.device** %4, align 8
  %173 = call i32 @pm_runtime_enable(%struct.device* %172)
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = call i32 @dev_dbg(%struct.device* %174, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %187

176:                                              ; preds = %167
  %177 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %178 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @cec_notifier_cec_adap_unregister(i32 %179)
  br label %181

181:                                              ; preds = %176, %155
  %182 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %7, align 8
  %183 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @cec_delete_adapter(i32 %184)
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %181, %168, %141, %113, %96, %79, %67, %47, %32, %22
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.device* @cec_notifier_parse_hdmi_phandle(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.s5p_cec_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.s5p_cec_dev*) #1

declare dso_local %struct.device* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.device* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.device* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @cec_allocate_adapter(i32*, %struct.s5p_cec_dev*, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @cec_notifier_cec_adap_register(%struct.device*, i32*, i32) #1

declare dso_local i32 @cec_register_adapter(i32, %struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s5p_cec_dev*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @cec_notifier_cec_adap_unregister(i32) #1

declare dso_local i32 @cec_delete_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
