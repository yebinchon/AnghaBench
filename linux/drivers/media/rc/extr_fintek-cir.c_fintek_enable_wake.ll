; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_enable_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_enable_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_dev = type { i32 }

@LOGICAL_DEV_ACPI = common dso_local global i32 0, align 4
@ACPI_WAKE_EN_CIR_BIT = common dso_local global i32 0, align 4
@LDEV_ACPI_WAKE_EN_REG = common dso_local global i32 0, align 4
@ACPI_PME_CIR_BIT = common dso_local global i32 0, align 4
@LDEV_ACPI_PME_EN_REG = common dso_local global i32 0, align 4
@LDEV_ACPI_PME_CLR_REG = common dso_local global i32 0, align 4
@ACPI_STATE_CIR_BIT = common dso_local global i32 0, align 4
@LDEV_ACPI_STATE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fintek_dev*)* @fintek_enable_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fintek_enable_wake(%struct.fintek_dev* %0) #0 {
  %2 = alloca %struct.fintek_dev*, align 8
  store %struct.fintek_dev* %0, %struct.fintek_dev** %2, align 8
  %3 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %4 = call i32 @fintek_config_mode_enable(%struct.fintek_dev* %3)
  %5 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %6 = load i32, i32* @LOGICAL_DEV_ACPI, align 4
  %7 = call i32 @fintek_select_logical_dev(%struct.fintek_dev* %5, i32 %6)
  %8 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %9 = load i32, i32* @ACPI_WAKE_EN_CIR_BIT, align 4
  %10 = load i32, i32* @LDEV_ACPI_WAKE_EN_REG, align 4
  %11 = call i32 @fintek_set_reg_bit(%struct.fintek_dev* %8, i32 %9, i32 %10)
  %12 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %13 = load i32, i32* @ACPI_PME_CIR_BIT, align 4
  %14 = load i32, i32* @LDEV_ACPI_PME_EN_REG, align 4
  %15 = call i32 @fintek_set_reg_bit(%struct.fintek_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %17 = load i32, i32* @ACPI_PME_CIR_BIT, align 4
  %18 = load i32, i32* @LDEV_ACPI_PME_CLR_REG, align 4
  %19 = call i32 @fintek_set_reg_bit(%struct.fintek_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %21 = load i32, i32* @ACPI_STATE_CIR_BIT, align 4
  %22 = load i32, i32* @LDEV_ACPI_STATE_REG, align 4
  %23 = call i32 @fintek_set_reg_bit(%struct.fintek_dev* %20, i32 %21, i32 %22)
  %24 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %25 = call i32 @fintek_config_mode_disable(%struct.fintek_dev* %24)
  ret void
}

declare dso_local i32 @fintek_config_mode_enable(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_select_logical_dev(%struct.fintek_dev*, i32) #1

declare dso_local i32 @fintek_set_reg_bit(%struct.fintek_dev*, i32, i32) #1

declare dso_local i32 @fintek_config_mode_disable(%struct.fintek_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
