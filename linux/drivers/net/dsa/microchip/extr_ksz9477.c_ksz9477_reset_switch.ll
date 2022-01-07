; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_reset_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_reset_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i64, i32* }

@REG_SW_OPERATION = common dso_local global i32 0, align 4
@SW_RESET = common dso_local global i32 0, align 4
@REG_SW_GLOBAL_SERIAL_CTRL_0 = common dso_local global i32 0, align 4
@SPI_AUTO_EDGE_DETECTION = common dso_local global i32 0, align 4
@REG_SW_LUE_CTRL_1 = common dso_local global i32 0, align 4
@SW_AGING_ENABLE = common dso_local global i32 0, align 4
@SW_LINK_AUTO_AGING = common dso_local global i32 0, align 4
@SW_SRC_ADDR_FILTER = common dso_local global i32 0, align 4
@SW_FLUSH_STP_TABLE = common dso_local global i32 0, align 4
@SW_FLUSH_MSTP_TABLE = common dso_local global i32 0, align 4
@REG_SW_INT_MASK__4 = common dso_local global i32 0, align 4
@SWITCH_INT_MASK = common dso_local global i32 0, align 4
@REG_SW_PORT_INT_MASK__4 = common dso_local global i32 0, align 4
@REG_SW_PORT_INT_STATUS__4 = common dso_local global i32 0, align 4
@REG_SW_MAC_CTRL_2 = common dso_local global i32 0, align 4
@BROADCAST_STORM_RATE = common dso_local global i32 0, align 4
@BROADCAST_STORM_VALUE = common dso_local global i32 0, align 4
@BROADCAST_STORM_PROT_RATE = common dso_local global i32 0, align 4
@REG_SW_GLOBAL_OUTPUT_CTRL__1 = common dso_local global i32 0, align 4
@SW_ENABLE_REFCLKO = common dso_local global i32 0, align 4
@SW_REFCLKO_IS_125MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*)* @ksz9477_reset_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_reset_switch(%struct.ksz_device* %0) #0 {
  %2 = alloca %struct.ksz_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %2, align 8
  %5 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %6 = load i32, i32* @REG_SW_OPERATION, align 4
  %7 = load i32, i32* @SW_RESET, align 4
  %8 = call i32 @ksz_cfg(%struct.ksz_device* %5, i32 %6, i32 %7, i32 1)
  %9 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %10 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @REG_SW_GLOBAL_SERIAL_CTRL_0, align 4
  %15 = load i32, i32* @SPI_AUTO_EDGE_DETECTION, align 4
  %16 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %18 = load i32, i32* @REG_SW_LUE_CTRL_1, align 4
  %19 = call i32 @ksz_read8(%struct.ksz_device* %17, i32 %18, i32* %3)
  %20 = load i32, i32* @SW_AGING_ENABLE, align 4
  %21 = load i32, i32* @SW_LINK_AUTO_AGING, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SW_SRC_ADDR_FILTER, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SW_FLUSH_STP_TABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SW_FLUSH_MSTP_TABLE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  %29 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %30 = load i32, i32* @REG_SW_LUE_CTRL_1, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ksz_write8(%struct.ksz_device* %29, i32 %30, i32 %31)
  %33 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %34 = load i32, i32* @REG_SW_INT_MASK__4, align 4
  %35 = load i32, i32* @SWITCH_INT_MASK, align 4
  %36 = call i32 @ksz_write32(%struct.ksz_device* %33, i32 %34, i32 %35)
  %37 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %38 = load i32, i32* @REG_SW_PORT_INT_MASK__4, align 4
  %39 = call i32 @ksz_write32(%struct.ksz_device* %37, i32 %38, i32 127)
  %40 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %41 = load i32, i32* @REG_SW_PORT_INT_STATUS__4, align 4
  %42 = call i32 @ksz_read32(%struct.ksz_device* %40, i32 %41, i32* %4)
  %43 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %44 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @REG_SW_MAC_CTRL_2, align 4
  %49 = load i32, i32* @BROADCAST_STORM_RATE, align 4
  %50 = load i32, i32* @BROADCAST_STORM_VALUE, align 4
  %51 = load i32, i32* @BROADCAST_STORM_PROT_RATE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sdiv i32 %52, 100
  %54 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %53)
  %55 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %56 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %1
  %60 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %61 = load i32, i32* @REG_SW_GLOBAL_OUTPUT_CTRL__1, align 4
  %62 = load i32, i32* @SW_ENABLE_REFCLKO, align 4
  %63 = load i32, i32* @SW_REFCLKO_IS_125MHZ, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @ksz_write8(%struct.ksz_device* %60, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %59, %1
  ret i32 0
}

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ksz_read8(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz_write8(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz_write32(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz_read32(%struct.ksz_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
