; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_check_eeprom_exist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_check_eeprom_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i64 }

@REG_SPI_FLASH_CTRL = common dso_local global i64 0, align 8
@SPI_FLASH_CTRL_EN_VPD = common dso_local global i32 0, align 4
@REG_PCIE_CAP_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_hw*)* @atl1_check_eeprom_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_check_eeprom_exist(%struct.atl1_hw* %0) #0 {
  %2 = alloca %struct.atl1_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %2, align 8
  %4 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %5 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @REG_SPI_FLASH_CTRL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @ioread32(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SPI_FLASH_CTRL_EN_VPD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @SPI_FLASH_CTRL_EN_VPD, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %21 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_SPI_FLASH_CTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i32 %19, i64 %24)
  br label %26

26:                                               ; preds = %14, %1
  %27 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %28 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_PCIE_CAP_LIST, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @ioread16(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 65280
  %35 = icmp eq i32 %34, 27648
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  ret i32 %37
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
