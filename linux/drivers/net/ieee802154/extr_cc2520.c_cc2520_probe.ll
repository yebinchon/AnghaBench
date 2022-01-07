; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.cc2520_private = type { i32, i32, i32, i32, i32, i8*, %struct.spi_device* }
%struct.cc2520_platform_data = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPI_COMMAND_BUFFER = common dso_local global i32 0, align 4
@cc2520_fifop_irqwork = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"fifo gpio is not valid\0A\00", align 1
@GPIOF_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cca gpio is not valid\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cca\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"fifop gpio is not valid\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fifop\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"sfd gpio is not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sfd\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"reset gpio is not valid\0A\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"vreg gpio is not valid\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"vreg\00", align 1
@HIGH = common dso_local global i32 0, align 4
@cc2520_fifop_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"could not get fifop irq\0A\00", align 1
@cc2520_sfd_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"could not get sfd irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @cc2520_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.cc2520_private*, align 8
  %5 = alloca %struct.cc2520_platform_data, align 4
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  %11 = bitcast i8* %10 to %struct.cc2520_private*
  store %struct.cc2520_private* %11, %struct.cc2520_private** %4, align 8
  %12 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %13 = icmp ne %struct.cc2520_private* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %259

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %20 = call i32 @spi_set_drvdata(%struct.spi_device* %18, %struct.cc2520_private* %19)
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = call i32 @cc2520_get_platform_data(%struct.spi_device* %21, %struct.cc2520_platform_data* %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %259

31:                                               ; preds = %17
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %34 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %33, i32 0, i32 6
  store %struct.spi_device* %32, %struct.spi_device** %34, align 8
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = load i32, i32* @SPI_COMMAND_BUFFER, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(i32* %36, i32 %37, i32 %38)
  %40 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %41 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %43 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %259

49:                                               ; preds = %31
  %50 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %51 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %50, i32 0, i32 2
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %54 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %53, i32 0, i32 1
  %55 = load i32, i32* @cc2520_fifop_irqwork, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  %57 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %58 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %57, i32 0, i32 4
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %61 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %60, i32 0, i32 3
  %62 = call i32 @init_completion(i32* %61)
  %63 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %64 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gpio_is_valid(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %49
  %70 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %71 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %251

75:                                               ; preds = %49
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @GPIOF_IN, align 4
  %81 = call i32 @devm_gpio_request_one(i32* %77, i32 %79, i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %251

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @gpio_is_valid(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %251

96:                                               ; preds = %85
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @GPIOF_IN, align 4
  %102 = call i32 @devm_gpio_request_one(i32* %98, i32 %100, i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %251

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @gpio_is_valid(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %113 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %251

117:                                              ; preds = %106
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @GPIOF_IN, align 4
  %123 = call i32 @devm_gpio_request_one(i32* %119, i32 %121, i32 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %251

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @gpio_is_valid(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %134 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %133, i32 0, i32 0
  %135 = call i32 @dev_err(i32* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %251

138:                                              ; preds = %127
  %139 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %140 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @GPIOF_IN, align 4
  %144 = call i32 @devm_gpio_request_one(i32* %140, i32 %142, i32 %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %251

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @gpio_is_valid(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %148
  %154 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %155 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %154, i32 0, i32 0
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %6, align 4
  br label %251

159:                                              ; preds = %148
  %160 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %161 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %165 = call i32 @devm_gpio_request_one(i32* %161, i32 %163, i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %251

169:                                              ; preds = %159
  %170 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @gpio_is_valid(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %169
  %175 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %176 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %175, i32 0, i32 0
  %177 = call i32 @dev_err(i32* %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %6, align 4
  br label %251

180:                                              ; preds = %169
  %181 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %182 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %186 = call i32 @devm_gpio_request_one(i32* %182, i32 %184, i32 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  br label %251

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @HIGH, align 4
  %194 = call i32 @gpio_set_value(i32 %192, i32 %193)
  %195 = call i32 @usleep_range(i32 100, i32 150)
  %196 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @HIGH, align 4
  %199 = call i32 @gpio_set_value(i32 %197, i32 %198)
  %200 = call i32 @usleep_range(i32 200, i32 250)
  %201 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %202 = call i32 @cc2520_hw_init(%struct.cc2520_private* %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %190
  br label %251

206:                                              ; preds = %190
  %207 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %208 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @gpio_to_irq(i32 %210)
  %212 = load i32, i32* @cc2520_fifop_isr, align 4
  %213 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %214 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %215 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %214, i32 0, i32 0
  %216 = call i32 @dev_name(i32* %215)
  %217 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %218 = call i32 @devm_request_irq(i32* %208, i32 %211, i32 %212, i32 %213, i32 %216, %struct.cc2520_private* %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %206
  %222 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %223 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %222, i32 0, i32 0
  %224 = call i32 @dev_err(i32* %223, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %251

225:                                              ; preds = %206
  %226 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %227 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.cc2520_platform_data, %struct.cc2520_platform_data* %5, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @gpio_to_irq(i32 %229)
  %231 = load i32, i32* @cc2520_sfd_isr, align 4
  %232 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %233 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %234 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %233, i32 0, i32 0
  %235 = call i32 @dev_name(i32* %234)
  %236 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %237 = call i32 @devm_request_irq(i32* %227, i32 %230, i32 %231, i32 %232, i32 %235, %struct.cc2520_private* %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %225
  %241 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %242 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %241, i32 0, i32 0
  %243 = call i32 @dev_err(i32* %242, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  br label %251

244:                                              ; preds = %225
  %245 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %246 = call i32 @cc2520_register(%struct.cc2520_private* %245)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %251

250:                                              ; preds = %244
  store i32 0, i32* %2, align 4
  br label %259

251:                                              ; preds = %249, %240, %221, %205, %189, %174, %168, %153, %147, %132, %126, %111, %105, %90, %84, %69
  %252 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %253 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %252, i32 0, i32 2
  %254 = call i32 @mutex_destroy(i32* %253)
  %255 = load %struct.cc2520_private*, %struct.cc2520_private** %4, align 8
  %256 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %255, i32 0, i32 1
  %257 = call i32 @flush_work(i32* %256)
  %258 = load i32, i32* %6, align 4
  store i32 %258, i32* %2, align 4
  br label %259

259:                                              ; preds = %251, %250, %46, %25, %14
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.cc2520_private*) #1

declare dso_local i32 @cc2520_get_platform_data(%struct.spi_device*, %struct.cc2520_platform_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cc2520_hw_init(%struct.cc2520_private*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.cc2520_private*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @cc2520_register(%struct.cc2520_private*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
