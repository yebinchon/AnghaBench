; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, i32 }
%struct.ieee802154_hw = type { i32, %struct.TYPE_4__*, i32*, %struct.mrf24j40* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.mrf24j40 = type { %struct.ieee802154_hw*, i32, i32, %struct.spi_device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"probe(). IRQ: %d\0A\00", align 1
@mrf24j40_ops = common dso_local global i32 0, align 4
@CHANNEL_MASK = common dso_local global i32 0, align 4
@IEEE802154_HW_TX_OMIT_CKSUM = common dso_local global i32 0, align 4
@IEEE802154_HW_AFILT = common dso_local global i32 0, align 4
@IEEE802154_HW_CSMA_PARAMS = common dso_local global i32 0, align 4
@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_MODE = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_ED_LEVEL = common dso_local global i32 0, align 4
@mrf24j40_short_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate short register map: %d\0A\00", align 1
@mrf24j40_long_regmap_bus = common dso_local global i32 0, align 4
@mrf24j40_long_regmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to allocate long register map: %d\0A\00", align 1
@MAX_SPI_SPEED_HZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"spi clock above possible maximum: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@mrf24j40_isr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Unable to get IRQ\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"registered mrf24j40\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mrf24j40_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee802154_hw*, align 8
  %7 = alloca %struct.mrf24j40*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call %struct.ieee802154_hw* @ieee802154_alloc_hw(i32 24, i32* @mrf24j40_ops)
  store %struct.ieee802154_hw* %16, %struct.ieee802154_hw** %6, align 8
  %17 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %6, align 8
  %18 = icmp ne %struct.ieee802154_hw* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %182

20:                                               ; preds = %1
  %21 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %6, align 8
  %22 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %21, i32 0, i32 3
  %23 = load %struct.mrf24j40*, %struct.mrf24j40** %22, align 8
  store %struct.mrf24j40* %23, %struct.mrf24j40** %7, align 8
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %26 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %25, i32 0, i32 3
  store %struct.spi_device* %24, %struct.spi_device** %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %29 = call i32 @spi_set_drvdata(%struct.spi_device* %27, %struct.mrf24j40* %28)
  %30 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %6, align 8
  %31 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %32 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %31, i32 0, i32 0
  store %struct.ieee802154_hw* %30, %struct.ieee802154_hw** %32, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 1
  %35 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %36 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %35, i32 0, i32 0
  %37 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %36, align 8
  %38 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %37, i32 0, i32 2
  store i32* %34, i32** %38, align 8
  %39 = load i32, i32* @CHANNEL_MASK, align 4
  %40 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %41 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %40, i32 0, i32 0
  %42 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %41, align 8
  %43 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %39, i32* %48, align 4
  %49 = load i32, i32* @IEEE802154_HW_TX_OMIT_CKSUM, align 4
  %50 = load i32, i32* @IEEE802154_HW_AFILT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IEEE802154_HW_CSMA_PARAMS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %57 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %56, i32 0, i32 0
  %58 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %57, align 8
  %59 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load i32, i32* @WPAN_PHY_FLAG_CCA_MODE, align 4
  %61 = load i32, i32* @WPAN_PHY_FLAG_CCA_ED_LEVEL, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %64 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %63, i32 0, i32 0
  %65 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %64, align 8
  %66 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %62, i32* %68, align 8
  %69 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %70 = call i32 @mrf24j40_setup_tx_spi_messages(%struct.mrf24j40* %69)
  %71 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %72 = call i32 @mrf24j40_setup_rx_spi_messages(%struct.mrf24j40* %71)
  %73 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %74 = call i32 @mrf24j40_setup_irq_spi_messages(%struct.mrf24j40* %73)
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = call i32 @devm_regmap_init_spi(%struct.spi_device* %75, i32* @mrf24j40_short_regmap)
  %77 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %78 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %80 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %20
  %85 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %86 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %90 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %89, i32 0, i32 1
  %91 = ptrtoint i32* %90 to i32
  %92 = load i32, i32* %4, align 4
  %93 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %177

94:                                               ; preds = %20
  %95 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %96 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %95, i32 0, i32 1
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = call i32 @devm_regmap_init(i32* %96, i32* @mrf24j40_long_regmap_bus, %struct.spi_device* %97, i32* @mrf24j40_long_regmap)
  %99 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %100 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %102 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @IS_ERR(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %94
  %107 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %108 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %112 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %111, i32 0, i32 1
  %113 = ptrtoint i32* %112 to i32
  %114 = load i32, i32* %4, align 4
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %177

116:                                              ; preds = %94
  %117 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %118 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MAX_SPI_SPEED_HZ, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %124 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %123, i32 0, i32 1
  %125 = load i64, i64* @MAX_SPI_SPEED_HZ, align 8
  %126 = call i32 @dev_warn(i32* %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %177

129:                                              ; preds = %116
  %130 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %131 = call i32 @mrf24j40_hw_init(%struct.mrf24j40* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %177

135:                                              ; preds = %129
  %136 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %137 = call i32 @mrf24j40_phy_setup(%struct.mrf24j40* %136)
  %138 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %139 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @irq_get_trigger_type(i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %135
  %145 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %135
  %147 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %148 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %147, i32 0, i32 1
  %149 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %150 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @mrf24j40_isr, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %155 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %154, i32 0, i32 1
  %156 = call i32 @dev_name(i32* %155)
  %157 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %158 = call i32 @devm_request_irq(i32* %148, i32 %151, i32 %152, i32 %153, i32 %156, %struct.mrf24j40* %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %146
  %162 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %163 = call i32 @printdev(%struct.mrf24j40* %162)
  %164 = call i32 (i32, i8*, ...) @dev_err(i32 %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %177

165:                                              ; preds = %146
  %166 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %167 = call i32 @printdev(%struct.mrf24j40* %166)
  %168 = call i32 @dev_dbg(i32 %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %169 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %170 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %169, i32 0, i32 0
  %171 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %170, align 8
  %172 = call i32 @ieee802154_register_hw(%struct.ieee802154_hw* %171)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %177

176:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %184

177:                                              ; preds = %175, %161, %134, %122, %106, %84
  %178 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  %179 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %178, i32 0, i32 0
  %180 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %179, align 8
  %181 = call i32 @ieee802154_free_hw(%struct.ieee802154_hw* %180)
  br label %182

182:                                              ; preds = %177, %19
  %183 = load i32, i32* %4, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %176
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local %struct.ieee802154_hw* @ieee802154_alloc_hw(i32, i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.mrf24j40*) #1

declare dso_local i32 @mrf24j40_setup_tx_spi_messages(%struct.mrf24j40*) #1

declare dso_local i32 @mrf24j40_setup_rx_spi_messages(%struct.mrf24j40*) #1

declare dso_local i32 @mrf24j40_setup_irq_spi_messages(%struct.mrf24j40*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @devm_regmap_init(i32*, i32*, %struct.spi_device*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @mrf24j40_hw_init(%struct.mrf24j40*) #1

declare dso_local i32 @mrf24j40_phy_setup(%struct.mrf24j40*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.mrf24j40*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ieee802154_register_hw(%struct.ieee802154_hw*) #1

declare dso_local i32 @ieee802154_free_hw(%struct.ieee802154_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
