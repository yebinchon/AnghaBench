; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cec-gpio/extr_cec-gpio.c_cec_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cec-gpio/extr_cec-gpio.c_cec_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.cec_gpio = type { %struct.TYPE_9__*, i8*, %struct.TYPE_9__*, i8*, %struct.TYPE_9__*, i8*, %struct.TYPE_9__*, %struct.device* }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@GPIOD_OUT_HIGH_OPEN_DRAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"v5\00", align 1
@cec_gpio_pin_ops = common dso_local global i32 0, align 4
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_PHYS_ADDR = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_ALL = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_PIN = common dso_local global i32 0, align 4
@cec_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@cec_hpd_gpio_irq_handler = common dso_local global i32 0, align 4
@cec_hpd_gpio_irq_handler_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"hpd-gpio\00", align 1
@cec_5v_gpio_irq_handler = common dso_local global i32 0, align 4
@cec_5v_gpio_irq_handler_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"v5-gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cec_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cec_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cec_gpio* @devm_kzalloc(%struct.device* %9, i32 64, i32 %10)
  store %struct.cec_gpio* %11, %struct.cec_gpio** %5, align 8
  %12 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %13 = icmp ne %struct.cec_gpio* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %204

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %20 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %19, i32 0, i32 7
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GPIOD_OUT_HIGH_OPEN_DRAIN, align 4
  %23 = call %struct.TYPE_9__* @devm_gpiod_get(%struct.device* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %25 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %24, i32 0, i32 6
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %27 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %26, i32 0, i32 6
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_9__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %33 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %32, i32 0, i32 6
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.TYPE_9__* %34)
  store i32 %35, i32* %2, align 4
  br label %204

36:                                               ; preds = %17
  %37 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %38 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %37, i32 0, i32 6
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = call i8* @gpiod_to_irq(%struct.TYPE_9__* %39)
  %41 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %42 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* @GPIOD_IN, align 4
  %45 = call i8* @devm_gpiod_get_optional(%struct.device* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_9__*
  %47 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %48 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %47, i32 0, i32 4
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  %49 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %50 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %49, i32 0, i32 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i64 @IS_ERR(%struct.TYPE_9__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %36
  %55 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %56 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %55, i32 0, i32 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @PTR_ERR(%struct.TYPE_9__* %57)
  store i32 %58, i32* %2, align 4
  br label %204

59:                                               ; preds = %36
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* @GPIOD_IN, align 4
  %62 = call i8* @devm_gpiod_get_optional(%struct.device* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_9__*
  %64 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %65 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %64, i32 0, i32 2
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %65, align 8
  %66 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %67 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i64 @IS_ERR(%struct.TYPE_9__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %73 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.TYPE_9__* %74)
  store i32 %75, i32* %2, align 4
  br label %204

76:                                               ; preds = %59
  %77 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %82 = load i32, i32* @CEC_CAP_PHYS_ADDR, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @CEC_CAP_MONITOR_ALL, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @CEC_CAP_MONITOR_PIN, align 4
  %87 = or i32 %85, %86
  %88 = call %struct.TYPE_9__* @cec_pin_allocate_adapter(i32* @cec_gpio_pin_ops, %struct.cec_gpio* %77, i32 %80, i32 %87)
  %89 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %90 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %89, i32 0, i32 0
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %90, align 8
  %91 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %92 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = call i64 @IS_ERR(%struct.TYPE_9__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %76
  %97 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %98 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = call i32 @PTR_ERR(%struct.TYPE_9__* %99)
  store i32 %100, i32* %2, align 4
  br label %204

101:                                              ; preds = %76
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %104 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @cec_gpio_irq_handler, align 4
  %107 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %108 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %111 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %116 = call i32 @devm_request_irq(%struct.device* %102, i8* %105, i32 %106, i32 %109, i32 %114, %struct.cec_gpio* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %101
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %204

121:                                              ; preds = %101
  %122 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %123 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = call i32 @cec_gpio_disable_irq(%struct.TYPE_9__* %124)
  %126 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %127 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %126, i32 0, i32 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = icmp ne %struct.TYPE_9__* %128, null
  br i1 %129, label %130, label %155

130:                                              ; preds = %121
  %131 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %132 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %131, i32 0, i32 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = call i8* @gpiod_to_irq(%struct.TYPE_9__* %133)
  %135 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %136 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %139 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* @cec_hpd_gpio_irq_handler, align 4
  %142 = load i32, i32* @cec_hpd_gpio_irq_handler_thread, align 4
  %143 = load i32, i32* @IRQF_ONESHOT, align 4
  %144 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %149 = call i32 @devm_request_threaded_irq(%struct.device* %137, i8* %140, i32 %141, i32 %142, i32 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.cec_gpio* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %130
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %204

154:                                              ; preds = %130
  br label %155

155:                                              ; preds = %154, %121
  %156 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %157 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %156, i32 0, i32 2
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = icmp ne %struct.TYPE_9__* %158, null
  br i1 %159, label %160, label %185

160:                                              ; preds = %155
  %161 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %162 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %161, i32 0, i32 2
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = call i8* @gpiod_to_irq(%struct.TYPE_9__* %163)
  %165 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %166 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %169 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* @cec_5v_gpio_irq_handler, align 4
  %172 = load i32, i32* @cec_5v_gpio_irq_handler_thread, align 4
  %173 = load i32, i32* @IRQF_ONESHOT, align 4
  %174 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %179 = call i32 @devm_request_threaded_irq(%struct.device* %167, i8* %170, i32 %171, i32 %172, i32 %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.cec_gpio* %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %160
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %204

184:                                              ; preds = %160
  br label %185

185:                                              ; preds = %184, %155
  %186 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %187 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %186, i32 0, i32 0
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 @cec_register_adapter(%struct.TYPE_9__* %188, %struct.device* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %185
  %195 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %196 = getelementptr inbounds %struct.cec_gpio, %struct.cec_gpio* %195, i32 0, i32 0
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = call i32 @cec_delete_adapter(%struct.TYPE_9__* %197)
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %2, align 4
  br label %204

200:                                              ; preds = %185
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = load %struct.cec_gpio*, %struct.cec_gpio** %5, align 8
  %203 = call i32 @platform_set_drvdata(%struct.platform_device* %201, %struct.cec_gpio* %202)
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %194, %182, %152, %119, %96, %71, %54, %31, %14
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.cec_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i8* @gpiod_to_irq(%struct.TYPE_9__*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @cec_pin_allocate_adapter(i32*, %struct.cec_gpio*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i8*, i32, i32, i32, %struct.cec_gpio*) #1

declare dso_local i32 @cec_gpio_disable_irq(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i8*, i32, i32, i32, i8*, %struct.cec_gpio*) #1

declare dso_local i32 @cec_register_adapter(%struct.TYPE_9__*, %struct.device*) #1

declare dso_local i32 @cec_delete_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cec_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
