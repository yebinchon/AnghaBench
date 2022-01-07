; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ieee802154_hw = type { %struct.TYPE_2__*, i32*, %struct.at86rf230_local* }
%struct.TYPE_2__ = type { i32 }
%struct.at86rf230_local = type { i32, %struct.ieee802154_hw*, i32, i32, i32, i32, %struct.spi_device* }

@.str = private unnamed_addr constant [18 x i8] c"no IRQ specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to parse platform_data: %d\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"rstn\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"slp_tr\00", align 1
@at86rf230_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@at86rf230_regmap_spi_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RG_IRQ_STATUS = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@at86rf230_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @at86rf230_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca %struct.at86rf230_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %209

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = call i32 @at86rf230_get_pdata(%struct.spi_device* %23, i32* %9, i32* %10, i32* %11)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 1
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %209

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @gpio_is_valid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 1
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %42 = call i32 @devm_gpio_request_one(i32* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %209

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @gpio_is_valid(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 1
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %57 = call i32 @devm_gpio_request_one(i32* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %209

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @gpio_is_valid(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = call i32 @udelay(i32 1)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @gpio_set_value_cansleep(i32 %69, i32 0)
  %71 = call i32 @udelay(i32 1)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @gpio_set_value_cansleep(i32 %72, i32 1)
  %74 = call i32 @usleep_range(i32 120, i32 240)
  br label %75

75:                                               ; preds = %67, %63
  %76 = call %struct.ieee802154_hw* @ieee802154_alloc_hw(i32 40, i32* @at86rf230_ops)
  store %struct.ieee802154_hw* %76, %struct.ieee802154_hw** %4, align 8
  %77 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %78 = icmp ne %struct.ieee802154_hw* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %209

82:                                               ; preds = %75
  %83 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %84 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %83, i32 0, i32 2
  %85 = load %struct.at86rf230_local*, %struct.at86rf230_local** %84, align 8
  store %struct.at86rf230_local* %85, %struct.at86rf230_local** %5, align 8
  %86 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %87 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %88 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %87, i32 0, i32 1
  store %struct.ieee802154_hw* %86, %struct.ieee802154_hw** %88, align 8
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %91 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %90, i32 0, i32 6
  store %struct.spi_device* %89, %struct.spi_device** %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %94 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %96 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %95, i32 0, i32 1
  %97 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %98 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %100 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @ieee802154_random_extended_addr(i32* %102)
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = call i32 @devm_regmap_init_spi(%struct.spi_device* %104, i32* @at86rf230_regmap_spi_config)
  %106 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %107 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %109 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %82
  %114 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %115 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @PTR_ERR(i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %118, i32 0, i32 1
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  br label %203

122:                                              ; preds = %82
  %123 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %124 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %125 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %124, i32 0, i32 4
  %126 = call i32 @at86rf230_setup_spi_messages(%struct.at86rf230_local* %123, i32* %125)
  %127 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %128 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %129 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %128, i32 0, i32 3
  %130 = call i32 @at86rf230_setup_spi_messages(%struct.at86rf230_local* %127, i32* %129)
  %131 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %132 = call i32 @at86rf230_detect_device(%struct.at86rf230_local* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %203

136:                                              ; preds = %122
  %137 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %138 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %137, i32 0, i32 2
  %139 = call i32 @init_completion(i32* %138)
  %140 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %141 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %142 = call i32 @spi_set_drvdata(%struct.spi_device* %140, %struct.at86rf230_local* %141)
  %143 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @at86rf230_hw_init(%struct.at86rf230_local* %143, i32 %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %203

149:                                              ; preds = %136
  %150 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %151 = load i32, i32* @RG_IRQ_STATUS, align 4
  %152 = call i32 @at86rf230_read_subreg(%struct.at86rf230_local* %150, i32 %151, i32 255, i32 0, i32* %6)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %203

156:                                              ; preds = %149
  %157 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %158 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @irq_get_trigger_type(i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %156
  %164 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %163, %156
  %166 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %167 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %166, i32 0, i32 1
  %168 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %169 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @at86rf230_isr, align 4
  %172 = load i32, i32* @IRQF_SHARED, align 4
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %176 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %175, i32 0, i32 1
  %177 = call i32 @dev_name(i32* %176)
  %178 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %179 = call i32 @devm_request_irq(i32* %167, i32 %170, i32 %171, i32 %174, i32 %177, %struct.at86rf230_local* %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %165
  br label %203

183:                                              ; preds = %165
  %184 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %185 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @disable_irq(i32 %186)
  %188 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %189 = call i32 @at86rf230_sleep(%struct.at86rf230_local* %188)
  %190 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %191 = call i32 @at86rf230_debugfs_init(%struct.at86rf230_local* %190)
  %192 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %193 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %192, i32 0, i32 1
  %194 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %193, align 8
  %195 = call i32 @ieee802154_register_hw(%struct.ieee802154_hw* %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %183
  br label %201

199:                                              ; preds = %183
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %2, align 4
  br label %209

201:                                              ; preds = %198
  %202 = call i32 (...) @at86rf230_debugfs_remove()
  br label %203

203:                                              ; preds = %201, %182, %155, %148, %135, %113
  %204 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %205 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %204, i32 0, i32 1
  %206 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %205, align 8
  %207 = call i32 @ieee802154_free_hw(%struct.ieee802154_hw* %206)
  %208 = load i32, i32* %7, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %203, %199, %79, %60, %45, %27, %16
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @at86rf230_get_pdata(%struct.spi_device*, i32*, i32*, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local %struct.ieee802154_hw* @ieee802154_alloc_hw(i32, i32*) #1

declare dso_local i32 @ieee802154_random_extended_addr(i32*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @at86rf230_setup_spi_messages(%struct.at86rf230_local*, i32*) #1

declare dso_local i32 @at86rf230_detect_device(%struct.at86rf230_local*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.at86rf230_local*) #1

declare dso_local i32 @at86rf230_hw_init(%struct.at86rf230_local*, i32) #1

declare dso_local i32 @at86rf230_read_subreg(%struct.at86rf230_local*, i32, i32, i32, i32*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.at86rf230_local*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @at86rf230_sleep(%struct.at86rf230_local*) #1

declare dso_local i32 @at86rf230_debugfs_init(%struct.at86rf230_local*) #1

declare dso_local i32 @ieee802154_register_hw(%struct.ieee802154_hw*) #1

declare dso_local i32 @at86rf230_debugfs_remove(...) #1

declare dso_local i32 @ieee802154_free_hw(%struct.ieee802154_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
