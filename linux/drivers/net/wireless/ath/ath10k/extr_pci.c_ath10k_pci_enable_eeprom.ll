; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_enable_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_enable_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@CLOCK_CONTROL_OFFSET = common dso_local global i32 0, align 4
@GPIO_BASE_ADDRESS = common dso_local global i64 0, align 8
@GPIO_PIN0_OFFSET = common dso_local global i64 0, align 8
@QCA9887_1_0_I2C_SDA_GPIO_PIN = common dso_local global i32 0, align 4
@QCA9887_1_0_I2C_SDA_PIN_CONFIG = common dso_local global i32 0, align 4
@GPIO_PIN0_CONFIG = common dso_local global i32 0, align 4
@GPIO_PIN0_PAD_PULL = common dso_local global i32 0, align 4
@QCA9887_1_0_SI_CLK_GPIO_PIN = common dso_local global i32 0, align 4
@QCA9887_1_0_SI_CLK_PIN_CONFIG = common dso_local global i32 0, align 4
@QCA9887_1_0_GPIO_ENABLE_W1TS_LOW_ADDRESS = common dso_local global i64 0, align 8
@SI_BASE_ADDRESS = common dso_local global i64 0, align 8
@SI_CONFIG_OFFSET = common dso_local global i64 0, align 8
@SI_CONFIG_ERR_INT = common dso_local global i32 0, align 4
@SI_CONFIG_BIDIR_OD_DATA = common dso_local global i32 0, align 4
@SI_CONFIG_I2C = common dso_local global i32 0, align 4
@SI_CONFIG_POS_SAMPLE = common dso_local global i32 0, align 4
@SI_CONFIG_INACTIVE_DATA = common dso_local global i32 0, align 4
@SI_CONFIG_INACTIVE_CLK = common dso_local global i32 0, align 4
@SI_CONFIG_DIVIDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_pci_enable_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_enable_eeprom(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %3 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %4 = load i32, i32* @CLOCK_CONTROL_OFFSET, align 4
  %5 = call i32 @ath10k_pci_soc_write32(%struct.ath10k* %3, i32 %4, i32 0)
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = load i64, i64* @GPIO_BASE_ADDRESS, align 8
  %8 = load i64, i64* @GPIO_PIN0_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* @QCA9887_1_0_I2C_SDA_GPIO_PIN, align 4
  %11 = mul nsw i32 4, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = load i32, i32* @QCA9887_1_0_I2C_SDA_PIN_CONFIG, align 4
  %15 = load i32, i32* @GPIO_PIN0_CONFIG, align 4
  %16 = call i32 @SM(i32 %14, i32 %15)
  %17 = load i32, i32* @GPIO_PIN0_PAD_PULL, align 4
  %18 = call i32 @SM(i32 1, i32 %17)
  %19 = or i32 %16, %18
  %20 = call i32 @ath10k_pci_write32(%struct.ath10k* %6, i64 %13, i32 %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %22 = load i64, i64* @GPIO_BASE_ADDRESS, align 8
  %23 = load i64, i64* @GPIO_PIN0_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @QCA9887_1_0_SI_CLK_GPIO_PIN, align 4
  %26 = mul nsw i32 4, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* @QCA9887_1_0_SI_CLK_PIN_CONFIG, align 4
  %30 = load i32, i32* @GPIO_PIN0_CONFIG, align 4
  %31 = call i32 @SM(i32 %29, i32 %30)
  %32 = load i32, i32* @GPIO_PIN0_PAD_PULL, align 4
  %33 = call i32 @SM(i32 1, i32 %32)
  %34 = or i32 %31, %33
  %35 = call i32 @ath10k_pci_write32(%struct.ath10k* %21, i64 %28, i32 %34)
  %36 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %37 = load i64, i64* @GPIO_BASE_ADDRESS, align 8
  %38 = load i64, i64* @QCA9887_1_0_GPIO_ENABLE_W1TS_LOW_ADDRESS, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @QCA9887_1_0_SI_CLK_GPIO_PIN, align 4
  %41 = shl i32 1, %40
  %42 = call i32 @ath10k_pci_write32(%struct.ath10k* %36, i64 %39, i32 %41)
  %43 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %44 = load i64, i64* @SI_BASE_ADDRESS, align 8
  %45 = load i64, i64* @SI_CONFIG_OFFSET, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* @SI_CONFIG_ERR_INT, align 4
  %48 = call i32 @SM(i32 1, i32 %47)
  %49 = load i32, i32* @SI_CONFIG_BIDIR_OD_DATA, align 4
  %50 = call i32 @SM(i32 1, i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @SI_CONFIG_I2C, align 4
  %53 = call i32 @SM(i32 1, i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @SI_CONFIG_POS_SAMPLE, align 4
  %56 = call i32 @SM(i32 1, i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @SI_CONFIG_INACTIVE_DATA, align 4
  %59 = call i32 @SM(i32 1, i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* @SI_CONFIG_INACTIVE_CLK, align 4
  %62 = call i32 @SM(i32 1, i32 %61)
  %63 = or i32 %60, %62
  %64 = load i32, i32* @SI_CONFIG_DIVIDER, align 4
  %65 = call i32 @SM(i32 8, i32 %64)
  %66 = or i32 %63, %65
  %67 = call i32 @ath10k_pci_write32(%struct.ath10k* %43, i64 %46, i32 %66)
  ret void
}

declare dso_local i32 @ath10k_pci_soc_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_pci_write32(%struct.ath10k*, i64, i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
