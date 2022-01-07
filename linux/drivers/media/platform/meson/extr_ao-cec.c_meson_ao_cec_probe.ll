; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.meson_ao_cec_device = type { %struct.device*, i32, %struct.device*, %struct.device*, %struct.platform_device*, i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_ao_cec_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"meson_ao_cec\00", align 1
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_CONNECTOR_INFO = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@meson_ao_cec_irq = common dso_local global i32 0, align 4
@meson_ao_cec_irq_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"core clock request failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"core clock enable failed\0A\00", align 1
@CEC_CLK_RATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"core clock set rate failed\0A\00", align 1
@CEC_GEN_CNTL_RESET = common dso_local global i32 0, align 4
@CEC_GEN_CNTL_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"CEC controller registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_ao_cec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.meson_ao_cec_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.device* @cec_notifier_parse_hdmi_phandle(i32* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i64 @IS_ERR(%struct.device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.device* %16)
  store i32 %17, i32* %2, align 4
  br label %194

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.meson_ao_cec_device* @devm_kzalloc(i32* %20, i32 48, i32 %21)
  store %struct.meson_ao_cec_device* %22, %struct.meson_ao_cec_device** %4, align 8
  %23 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %24 = icmp ne %struct.meson_ao_cec_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %194

28:                                               ; preds = %18
  %29 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %30 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %29, i32 0, i32 5
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %33 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %34 = load i32, i32* @CEC_CAP_CONNECTOR_INFO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.device* @cec_allocate_adapter(i32* @meson_ao_cec_ops, %struct.meson_ao_cec_device* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35, i32 1)
  %37 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %38 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %37, i32 0, i32 0
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %40 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %39, i32 0, i32 0
  %41 = load %struct.device*, %struct.device** %40, align 8
  %42 = call i64 @IS_ERR(%struct.device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %46 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %45, i32 0, i32 0
  %47 = load %struct.device*, %struct.device** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.device* %47)
  store i32 %48, i32* %2, align 4
  br label %194

49:                                               ; preds = %28
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %52 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %51, i32 0, i32 0
  %53 = load %struct.device*, %struct.device** %52, align 8
  %54 = call i32 @cec_notifier_cec_adap_register(%struct.device* %50, i32* null, %struct.device* %53)
  %55 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %56 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %58 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %185

64:                                               ; preds = %49
  %65 = load i32, i32* @THIS_MODULE, align 4
  %66 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %67 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %66, i32 0, i32 0
  %68 = load %struct.device*, %struct.device** %67, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load i32, i32* @IORESOURCE_MEM, align 4
  %72 = call %struct.resource* @platform_get_resource(%struct.platform_device* %70, i32 %71, i32 0)
  store %struct.resource* %72, %struct.resource** %6, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.resource*, %struct.resource** %6, align 8
  %76 = call %struct.device* @devm_ioremap_resource(i32* %74, %struct.resource* %75)
  %77 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %78 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %77, i32 0, i32 3
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %80 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %79, i32 0, i32 3
  %81 = load %struct.device*, %struct.device** %80, align 8
  %82 = call i64 @IS_ERR(%struct.device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %64
  %85 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %86 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %85, i32 0, i32 3
  %87 = load %struct.device*, %struct.device** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.device* %87)
  store i32 %88, i32* %7, align 4
  br label %180

89:                                               ; preds = %64
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = call i32 @platform_get_irq(%struct.platform_device* %90, i32 0)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @meson_ao_cec_irq, align 4
  %96 = load i32, i32* @meson_ao_cec_irq_thread, align 4
  %97 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %98 = call i32 @devm_request_threaded_irq(i32* %93, i32 %94, i32 %95, i32 %96, i32 0, i32* null, %struct.meson_ao_cec_device* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %180

105:                                              ; preds = %89
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call %struct.device* @devm_clk_get(i32* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %110 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %109, i32 0, i32 2
  store %struct.device* %108, %struct.device** %110, align 8
  %111 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %112 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %111, i32 0, i32 2
  %113 = load %struct.device*, %struct.device** %112, align 8
  %114 = call i64 @IS_ERR(%struct.device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %121 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %120, i32 0, i32 2
  %122 = load %struct.device*, %struct.device** %121, align 8
  %123 = call i32 @PTR_ERR(%struct.device* %122)
  store i32 %123, i32* %7, align 4
  br label %180

124:                                              ; preds = %105
  %125 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %126 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %125, i32 0, i32 2
  %127 = load %struct.device*, %struct.device** %126, align 8
  %128 = call i32 @clk_prepare_enable(%struct.device* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %180

135:                                              ; preds = %124
  %136 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %137 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %136, i32 0, i32 2
  %138 = load %struct.device*, %struct.device** %137, align 8
  %139 = load i32, i32* @CEC_CLK_RATE, align 4
  %140 = call i32 @clk_set_rate(%struct.device* %138, i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @dev_err(i32* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %175

147:                                              ; preds = %135
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 @device_reset_optional(i32* %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %153 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %152, i32 0, i32 4
  store %struct.platform_device* %151, %struct.platform_device** %153, align 8
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %156 = call i32 @platform_set_drvdata(%struct.platform_device* %154, %struct.meson_ao_cec_device* %155)
  %157 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %158 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %157, i32 0, i32 0
  %159 = load %struct.device*, %struct.device** %158, align 8
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 @cec_register_adapter(%struct.device* %159, i32* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %147
  br label %175

166:                                              ; preds = %147
  %167 = load i32, i32* @CEC_GEN_CNTL_RESET, align 4
  %168 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %169 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %168, i32 0, i32 3
  %170 = load %struct.device*, %struct.device** %169, align 8
  %171 = load i32, i32* @CEC_GEN_CNTL_REG, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.device, %struct.device* %170, i64 %172
  %174 = call i32 @writel_relaxed(i32 %167, %struct.device* %173)
  store i32 0, i32* %2, align 4
  br label %194

175:                                              ; preds = %165, %143
  %176 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %177 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %176, i32 0, i32 2
  %178 = load %struct.device*, %struct.device** %177, align 8
  %179 = call i32 @clk_disable_unprepare(%struct.device* %178)
  br label %180

180:                                              ; preds = %175, %131, %116, %101, %84
  %181 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %182 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @cec_notifier_cec_adap_unregister(i32 %183)
  br label %185

185:                                              ; preds = %180, %61
  %186 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %187 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %186, i32 0, i32 0
  %188 = load %struct.device*, %struct.device** %187, align 8
  %189 = call i32 @cec_delete_adapter(%struct.device* %188)
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call i32 @dev_err(i32* %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %185, %166, %44, %25, %15
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.device* @cec_notifier_parse_hdmi_phandle(i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.meson_ao_cec_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.device* @cec_allocate_adapter(i32*, %struct.meson_ao_cec_device*, i8*, i32, i32) #1

declare dso_local i32 @cec_notifier_cec_adap_register(%struct.device*, i32*, %struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.device* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32, i32, i32, i32*, %struct.meson_ao_cec_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.device* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.device*) #1

declare dso_local i32 @clk_set_rate(%struct.device*, i32) #1

declare dso_local i32 @device_reset_optional(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_ao_cec_device*) #1

declare dso_local i32 @cec_register_adapter(%struct.device*, i32*) #1

declare dso_local i32 @writel_relaxed(i32, %struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.device*) #1

declare dso_local i32 @cec_notifier_cec_adap_unregister(i32) #1

declare dso_local i32 @cec_delete_adapter(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
