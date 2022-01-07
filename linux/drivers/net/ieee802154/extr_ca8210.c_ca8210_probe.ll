; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ca8210_platform_data* }
%struct.ca8210_platform_data = type { i64 }
%struct.ca8210_priv = type { i32, i32, i32, %struct.spi_device*, i32, i32, i32, i64, i64, i64, i32, %struct.ieee802154_hw* }
%struct.ieee802154_hw = type { %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.ca8210_priv* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Inserting ca8210\0A\00", align 1
@ca8210_phy_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ieee802154_alloc_hw failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_IEEE802154_CA8210_DEBUGFS = common dso_local global i32 0, align 4
@ca8210_test_int_driver_write = common dso_local global i32* null, align 8
@cascoda_api_upstream = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"ca8210_get_platform_data failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ca8210_dev_com_init failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ca8210_reset_init failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"ca8210_interrupt_init failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"tdme_chipinit failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"ca8210_config_extern_clk failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"ca8210_register_ext_clock failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"ieee802154_register_hw failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ca8210_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ca8210_priv*, align 8
  %5 = alloca %struct.ieee802154_hw*, align 8
  %6 = alloca %struct.ca8210_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call i32 @dev_info(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = call %struct.ieee802154_hw* @ieee802154_alloc_hw(i32 80, i32* @ca8210_phy_ops)
  store %struct.ieee802154_hw* %11, %struct.ieee802154_hw** %5, align 8
  %12 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %13 = icmp ne %struct.ieee802154_hw* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = call i32 @dev_crit(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %192

20:                                               ; preds = %1
  %21 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %21, i32 0, i32 2
  %23 = load %struct.ca8210_priv*, %struct.ca8210_priv** %22, align 8
  store %struct.ca8210_priv* %23, %struct.ca8210_priv** %4, align 8
  %24 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %25 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %25, i32 0, i32 11
  store %struct.ieee802154_hw* %24, %struct.ieee802154_hw** %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %28, i32 0, i32 3
  store %struct.spi_device* %27, %struct.spi_device** %29, align 8
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %32, i32 0, i32 1
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  %34 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %34, i32 0, i32 10
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %43, i32 0, i32 8
  store i64 0, i64* %44, align 8
  %45 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %49, i32 0, i32 6
  %51 = call i32 @init_completion(i32* %50)
  %52 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %53 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %52, i32 0, i32 5
  %54 = call i32 @init_completion(i32* %53)
  %55 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %56 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %55, i32 0, i32 4
  %57 = call i32 @init_completion(i32* %56)
  %58 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %59 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %58, i32 0, i32 3
  %60 = load %struct.spi_device*, %struct.spi_device** %59, align 8
  %61 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %62 = call i32 @spi_set_drvdata(%struct.spi_device* %60, %struct.ca8210_priv* %61)
  %63 = load i32, i32* @CONFIG_IEEE802154_CA8210_DEBUGFS, align 4
  %64 = call i64 @IS_ENABLED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %20
  %67 = load i32*, i32** @ca8210_test_int_driver_write, align 8
  store i32* %67, i32** @cascoda_api_upstream, align 8
  %68 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %69 = call i32 @ca8210_test_interface_init(%struct.ca8210_priv* %68)
  br label %71

70:                                               ; preds = %20
  store i32* null, i32** @cascoda_api_upstream, align 8
  br label %71

71:                                               ; preds = %70, %66
  %72 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %73 = call i32 @ca8210_hw_setup(%struct.ieee802154_hw* %72)
  %74 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @ieee802154_random_extended_addr(i32* %77)
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.ca8210_platform_data* @kmalloc(i32 8, i32 %79)
  store %struct.ca8210_platform_data* %80, %struct.ca8210_platform_data** %6, align 8
  %81 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %6, align 8
  %82 = icmp ne %struct.ca8210_platform_data* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %192

86:                                               ; preds = %71
  %87 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %6, align 8
  %88 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %89 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %88, i32 0, i32 3
  %90 = load %struct.spi_device*, %struct.spi_device** %89, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store %struct.ca8210_platform_data* %87, %struct.ca8210_platform_data** %92, align 8
  %93 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %94 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %93, i32 0, i32 3
  %95 = load %struct.spi_device*, %struct.spi_device** %94, align 8
  %96 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %6, align 8
  %97 = call i32 @ca8210_get_platform_data(%struct.spi_device* %95, %struct.ca8210_platform_data* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %86
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %101, i32 0, i32 0
  %103 = call i32 @dev_crit(%struct.TYPE_5__* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %192

104:                                              ; preds = %86
  %105 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %106 = call i32 @ca8210_dev_com_init(%struct.ca8210_priv* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %111 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %110, i32 0, i32 0
  %112 = call i32 @dev_crit(%struct.TYPE_5__* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %192

113:                                              ; preds = %104
  %114 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %115 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %114, i32 0, i32 3
  %116 = load %struct.spi_device*, %struct.spi_device** %115, align 8
  %117 = call i32 @ca8210_reset_init(%struct.spi_device* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %122 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %121, i32 0, i32 0
  %123 = call i32 @dev_crit(%struct.TYPE_5__* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %192

124:                                              ; preds = %113
  %125 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %126 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %125, i32 0, i32 3
  %127 = load %struct.spi_device*, %struct.spi_device** %126, align 8
  %128 = call i32 @ca8210_interrupt_init(%struct.spi_device* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %133 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %132, i32 0, i32 0
  %134 = call i32 @dev_crit(%struct.TYPE_5__* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %192

135:                                              ; preds = %124
  %136 = call i32 @msleep(i32 100)
  %137 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %138 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %137, i32 0, i32 3
  %139 = load %struct.spi_device*, %struct.spi_device** %138, align 8
  %140 = call i32 @ca8210_reset_send(%struct.spi_device* %139, i32 1)
  %141 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %142 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %141, i32 0, i32 3
  %143 = load %struct.spi_device*, %struct.spi_device** %142, align 8
  %144 = call i32 @tdme_chipinit(%struct.spi_device* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %149 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %148, i32 0, i32 0
  %150 = call i32 @dev_crit(%struct.TYPE_5__* %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %192

151:                                              ; preds = %135
  %152 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %6, align 8
  %153 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %151
  %157 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %6, align 8
  %158 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %159 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %158, i32 0, i32 3
  %160 = load %struct.spi_device*, %struct.spi_device** %159, align 8
  %161 = call i32 @ca8210_config_extern_clk(%struct.ca8210_platform_data* %157, %struct.spi_device* %160, i32 1)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %166 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %165, i32 0, i32 0
  %167 = call i32 @dev_crit(%struct.TYPE_5__* %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %192

168:                                              ; preds = %156
  %169 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %170 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %169, i32 0, i32 3
  %171 = load %struct.spi_device*, %struct.spi_device** %170, align 8
  %172 = call i32 @ca8210_register_ext_clock(%struct.spi_device* %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %177 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %176, i32 0, i32 0
  %178 = call i32 @dev_crit(%struct.TYPE_5__* %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %192

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179, %151
  %181 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %182 = call i32 @ieee802154_register_hw(%struct.ieee802154_hw* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %187 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %186, i32 0, i32 0
  %188 = call i32 @dev_crit(%struct.TYPE_5__* %187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %192

189:                                              ; preds = %180
  %190 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %191 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  store i32 0, i32* %2, align 4
  br label %198

192:                                              ; preds = %185, %175, %164, %147, %131, %120, %109, %100, %83, %14
  %193 = call i32 @msleep(i32 100)
  %194 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %195 = call i32 @ca8210_remove(%struct.spi_device* %194)
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @link_to_linux_err(i32 %196)
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %192, %189
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.ieee802154_hw* @ieee802154_alloc_hw(i32, i32*) #1

declare dso_local i32 @dev_crit(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ca8210_priv*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ca8210_test_interface_init(%struct.ca8210_priv*) #1

declare dso_local i32 @ca8210_hw_setup(%struct.ieee802154_hw*) #1

declare dso_local i32 @ieee802154_random_extended_addr(i32*) #1

declare dso_local %struct.ca8210_platform_data* @kmalloc(i32, i32) #1

declare dso_local i32 @ca8210_get_platform_data(%struct.spi_device*, %struct.ca8210_platform_data*) #1

declare dso_local i32 @ca8210_dev_com_init(%struct.ca8210_priv*) #1

declare dso_local i32 @ca8210_reset_init(%struct.spi_device*) #1

declare dso_local i32 @ca8210_interrupt_init(%struct.spi_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ca8210_reset_send(%struct.spi_device*, i32) #1

declare dso_local i32 @tdme_chipinit(%struct.spi_device*) #1

declare dso_local i32 @ca8210_config_extern_clk(%struct.ca8210_platform_data*, %struct.spi_device*, i32) #1

declare dso_local i32 @ca8210_register_ext_clock(%struct.spi_device*) #1

declare dso_local i32 @ieee802154_register_hw(%struct.ieee802154_hw*) #1

declare dso_local i32 @ca8210_remove(%struct.spi_device*) #1

declare dso_local i32 @link_to_linux_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
